# rofi-twitch

Scripts to view and launch online Twitch streams.

## Dependencies

* [rofi](https://github.com/DaveDavenport/rofi)
* [streamlink](https://github.com/streamlink/streamlink)
* [TwitchNotifier](https://github.com/GiedriusS/TwitchNotifier)

## Installation

`git clone https://github.com/indeedwatson/rofi-twitch/tree/dd06c756d731213429ec5be8d6ac66cb500b5f20`
`cd rofi-bangs`
`chmod +x ./*.sh`

## Usage

**twitch.sh** launches the given channel with quality as an optional argument
(defaulting to best), and as detailed in the script, you can open a browser
window with twitch chat popout for extra Kappa.

**rofi-twitch** handles the rofi side of things. The reason to separate them is
because `twitchnotifier` is a bit slow, this allows you to call `twitch.sh`
individually through terminal or through
[rofi-bangs](https://github.com/gotbletu/shownotes/blob/master/rofi-scripts-collection/rofi-bangs.sh)
adding the following snippets:

to launch with `twitch channel`:
```bash
# twitch
COMMANDS["twitch"]="twitch \${input}"
LABELS["twitch"]=""
```

to view and select from live channels:
```bash
# live twitch
COMMANDS["live"]="~/bin/rofi-twitch"
LABELS["live"]=""
```

