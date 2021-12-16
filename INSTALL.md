### [Arduino IDE](https://www.arduino.cc/en/main/software)

#### Install using Git (only for mac)

You can install the theme and keep up to date by cloning the repo:

```
git clone https://github.com/dracula/arduino-ide.git
```

and then run the **setup.sh** by entering:

```
./setup.sh --install
```

#### Install manually

Download using the [GitHub .zip download](https://github.com/dracula/arduino-ide/archive/master.zip) option and unzip them.

**Windows:**
- Navigate to `C:/Program Files (x86)/Arduino/lib/`
- Rename **theme** folder to **theme.bak**.
- Copy the `./arduino/theme` folder to the `C:/Program Files (x86)/Arduino/lib/` directory on your local machine.
- Close and re-open Arduino IDE!

**MacOS:**
- Navigate to `/Applications/Arduino.app/Contents/Java/lib/`
- Rename **theme** folder to **theme.bak**.
- Copy the `./arduino/theme` folder to the `/Applications/Arduino.app/Contents/Java/lib/` directory on your local machine.
- Close and re-open Arduino IDE!

**Linux:**
- Navigate to `/usr/lib64/arduino/lib/`
- Rename **theme** folder to **theme.bak**.
- Copy the `./arduino/theme` folder to the `/usr/lib64/arduino/lib/` directory on your local machine.
- Close and re-open Arduino IDE!
