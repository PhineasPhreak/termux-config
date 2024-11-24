# termux-config
Termux is an Android terminal emulator and Linux environment application that works directly with no rooting or setup required. A minimal base system is installed automatically, additional packages are available using the package manager.

Tips and tricks about using Termux application and its packages. Try [Termux Wiki](https://wiki.termux.com/wiki/Main_Page)

## Installation
You can obtain Termux builds from [F-Droid](https://f-droid.org/repository/browse/?fdid=com.termux). Do not install it from Google Play.

- System requirements:

    Android 5.0 - 12.0 [(issues)](https://github.com/termux/termux-packages/labels/android-12)
    CPU: AArch64, ARM, i686, x86_64.
    At least 300 MB of disk space.

## Differences from Linux
### Termux is single-user
Android applications are sandboxed and have their own Linux user id and SELinux label. Termux is no exception and everything within Termux is executed with the same user id as the Termux application itself. The username may look like u0_a231 and cannot be changed as it is derived from the user id by Bionic libc.

All our packages (except root-only ones) are patched to drop any multiuser, setuid/setgid and other similar functionality. We also changed default ports for server packages: ftpd, httpd and sshd have their default ports set to 8021, 8080 and 8022 respectively.

You have free read-write access to all application components including $PREFIX. Be careful since it is very easy to break things by accidentally deleting or overwriting files in $PREFIX.

## Package Management
Termux uses apt and dpkg for package management, similar to Ubuntu or Debian.

See wiki here : [Package Management](https://wiki.termux.com/wiki/Package_Management)

## Terminal Settings
The Termux terminal can be configured by editing the `~/.termux/termux.properties` file. This file uses a simple `key=value` property syntax.

Lines beginning with `#` are comments and do not get executed. Most of the properties are included as comments in the file. Uncomment an existing line or add a new line to configure a property.

For changes to take effect after editing the properties file, either execute `termux-reload-settings` or restart Termux by closing all sessions and starting the application again.

See wiki here : [Terminal Settings](https://wiki.termux.com/wiki/Terminal_Settings)

## Internal and external storage
There are three main types of storage in Termux:

1. Internal storage: files put in $HOME, available from inside Termux or when explictly picked in a SAF-compatible file manager.
2. Shared storage: general purpose file storage available for the all applications. You need to grant Termux storage access permission to use it.
3. External storage: external SD cards or USB hard drives. Typically read-only, except the Termux private directory.

See wiki here : [Internal and external storage](https://wiki.termux.com/wiki/Internal_and_external_storage)

## Remote Access
Termux is capable of accessing remote devices by using some common tools. It is also possible to turn a device running Termux into remote controlled server.

See wiki here : [Remote Access](https://wiki.termux.com/wiki/Remote_Access)

## Graphical Environment
**This article is only applicable only to Termux installations running on Android 7.0 or higher.**

Termux provides support for programs that use X Window System. However, there no hardware acceleration for rendering and user will have to install a third party application to view graphical output.

See wiki here : [Graphical Environment](https://wiki.termux.com/wiki/Graphical_Environment)
