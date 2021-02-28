# Setup after INSTALLATION.md

## Make Tracker miner ignore node_modules and venv/ directories so it doesn't spike your CPU

[Blog post Ubuntu Tracker Ignore](https://bobbyhadz.com/blog/ubuntu-tracker-ignore).
To see directories ignored by default type into your terminal:

```bash
gsettings get org.freedesktop.Tracker.Miner.Files ignored-directories
```

Now add `node_modules` and `venv` and restart tracker:

```bash
gsettings set org.freedesktop.Tracker.Miner.Files ignored-directories "['po', 'CVS', 'core-dumps', 'lost+found', 'node_modules', 'venv']"

tracker reset -r
```

---

## Adjust your scroll speed

Copy the `.imwheelrc` file from the current directory into your `~` (home)
directory and run:

```bash
sudo apt install imwheel
imwheel -b "4 5"
```

You can adjust the speed by editing the file according to the comments and
restarting `imwheelrc` by:

```bash
killall imwheel
imwheel -b "4 5"
```

The command only influences the mouse 4 and 5 buttons, which are scroll up and
scroll down, otherwise `imwheel` would block your `side` mouse buttons, like
back and forth, etc.

Then add `imwheel` to your startup applications, don't forget to use the command
`imwheel -b "4 5"` so you don't block your mouse's side buttons.

The command used to get the name of the service to set the scroll speed for is:

```
xprop WM_CLASS | grep -o '"[^"]*"' | head -n 1
```

After you enter it in the terminal you just click on the application and the
name is written in the terminal.

---

## Random [gnome extensions](https://extensions.gnome.org/#) and Gnome Tweaks settings

- [Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/).
  Copy / paste clipboard history manager.

- [Smart transparent topbar](https://extensions.gnome.org/extension/2588/fully-transparent-top-bar/) -
  adjust topbar's colors / transparency

- [Transparent window moving](https://extensions.gnome.org/extension/1446/transparent-window-moving/) -
  make window transparent when moving it. Set to opacity 200, animation time
  0.10.

- [User Themes](https://extensions.gnome.org/extension/19/user-themes/). Loads
  user themes into gnome tweak tools. Applications theme - `Yaru-dark`, Cursor -
  `DMZ-Black`, Icons - `Papirus-Dark`, shell - `Yaru-dark`.

- [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/).
  Makes your bottom dock take less space.

- [Switcher](https://extensions.gnome.org/extension/973/switcher/) - switch
  between application windows by typing the name.

  - Switcher settings - **Hotkey to activate** - `Super+w`, **font size** -
    `20`, **Icon size** - `26`, **width %** - `40`, tick
    `never show usage tips`.

- Set `Caps lock` to `Control`. Click `Keyboard & Mouse` ->
  `Additional Layout Options` -> `Caps Lock behavior` ->
  `Caps Lock is also a Ctrl`

- **Start up applications**:
  [Albert](https://albertlauncher.github.io/installing/) and **Wallch**. For
  **Wallch** do:

  ```
  sudo apt-get update
  sudo apt-get install wallch
  ```

- **Workspaces** - Select `Static Workspaces` and set it to 5. Select
  `Workspaces span displays`.

---

## Install some applications, utilities

- **Gnome Tweak Tools** - extends ubuntu configuration

  ```bash
  sudo apt-get update
  sudo apt-add-repository universe
  sudo apt install gnome-tweak-tool
  ```

- **dconf-editor** - gui for editing ubuntu configuration like keyboard
  shortcuts, etc.

  ```bash
  sudo add-apt-repository universe
  sudo apt update
  sudo apt install dconf-cli dconf-editor
  ```

- [Albert](https://albertlauncher.github.io/installing/). Launcher for quick
  application / search / files/ bookmarks lookup. Current `Albert` settings
  are - `Applications`, `Calculator`, `Chromium`, `Files` - for files I have
  deselected all and I use it to open a directory in nautilus, by typing
  `/path/to/directory`, `Terminal` - execute terminal commands by starting with
  `>`, `WebSearch` - search google, youtube, github, etc.

  - General `Albert` settings - `Hotkey` - `Ctrl+Alt+A`, tick
    `Autostart on login`. Theme: `Spotlight`. Amount of results: `5`.

- [Mongodb Compass](https://docs.mongodb.com/compass/master/install/).
  Connecting to mongodb databases.

- [Postman](https://www.postman.com/).

  ```bash
  sudo snap install postman
  ```

- **Google Chrome**

  ```bash
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

  sudo dpkg -i google-chrome-stable_current_amd64.deb
  ```

- [TablePlus](https://tableplus.com/blog/2019/10/tableplus-linux-installation.html) -
  Management of databases in a simple way.

- [Github Desktop](https://dev.to/rahedmir/is-github-desktop-available-for-gnu-linux-4a69) -
  gui for git/github.

---

## Custom and default kbd shortcuts I use often

### Custom:

- **Workspaces tip** - for workspaces to span multiple monitors - open gnome
  tweak tools, go to **Workspaces** and set **Display handling** to **Workspaces
  span displays**.
- **Switch to workspace 1** - `Ctrl+Alt+j`
- **Switch to workspace 2** - `Ctrl+Alt+k`
- **Switch to workspace 3** - `Ctrl+Alt+l`
- **Switch to workspace 4** - `Ctrl+Alt+;`
- **Switch to workspace 5** - `Ctrl+Alt+'` - has to be set using `dconf-editor`
- **Toggle window on all workspaces or one** - `Ctrl+Alt+/`
- **Move window** - `Super+m`
- **Resize window** - `Super+r`
- **Albert Launcher** - `Ctrl+Alt+a`
- **Switcher launch** - `Super+w`

### Default:

- **Show workspaces split** - `Super+s`
- **Switch between windows from the same application** - **alt+`**
