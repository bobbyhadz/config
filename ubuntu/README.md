# Ubuntu configuration

# For Clipboard Manager

I use `Clipboard Indicator`, which can be installed here
[Gnome Extensions - Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/).

Then you have to use `gnome tweak tools` to enable the extension
`Clipboard Indicator` in the `Extensions` screen.

It has ability to search through history, bookmark or remove clipboard items,
private mode to hide clipboard content. It has nice kbd shortcuts, you can edit
in the settings.

Cons are - it `cannot store images` or `text formatting`.

## For scroll speed

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

## How I installed ubuntu on my Acer aspire 7, A715 laptop

When it was freezing on the Acer screen at boot time, I had to:

- Press `Escape` once to enter the grub
- press `e` to be able to edit the file on the pre-last line, the one that
  starts with linux, after `$vt_handoff` I had to add `nouveau.noaccel=1`.
- many tutorials said add `nomodeset` but it didn't work for me...
- after I booted successfully I had to edit the grub permanently, so I did
  `sudo gedit /etc/default/grub` and change the line
  `GRUB_CMDLINE_LINUX_DEFAULT=”quiet splash”` to
  `GRUB_CMDLINE_LINUX_DEFAULT=”quiet splash nouveau.noaccel=1”`
- then I ran `sudo update-grub2` and `sudo update-grub` to save and update the
  grub
- Now the freezing problem should be fixed, however just to make sure update the
  `NVIDIA` drivers to the latest by running
  `sudo apt update && sudo apt upgrade -y` and then opening `Software & Updates`
  and then clicking on `Additional Drivers` select the latest `NVIDIA` driver
  and click on `Apply Changes`.
