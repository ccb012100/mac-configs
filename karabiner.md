# Karabiner

## simple modifications

### for all devices

| From key  | To key       |
| --------- | ------------ |
| caps_lock | left_control |

### MacBook Pro

`Target Device: Apple Internal Keyboard / Trackpad (Apple Inc.)`

none

### Ducky One 2

`Target Device: USB-HID Keyboard (No manufacturer name)`

| From key                               | To key        |
| -------------------------------------- | ------------- |
| left_control                           | fn            |
| left_gui (equal to \`left_command\`)   | left_option   |
| right_alt (equal to \`right_option\`)  | right_command |
| left_alt (equal to \`left_option\`)    | left_command  |
| right_gui (equal to \`right_command\`) | right_option  |

## function keys

### for all devices

none

### Ducky One 2

`Target Devices: USB-HID Keyboard (No manufacturer name)`

check the checkbox `Use all F1, F2, etc. keys as standard function keys`

## complex modifications

### from website

- Change button4,5 to back,forward (rev 1)
- PC-Style Quit Application (Alt+F4 to Command+Q)
- Option(Alt)+Tab as Switch Application (Command+Tab)
- Home key to the beginning of the sentence (Command + Left). Doesn't work in terminal
- Home key to the end of the sentence (Command + Right). Doesn't work in terminal

### adding new complex modifications

- <https://pqrs.org/osx/karabiner/json.html>
- Karabiner monitors `~/.config/karabiner/karabiner.json` and automatically picks up changes
  - add to `rules` array

### my custom complex modifications

map `` Fn-``` to Play/Pause event

```json
{
    "description": "Fn-` to Play/Pause",
    "manipulators": [
        {
            "from": {
                "key_code": "grave_accent_and_tilde",
                "modifiers": {
                    "mandatory": [
                        "fn"
                    ]
                }
            },
            "to": {
                "consumer_key_code": "play_or_pause"
            },
            "type": "basic"
        }
    ]
},
```
