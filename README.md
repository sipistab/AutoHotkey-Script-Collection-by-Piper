# Piper's Windows Automation Utility

## Overview
This utility is a streamlined set of Windows automation tools, built over years of practical scripting. It tackles real everyday tasks: faster navigation, fewer repetitive actions, and smart shortcuts that make my work cleaner and quicker. It’s easy to adapt, simple to customize, and designed to save time without adding clutter.

It is a frequent occurrence that I am asked how I work so efficiently or to run workshops on my workflow. In the past, this meant hosting dedicated sessions to walk through tools and techniques. Over time, both the tools and my command of them have evolved to the point where I can simply share this repository instead. With just a few pointers, anyone can adopt my workflow, build their own shortcuts, and start automating more as their curiosity grows.

## Features
- **Taskbar Navigation:** Instantly switch between pinned taskbar items with F1–F4.
- **Pause All Hotkeys:** F12 suspends all hotkeys for 30 seconds.
- **Volume Control:** Ctrl + Mouse Wheel to adjust system volume.
- **Notepad++ Shortcuts:** Quick window and tab management.
- **Password Quick Paste:** Alt+P types your password instantly (edit for your own use).
- **The Time I Die:** Type `thedayidie`, `theweekidie`, or `themonthidie` to see how many days, weeks, or months you have left until a set date. Inspired by [The Time I Die](https://github.com/sipistab/The-Time-I-Die).
- **Mouse Autoclicker:** Ctrl+M toggles fast left mouse clicking. It is very useful if you want to lag something out or break a button, and so on.
- **Snipping Tool Shortcut:** Ctrl+B launches the Windows snipping tool. I use it to quickly capture images, and it also enables me to clip and draw on them easily, as you can bring up the Windows image utilities after snipping. In the past, I used other proprietary tools on Windows like Monosnap.

## How to Use
1. **Install [AutoHotkey v2](https://www.autohotkey.com/download/).**
2. **Download this repository.**
3. **Run `Utlitily_v2.ahk` by double-clicking it.**
4. **Edit Utlitily_v2.ahk to fit your scenario.**
5. **To stop the script, right-click the green 'H' icon in the system tray and select 'Exit'.**

## Understanding the Script
This script uses two main types of automation:

### Hotkeys
A hotkey is a keyboard shortcut that triggers an action. The format is:

```
MODIFIER & KEY:: Action
```
- `^` = Ctrl
- `!` = Alt
- `+` = Shift
- `#` = Windows key

For example, `^m::` means Ctrl+M triggers the following block.

### Hotstrings
A hotstring expands text when you type a specific sequence. The format is:

```
::trigger::replacement
```
Type the text between the double colons (e.g., `::inserttodo::`) and it will be replaced with the defined output.

### Block Hotstrings
Some hotstrings use the `:*:` prefix, which means they trigger anywhere in your typing, not just at the start of a word. For example:

```
:*:thedayidie::
```
Type `thedayidie` anywhere and the script will respond.

### Editing
- All actions are defined in plain English in the comments.
- You can change hotkeys, hotstrings, and actions to suit your needs.
- Passwords and sensitive data should be edited before use.

## Customization and a word of warning
- The script is open source and can be edited in any text editor.
- Review and customize hotkeys and sensitive data (like passwords) before use. I use a password shorthand to simplify single-use test devices and environments, NOT to automate my logins to critical systems that contain personal or sensitive data—and so should you. Be responsible and knowledgeable about the tools you employ, know the risks involved.
 
 
 
Use, modify, and share freely.

---
