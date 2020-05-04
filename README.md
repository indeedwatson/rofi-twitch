**SUPERSEDED BY https://gitlab.com/indeedwatson/polybar_twitch/-/tree/master**

----

View and launch online Twitch streams.

## Dependencies

* [rofi](https://github.com/DaveDavenport/rofi)
* [streamlink](https://github.com/streamlink/streamlink)
* [TwitchNotifier](https://github.com/GiedriusS/TwitchNotifier)
* Perl HTML parser

## Installation

```
git clone https://github.com/indeedwatson/rofi-twitch/
cd rofi-twitch
chmod +x rofi-twitch
```

Copy the sample `settings` file to `~/.config/rofi-twitch/` and edit it with your Twitch username.
You can also add aliases for your most viewed channels to save those precious keystrokes.

## Usage

- Call `rofi-twitch` to get `rofi` to list online channels. Select a channel or press Esc to exit.
- Call `rofi-twitch channelname` to directly launch `streamlink` with the desired channel

If you want to use it with [rofi-bangs](https://github.com/gotbletu/shownotes/blob/master/rofi-scripts-collection/rofi-bangs.sh):

```
# launch twitch channels
COMMANDS["twitch"]="rofi-twitch \${input}"
LABELS["twitch"]=""
```
