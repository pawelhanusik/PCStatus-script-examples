# PC Status - API

PC Status – monitoring tool for processes running on pc

The project consists of 3 subprograms:

- [PC Status API](https://github.com/pawelhanusik/PCStatus-api)

- [PC Status client-pc](https://github.com/pawelhanusik/PCStatus-client-pc)

- [PC Status client-android](https://github.com/pawelhanusik/PCStatus-client-android)

## Goal

The goal of the project is to add new feature to the smartphone by connecting it with pc. By doing so it will gain remote monitoring functionalities.

## Use cases

Progress of any bash script, any process, monitoring RAM, cpu usage & more.

---

Scripts in this repo:

- cpu.sh - sends CPU usage

    `Usage: ./cpu.sh`

- file_download.sh - sends file download progress

    `Usage: ./file_download.sh filepath partFilepath fileSizeMB`

- ram.sh - sends RAM usage

    `Usage: ./ram.sh`

- random.sh - sends random progress

    `Usage: ./random.sh`
