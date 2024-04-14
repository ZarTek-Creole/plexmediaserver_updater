
<p align="center">
  <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" alt="project-logo">
</p>
<h1 align="center">Plex Media Server Updater</h1>
<p align="center">
    <em>Automatisez. Mettez à jour. Déployez avec précision.</em>
</p>
<p align="center">
 <img src="https://img.shields.io/badge/GNU%20Bash-4EAA25.svg?style=default&logo=GNU-Bash&logoColor=white" alt="GNU%20Bash">
 <img src="https://img.shields.io/github/workflow/status/ZarTek-Creole/plexmediaserver_updater/CI?label=GitHub%20Actions&logo=github" alt="GitHub%20Actions">
<a href="https://codecov.io/gh/ZarTek-Creole/plexmediaserver_updater" > 
 <img src="https://codecov.io/gh/ZarTek-Creole/plexmediaserver_updater/graph/badge.svg?token=80M1XEXP3L"/> 
 </a>
 <img src="https://img.shields.io/github/downloads/ZarTek-Creole/plexmediaserver_updater/total?label=Downloads&logo=github" alt="Downloads">
 <img src="https://img.shields.io/github/license/ZarTek-Creole/plexmediaserver_updater?label=License&logo=github" alt="License">
</p>


<!-- TABLE OF CONTENTS -->
<details open>
  <summary>Table of Contents</summary><br>

- [📍 Overview](#-overview)
- [🧩 Features](#-features)
- [🗂️ Repository Structure](#️-repository-structure)
- [📦 Modules](#-modules)
- [🚀 Getting Started](#-getting-started)
  - [⚙️ Installation](#️-installation)
  - [🤖 Usage](#-usage)
  - [🧪 Tests](#-tests)
- [🛠 Project Roadmap](#-project-roadmap)
- [🤝 Contributing](#-contributing)
- [🎗 License](#-license)
- [🔗 Acknowledgments](#-acknowledgments)

</details>
<hr>

## 📍 Overview

Le **Plex Media Server Updater** est un script Bash conçu pour automatiser la mise à jour de Plex Media Server sur les systèmes Linux. Ce script facilite la gestion des versions en vérifiant et installant automatiquement la dernière mise à jour disponible.

---

## 🧩 Features

- **Mise à jour automatique** : Vérifie et installe les mises à jour sans intervention manuelle.
- **Compatibilité** : Supporte Debian et Ubuntu.
- **Logging** : Enregistre tous les événements dans un fichier log pour un suivi facile.
- **Gestion des erreurs** : Capture et rapporte les erreurs efficacement.

---

## 🗂️ Repository Structure

```sh
└── ./
    ├── plexmediaserver_updater.sh
    └── README.md
```

---

## 📦 Modules

Ce repository est composé principalement du script `plexmediaserver_updater.sh` qui orchestre la mise à jour de Plex Media Server.

---

## 🚀 Getting Started

### ⚙️ Installation

Pour démarrer avec ce script :

1. Clonez le dépôt :
```bash
git clone https://github.com/ZarTek-Creole/plexmediaserver_updater.git
```

2. Rendez le script exécutable :
```bash
chmod +x plexmediaserver_updater.sh
```

### 🤖 Usage

Exécutez le script :
```bash
./plexmediaserver_updater.sh
```

### 🧪 Tests

Les tests automatisés ne sont pas encore implémentés. Les contributions à cette partie sont bienvenues.

---

## 🛠 Project Roadmap

- [X] Initial release of the updater script.
- [ ] Add support for more Linux distributions.
- [ ] Implement automated testing.

---

## 🤝 Contributing

Contributions are welcome. Feel free to fork, submit patches, file bugs, or provide enhancements.

---

## 🎗 License

This project is licensed under the MIT

 License - see the [LICENSE](LICENSE) file for details.

---

## 🔗 Acknowledgments

- Thanks to all contributors who help in refining and enhancing this project.

---
