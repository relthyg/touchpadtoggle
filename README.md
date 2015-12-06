# touchpadtoggle
Checks whether a mouse is attached to (or detached from) USB port and runs script to toggle touchpad. Uses `udev` and `libnotify`.

## Quickstart
Download the [zipball](https://github.com/relthyg/touchpadtoggle/archive/master.zip) or clone the repo:
    
    git clone https://github.com/relthyg/touchpadtoggle.git
    
Copy the files to their corresponding folders and set file permissions (as root).

    cp touchpadtoggle.sh /opt/bin
    cp 70-touchpad.rules /etc/udev/rules.d
    chmod a+x /opt/bin/touchpadtoggle.sh

Attach your mouse and pray that everything works fine.