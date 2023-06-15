
## 1.1

"My Starlinks" are introduced:

- When you view live device data or open debug data from a file, snapshots of these data are stored
  in the local application database.
- You can create a snapshot of live data at "exactly this particularly interesting moment".
- You can view/delete any snapshot from the app any time later.
- You can share snapshot data as DebugData-compatible json.

Additionally, there are a bunch of small improvements:

- Live view and Debug Data view are now more consistent.
- Online tester is improved a bit.
- Presentation of some values is improved, some helpful descriptions added, and several new alerts are highlighted.

## 1.0b22

Live mode is introduced - now you can see Starlink data directly from your hardware
changing in real-time.

Currently, the app supports:
- Decode and view DebugData json copied (or saved to file) from the official Starlink app or web panel.
- Initiate basic operations with the dish: Reboot/Stow/Unstow/GPSon/off and with the router: reboot and basic wifi setup (if applicable).
- View telemetry available in DebugData, but updated from Starlink online: statuses, alerts, basic stats, current configurations, etc.
- Create and share DebugData-compatible json data.
- Check the internet connection in place within the app.

## 1.0b6

The first version of the app with basic functionality:

- View DebugData in a human-readable way (dish, router, app). Can open it from a file or clipboard.   