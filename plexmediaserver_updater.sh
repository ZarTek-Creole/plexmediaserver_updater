#!/usr/bin/env bash

# Ce script automatise le processus de téléchargement, d'installation et de mise à jour du Plex Media Server sur un système Linux.

# Constantes
readonly LOG_FILE="/root/_logs/plexmedia.log"
readonly VERSIONS_URL="https://plex.tv/api/downloads/5.json"
readonly GREEN="\033[0;32m"
readonly RED="\033[0;31m"
readonly NC="\033[0m" # No Color

# Fonctions
log_info() {
  echo -e "${GREEN}$(date) : $1${NC}" | tee -a "$LOG_FILE"
}

log_error() {
  echo -e "${RED}$(date) : $1${NC}" >&2 | tee -a "$LOG_FILE"
  exit 1
}

check_dependencies() {
  command -v jq &>/dev/null || log_error "🚨 jq est requis mais n'est pas installé."
  command -v curl &>/dev/null || log_error "🚨 curl est requis mais n'est pas installé."
}

fetch_latest_version() {
  curl -s "$VERSIONS_URL" | jq -r '.computer.Linux.version'
}

download_and_install() {
  local url="$1"
  local file_name="/tmp/${url##*/}"
  curl -sS -o "$file_name" "$url" || log_error "🚨 Échec du téléchargement de $url"
  dpkg -i "$file_name" || (apt-get install -f -y; systemctl restart plexmediaserver)
  log_info "✅ Installation ou mise à jour terminée pour $file_name"
}

main() {
  log_info "🚀 Début du script Plex Media Server"
  
  check_dependencies
  local installed_version=$(dpkg -s plexmediaserver 2>/dev/null | grep '^Version:' | cut -d' ' -f2)
  local latest_version=$(fetch_latest_version)

  if [[ $installed_version == "$latest_version" ]]; then
    log_info "✅ Plex est à jour (version $installed_version). Aucune action nécessaire."
    exit 0
  fi

  local download_url=$(curl -s "$VERSIONS_URL" | jq -r '.computer.Linux.releases[] | select(.label=="Ubuntu (16.04+) / Debian (8+) - Intel/AMD 64-bit").url')
  
  if [[ -z "$download_url" ]]; then
    log_error "🚨 L'URL de téléchargement est vide. Vérifiez la disponibilité sur le serveur."
  fi

  log_info "📥 Téléchargement et installation de la dernière version $latest_version"
  download_and_install "$download_url"

  log_info "🎉 Le script Plex Media Server a terminé avec succès."
}

main
