## 1.2b66

### New Features:

- Now you can share generated "screenshots" with all the relevant data.

### Enhancements:

- Add raw proto data as base64 in exported Debug Data.

## 1.1b65

### Enhancements:

- Update protocol version.
- Show time labels on history charts.
- Improve property hints.
- Show dish outages log.

## 1.1b60

### New Features:

- Upgrade Starlink network detection.
- Allow to choose previous SSID/passwords while Router setup. Add password complexity visualization.
- Add Valkyrie check.
- [Experimental] Add Check Update button for a Router.

### Enhancements:

- Update metadata visualization.
- Extract app settings to dedicated page. 
- Allow to disable snapshots autosave in settings.

## 1.1b53

### New Features:

- Allow enabling Bypass mode on initial router setup.

### Enhancements:

- Fix issues with DebugData share. 

## 1.1b48

### New Features:

- Receive Starlink location data, if available (turned off by default).

### Enhancements:

- Improved Debug Data parsing 


## 1.1b43

### New Features:

- Introducing "My Starlinks" feature:
  - Snapshots of live device data and debug data can now be stored in the local application database.
  - Users can create snapshots of live data at any specific moment of interest.
  - Snapshots can be viewed or deleted at any time from the app.
  - Snapshot data can be shared as DebugData-compatible JSON.
- Windows desktop build is available now.

### Enhancements:

- Improved consistency between Live view and Debug Data view.
- Enhanced functionality of the online tester.
- Improved presentation of some values. Some of them receive helpful descriptions.
- Highlighted several new alerts for better visibility.

## 1.0b22

### New Features:

- Live Mode: Users can now view Starlink data directly from their hardware in real-time.

### Supported Functionality:

- Decode and view DebugData JSON copied or saved from the official Starlink app or web panel.
- Perform basic operations with the dish: Reboot, Stow, Unstow, GPS On/Off.
- Perform basic operations with the router: Reboot and basic Wi-Fi setup (if applicable).
- View telemetry available in DebugData, updated from Starlink online, including statuses, alerts, 
  basic stats, and current configurations.
- Create and share DebugData-compatible JSON data.
- Check the internet connection within the app.


## 1.0b6

### Initial Release:

- Basic functionality added to the app:
  - View human-readable DebugData for dish, router, and app.
  - Open DebugData from a file or clipboard.
