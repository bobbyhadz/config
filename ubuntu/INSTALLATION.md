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
