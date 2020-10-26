# Firefox settings :rocket:

## Extensions

- [**React Dev Tools**](https://addons.mozilla.org/en-US/firefox/addon/react-devtools/)
  - adds ReactJs debugging tools to the Firefox Developer Tools.

---

- [**uBlock Origin**](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
  - wide spectrum content blocker.

---

- [**Vimium**](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/)
  - provides vim-like keyboard shortcuts for navigation and control.

---

- [**Stylus**](https://addons.mozilla.org/en-GB/firefox/addon/styl-us/)
  - provides dark theme with code highlighting in GitHub, you can pick the
    syntax highlighting theme for the code and use fira code or other fonts. The
    styles I use for Github are:
    - [**Github - Fira Code**](https://userstyles.org/styles/167666/github-fira-code)
    - [**Github Dark**](https://github.com/StylishThemes/GitHub-Dark) - with
      syntax theme set to Monokai, by clicking stylus -> manage -> cogwheel next
      to Github Dark -> Github syntax theme = Monokai.

---

- [**Octotree**](https://addons.mozilla.org/en-US/firefox/addon/octotree/)
  - allows you to easily navigate a code tree, just like in an IDE, on GitHub.

---

- [**Tabliss**](https://addons.mozilla.org/en-US/firefox/addon/tabliss/)
  - time display & wallpapers for empty firefox tabs.

---

- [**Privacy Badger**](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/)
  - blocks trackers on web pages you visit.

---

- [**Firefox Color**](https://addons.mozilla.org/en-US/firefox/addon/firefox-color/)
  - build, save and share firefox themes.

---

- [**Facebook Container**](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/)
  - prevent facebook from tracking you around the web, control and isolate your
    web activity from facebook.

---

- [**BetterTTV**](https://addons.mozilla.org/en-US/firefox/addon/betterttv/)
  - enhances Twitch with new features and emotes.

---

## Firefox Developers installation Ubuntu

1.  Download the .tar file from
    [Mozilla's website](https://www.mozilla.org/en-US/firefox/developer/).
    **Note the .tar filename, because it changes with every version**.
2.  Open Terminal in Downloads folder
3.  Copy .tar file into /opt folder

    ```bash
    sudo cp -rp firefox-77.0b40.tar.bz2 /opt
    ```

4.  Delete the .tar file from the downloads directory

    ```bash
    sudo rm -rf firefox-77.0b40.tar.bz2
    ```

5.  Navigate into the /opt directory and Untar the .tar file

    ```bash
    cd /opt
    ```

    ```bash
    sudo tar xjf firefox-77.0b40.tar.bz2
    ```

6.  Delete the .tar fire

    ```bash
    sudo rm -rf firefox-77.0b40.tar.bz2
    ```

7.  Change the ownership of the folder containing the Firefox Developer edition
    /opt/firefox

    ```bash
    sudo chown -R $USER /opt/firefox
    ```

8.  Open .zshrc and Paste this line, that sets the path for the executable file:

    ```bash
    vim ~/.zshrc
    ```

    ```bash
    export PATH=/opt/firefox/firefox:$PATH
    ```

9.  Create a Unity desktop file for your launcher. After we create this file,
    we'll be able to search for Firefox Developer Edition in the launcher,
    `Super + A` and **right click the icon -> add to favorites**. Create the
    _firefox-developer.desktop_ file and **paste the content of the
    firefox-developer.desktop** file into it.

    ```bash
      vim ~/.local/share/applications/firefox-developer.desktop
    ```

10. Now you should be able to launch the browser and add it to favorites by
    right clicking the icon in the Launcher (Super + A -> Search for Firefox
    Developer Edition)

---

> ### Note: Sometimes a proble occurs where when clicking the taskbar icon of the browser it opens new windows instead of the already opened instance, to fix this:

> - launch the Firefox Developer Edition browser
> - open your terminal and type
>
> ```bash
> xprop
> ```
>
> - click on the Firefox Developer and look for **WM_CLASS(STRING)** property
>   i.e.
>
> ```
> WM_CLASS(STRING) = "Navigator", "Firefox Developer Edition"
> ```
>
> - If the output is any different than "Firefox Developer Edition", you have to
>   update the `StartupWMClass` property in the `firefox-developer.desktop` file
>   to be equal to the output class without the quotes.
