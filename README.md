# Plex Media Server Updater

<img src="https://img.shields.io/badge/License-MIT-green.svg" alt="MIT License">
<img src="https://img.shields.io/badge/Language-Bash-blue.svg" alt="Bash Language">
<img src="https://img.shields.io/badge/Platform-Linux-grey.svg" alt="Linux Platform">
<img src="https://img.shields.io/badge/Feature-Auto--Updater-orange.svg" alt="Auto-Updater Feature">

> Automate your Plex Media Server updates with precision and reliability

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [How It Works](#how-it-works)
- [Limitations](#limitations)
- [Use Cases](#use-cases)
- [Contributing](#contributing)
- [License](#license)
- [Resources](#resources)

## 🎯 Overview

Plex Media Server Updater is a professional Bash automation script designed to streamline the update process for Plex Media Server on Linux systems. Manual updates can be time-consuming and error-prone; this tool eliminates those challenges by automatically detecting new versions, downloading updates, and installing them with minimal user intervention.

Built with system administrators and home media server enthusiasts in mind, this script ensures your Plex installation stays current with the latest stable releases while maintaining system stability and reliability.

## ✨ Features

- **Automatic Version Detection**: Intelligently checks for the latest Plex Media Server version available
- **One-Click Updates**: Streamlined update process with a single command execution
- **Error Handling**: Comprehensive error detection and logging for troubleshooting
- **Download Verification**: Validates downloaded packages to ensure integrity
- **Service Management**: Seamless integration with systemd for service control
- **Rollback Support**: Ability to revert to previous versions if needed
- **Cron Compatibility**: Perfect for scheduled automated updates
- **Minimal Dependencies**: Requires only standard Linux tools
- **Detailed Logging**: Complete audit trail of all update operations
- **Non-Interactive Mode**: Suitable for automated deployment scenarios

## 📦 Requirements

### System Requirements
- **Operating System**: Debian-based Linux (Ubuntu, Debian, Linux Mint)
- **Architecture**: x86_64 (AMD64)
- **Bash Version**: 4.0 or higher
- **Privileges**: sudo/root access for package installation

### Software Dependencies
- `wget` or `curl` for downloading packages
- `dpkg` for package management
- `systemctl` for service control (systemd-based systems)
- Internet connectivity for version checks and downloads

## 🚀 Installation

### Quick Install

```bash
# Clone the repository
git clone https://github.com/ZarTek-Creole/plexmediaserver_updater.git

# Navigate to the directory
cd plexmediaserver_updater

# Make the script executable
chmod +x plexmediaserver_updater.sh
```

### Alternative: Direct Download

```bash
# Download directly
wget https://raw.githubusercontent.com/ZarTek-Creole/plexmediaserver_updater/master/plexmediaserver_updater.sh

# Make executable
chmod +x plexmediaserver_updater.sh
```

## ⚙️ Configuration

The script works out-of-the-box with default settings. For advanced users, you can customize behavior by modifying variables at the top of the script:

```bash
# Example configuration options
DOWNLOAD_DIR="/tmp/plex_updates"    # Temporary download location
LOG_FILE="/var/log/plex_update.log" # Log file path
BACKUP_CONFIG=true                   # Backup configuration before update
```

### Environment Variables

- `PLEX_UPDATE_LOG`: Override default log location
- `PLEX_DOWNLOAD_MIRROR`: Use alternative download source
- `PLEX_SKIP_SERVICE_RESTART`: Skip automatic service restart

## 💡 Usage

### Basic Update

```bash
# Run the updater
sudo ./plexmediaserver_updater.sh
```

### Scheduled Updates with Cron

Add to your crontab for automatic weekly updates:

```bash
# Edit crontab
crontab -e

# Add this line for weekly updates (every Sunday at 3 AM)
0 3 * * 0 /path/to/plexmediaserver_updater.sh >> /var/log/plex_update.log 2>&1
```

### Check Version Only

```bash
# Check for updates without installing
./plexmediaserver_updater.sh --check-only
```

## 🔧 How It Works

The updater follows a systematic approach to ensure safe and reliable updates:

1. **Version Check**: Queries Plex's update API to determine the latest available version
2. **Comparison**: Compares installed version against the latest release
3. **Download**: If an update is available, downloads the appropriate package
4. **Verification**: Validates the downloaded package integrity
5. **Backup**: Creates a backup of current configuration (optional)
6. **Installation**: Uses dpkg to install the new package
7. **Service Restart**: Restarts the Plex Media Server service
8. **Cleanup**: Removes temporary files
9. **Logging**: Records all operations for audit purposes

```
┌─────────────────┐
│  Version Check  │
└────────┬────────┘
         │
         ▼
    ┌─────────┐
    │ Update? │───No───> Exit
    └────┬────┘
         │ Yes
         ▼
  ┌──────────────┐
  │   Download   │
  └──────┬───────┘
         │
         ▼
  ┌──────────────┐
  │   Install    │
  └──────┬───────┘
         │
         ▼
    ┌─────────┐
    │ Success │
    └─────────┘
```

## ⚠️ Limitations

- **Platform Specific**: Currently supports Debian-based distributions only
- **Package Format**: Designed for .deb packages (not RPM)
- **Internet Required**: Needs active internet connection for updates
- **Root Access**: Requires sudo privileges for package installation
- **Systemd Dependency**: Assumes systemd for service management
- **Manual Rollback**: Automatic rollback not implemented for failed updates

## 🎯 Use Cases

### Home Media Server
Perfect for home lab enthusiasts who want their Plex server always up-to-date without manual intervention.

### Multi-Server Deployments
Ideal for managing multiple Plex instances across different machines with consistent update policies.

### Automated DevOps Pipelines
Integrate into CI/CD workflows for automated media server infrastructure management.

### Educational Environments
Maintain Plex installations in educational settings with minimal administrative overhead.

### Small Business Media Solutions
Keep enterprise media servers current without dedicated IT resources.

## 🤝 Contributing

Contributions are welcome! If you'd like to improve this project:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/improvement`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/improvement`)
5. Open a Pull Request

Please ensure your code follows existing style conventions and includes appropriate documentation.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for full details.

The MIT License is a permissive license that allows you to use, modify, and distribute this software freely, with minimal restrictions.

## 🔗 Resources

### Official Documentation
- [Plex Media Server Support](https://support.plex.tv/)
- [Plex Installation Guide](https://support.plex.tv/articles/200288586-installation/)

### Related Projects
- [Tautulli](https://github.com/Tautulli/Tautulli) - Plex monitoring and statistics
- [Ombi](https://github.com/Ombi-app/Ombi) - Plex request management
- [PlexPy](https://github.com/JonnyWong16/plexpy) - Plex analytics

### Community
- [Plex Forums](https://forums.plex.tv/)
- [r/PleX Subreddit](https://www.reddit.com/r/PleX/)

---

**Maintained by [ZarTek-Creole](https://github.com/ZarTek-Creole)** | **Star this project if you find it useful!**
