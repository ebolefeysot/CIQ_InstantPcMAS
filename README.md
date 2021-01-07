# Garmin data field: Instant speed in % MAS/VMA/vVO2max
Custom data field to display current speedin percent of MAS (Maximum Aerobic Speed, or vVO2max, or VMA).
https://fr.wikipedia.org/wiki/Vitesse_maximale_a%C3%A9robie

This data field calculates each second the average speed in the current lap and display it.

More custom data fields are available on garmin store:

 - Lap %MAS
 - Last lap %MAS

### Setting the MAS/VMA/vVO2max
Data field type application don't have access to picker widget: you can't set your MAS from the device. The MAS variable is defined as setting (xml files) and can be changed on the garmin express software:

How to set your MAS: 
 - Go to Garmin Express and sync to install the field
 - Click the 'IQ App' section
 - Scroll to the field and click then '...' icon
 - Set your MAS. Use comma as separator.
 - Go back to main page and sync.

### Project Setup
Follow garmin setup for eclipse and Connect IQ plugin: https://developer.garmin.com/connect-iq/sdk/

### Running on simulator
Click `Run Configuration` and create a configuration for your device (supported devices list is stored in `manifest.xml`. Then launch the app using this configuration.

### Debugging
Launch the app in debug mode. The app will pause automatically before starting. Put a breakpoint and resume execution.

### Installing on your physical device
Use `Connect IQ/Build for device wizard` tool. You need a personal secret developer key that you can generate in the `Connect IQ/compiler` section in Eclipse preferences. Uncheck `Build release version` and check `Include debug XML` to get meaningfull logs.

 The application is compiled into a `prg` and `debug.xml` files. Copy those files into the `/GARMIN/APPS/` directory of the device.