- The tutorial I followed
  [ How to Fix Ubuntu Linux Freezing on Boot - Video ](https://www.youtube.com/watch?v=Tg4fWsFPzSE),
  but in the video they didn't mention about `nouveau.noaccel=1`, which I saw in
  the written article:
  [Fixing Ubuntu Freezing at Boot Time - Article](https://itsfoss.com/fix-ubuntu-freezing/).

### Complete Installation process

- Prepare the bootable USB by following:
  [Ubuntu's tutorial](https://ubuntu.com/tutorials/create-a-usb-stick-on-ubuntu#1-overview)
- When the PC boots, press `F2` to enter the `bios`
- Go to the `Security` tab and press `Enter` to set a `Supervisor Password`,
  then go to the `Boot` tab and `disable` the `Secure Boot`, once you do that go
  back to the `Security` tab and press `Enter` again to
  `Set Supervisor Password` and enter your password for the `bios`.
- Go to the `Advanced` tab and make sure that `Intel VTX` and `Intel VTD` are
  set to `Enabled`
- in the `Main` tab make sure your `F12 Boot Menu` is set to `Enabled`.
- other settings for the `Main tab` can be seen in the image `bios-main-tab.jpg`
  in the current folder
- make sure in the `Information tab` the `SATA Mode` is set to `AHCI` because it
  was `RST` by default and Ubuntu could not be installed with `RST`. I had to go
  to the main tab and press `CTRL C` to get the option to switch from `RST` to
  `AHCI`.
- make sure your `BOOTABLE USB` is inserted into the laptop
- go to the `Exit` tab and press `Exit Saving Changes`
- press `F12` to see the `Boot Manager` for your flash, press `e` to enter the
  grub and replace `quiet splash` with `nouveau.noaccel=1` and click on `F10` to
  continue boot
- install Ubuntu
- after you boot successfully edit the grub permanently, by doing:
  `sudo gedit /etc/default/grub` and change the line
  `GRUB_CMDLINE_LINUX_DEFAULT=”quiet splash”` to
  `GRUB_CMDLINE_LINUX_DEFAULT=”quiet splash nouveau.noaccel=1”` . Picture of the
  updated lines is `updated-grub-fixes-freezing.jpg` in the current directory.
- then run `sudo update-grub2` and `sudo update-grub` to save and update the
  grub
- Now the freezing problem should be fixed, however just to make sure update the
  `NVIDIA` drivers to the latest by running
  `sudo apt update && sudo apt upgrade -y` and then opening `Software & Updates`
  and then clicking on `Additional Drivers` select the latest `NVIDIA` driver
  and click on `Apply Changes`.

### Other resources I used:

- [How to install linux on Acer nitro5](https://www.youtube.com/watch?v=MFUM17wdEOQ)
- [From askubuntu.com](https://askubuntu.com/questions/1078726/on-acer-aspire-7-a717-72g-ubuntu-cannot-be-installed)

## Keyboard shortcuts

The Super key is the one between the Ctrl and Alt keys in the bottom left corner
of the keyboard. On most keybaords, it has a Windows symbol on it, "Super" is an
operating system neutral name for the Windows key.

## Ubuntu setup after installation

- install chrome
- install gnome tweak tools
- go to `https://extensions.gnome.org` and install the browser plugin, then
  install `Smart transparent topbar`, `Transparent window moving` and
  `User themes` extensions. `Transparent Window Moving` is set at `opacity` -
  200, install `Dash to Dock` extension to make your bottom dock smaller.
- set `Caps lock` to `Control`

### Terminal

#### Terminal Window Tabs

    - **Ctrl + Alt + T**: Open a new terminal window in the ~ directory.
    - **Right Click + E**: Open a new terminal window in the current directory.
    - **Ctrl + Shift + Q**: Close the current terminal window.
    - **Ctrl + Shift + T**: Open a new tab.
    - **Ctrl + Shift + W** / **Ctrl + d**: Close the current tab.
    - **Ctrl + Shift + Page Up**: Move to tab to the left.
    - **Ctrl + Shift + Page Down**: Move to tab to the right.
    - **Alt + 1**: Switch to Tab 1.
    - **Alt + 2**: Switch to Tab 2, and so on up to **Alt + 9** to switch to tab 9.
    - **Ctrl + W**: Delete previous word.
    - **Alt + D**: Delete next word.

#### Terminal Search

    - **Ctrl + Shift + F**: find text in terminal.
    - **Ctrl + Shift + G**: find next occurance.
    - **Ctrl + Shift + H**: find previous occurance.

#### Terminal View

    - **F11**: Toggle Full Screen mode.
    - **Ctrl+ +**: Zoom In.
    - **Ctrl + -**: Zoom Out.
    - **Ctrl + 0**: Reset back to Normal size.

#### Terminal Edit

    - **Ctrl + Shift + C**: Copy the highlighted text. You must use the mouse to highlight the text.
    - **Ctrl + Shift + V**: Paste the copied text in a terminal window.
    - **Home**: Go to the start of the command line.
    - **End**: Go to the end of the command line.
    - **Ctrl + Left Arrow**: move the cursor one word to the left.
    - **Ctrl + Right Arrow**: move the cursor one word to the right.
    - **Ctrl + C**: abort operation / delete line.
    - **Alt + W**: delete all characters before the cursor.
    - **Alt + D**: delete all characters after the cursor to the end of the line.

---

### Desktop

Workspaces refer to grouping of windows on your desktop.

- You can create multiple workspaces, which act like virtual desktops.
- Workspaces are meant to reduce clutter and make the desktop easier to
  navigate.
- For example you could have all your communication windows, such as e-mail and
  your chat program, on one workspace, your code editor/programming stuff on
  another workspace and your music player could be on a third workspace.
- In order to use workspaces click on Activities in the top bar, a vertical
  panel will appear showing workspaces in use, plus an empty workspace. This is
  the workspace selector. To add a workspace, drag and drop a window from an
  existing workspace onto the empty workspace in the workspace selector. The
  workspace now contains the window you have dropped, and a new empty workspace
  will appear below it. To remove a workspace, simply close all of its windows
  or move them to other workspaces.

#### Navigation

    - **Super**: - Open Dash home lens. Press Super again to close Dash.
    - **Super + A**: - Open application lens.
    - **Ctrl + Super + D**: Minimizes all windows and shows the desktop - toggle style.
    - **Super + Page Up**: Move to workspace above.
    - **Super + Page Down**: Move to workspace below.
    - **Super + Shift + Left**: Move window one monitor to the left.
    - **Super + Shift + Right**: Move window one monitor to the right.
    - **Super + Shift + Page Down**: Move window one workspace down.
    - **Super + Shift + Page Up**: Move window one workspace up.
    - **Super + Shift + Home**: Move window to workspace 1.
    - **Super + Tab / Alt + Tab**: Switch between applications.
    - **Super + End**: Switch to last workspace.
    - **Super + Home**: Switch to workspace 1.
    - **Super + 1**: open program one from the minimized programs. **Super + 2**, same thing.
    - **Super + Shift + 1**, **Super + Shift + 9**: Open application 1-9 from the pinned applications.

#### System

    - **Super + L**: Lock screen.
    - **Ctrl + Alt + Delete**: Log out.
    - **Super + A**: Show all applications.
    - **Super + S**: Show the overview of open windows.
    - **Alt + F2**: Show the run command prompt. Can them invoke a terminal command like **code .** or **google-chrome**

#### Windows

    - **Super + hold Left Click and move**: Move any window without clicking the titlebar.
    - **Super + H**: Hide window.
    - **Super + Up Arrow**: Maximize window.
    - **Super + Down Arrow**: Minimize window.
    - **Super + Left Arrow**: View Split on left.
    - **Super + Right Arrow**: View Split on right.
    - **Ctrl + W**: Close open window.
