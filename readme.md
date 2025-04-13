## My AHK Setup
My AHK setup that brings some VIM commands to your entire desktop environment as well as some nice quality of life commands.

Still work in progress

## General informations

1. `CapsLock` (held) as the main modifier
2. `\` as a secondary modifier
3. Made with US ANSI layout in mind, if you're using f.e the German QUARTZ feel free to switch `\` with `$`.
4. Chrome is used as the default browser however you can change that, just search 'replace chrome.exe' in the file.

_Why `/` to begin with? Because my pinky finger rests on it_

### Navigation

| **Mode Activator Key**  | **Hotkey**   | **Action**                                                      |
|-------------------------|--------------|-----------------------------------------------------------------|
| `CapsLock` (held)       | `w`          | `{Up}` Move Up                                                  |
|                         | `a`          | `{Left}` Move Left                                              |
|                         | `s`          | `{Down}` Move Down                                              |
|                         | `d`          | `{Right}` Move Right                                            |
|                         | `q`          | `Ctrl + Left` (Move one word left)                              |
|                         | `e`          | `Ctrl + Right` (Move one word right)                            |
|                         | `9`          | `{Home}` Move to the start of the row                           |
|                         | `0`          | `{End}` Move to the end of the row                              |
|                         | `g`          | `Ctrl + Home` (Move to the start of the document)               |
|                         | `\ & g`      | `Ctrl + End` (Move to the end of the document)                  |

### Highlighting

| **Mode Activator Key**  | **Hotkey**   | **Action**                                                      |
|-------------------------|--------------|-----------------------------------------------------------------|
| `CapsLock` (held)       | `+w`         | `+{Up}` Highlight up                                            |
|                         | `+a`         | `+{Left}` Highlight left                                         |
|                         | `+s`         | `+{Down}` Highlight down                                        |
|                         | `+d`         | `+{Right}` Highlight right                                       |
|                         | `+q`         | `+^{Left}` Highlight one word left                              |
|                         | `+e`         | `+^{Right}` Highlight one word right                             |
|                         | `+0`         | `+{End}` Highlight from the cursor to the end of the row        |
|                         | `+9`         | `+{Home}` Highlight from the cursor to the start of the row     |

### Deletion

| **Mode Activator Key**  | **Hotkey**   | **Action**                                                      |
|-------------------------|--------------|-----------------------------------------------------------------|
| `CapsLock` (held)       | `j`          | `{Backspace}` Delete one character                              |
|                         | `\ & j`      | `{Delete}` Delete one character to the right                    |
|                         | `h`          | `Ctrl + Backspace` (Delete word to the left)                    |
|                         | `\ & h`      | `Ctrl + Delete` (Delete word to the right)                      |

### Miscellaneous

| **Mode Activator Key**  | **Hotkey**   | **Action**                                                      |
|-------------------------|--------------|-----------------------------------------------------------------|
| `CapsLock` (held)       | `f`          | `Ctrl + F` (Open Find)                                          |
|                         | `t`          | Open Chrome and open a new tab                                  |