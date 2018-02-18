View and launch online Twitch streams.

## Dependencies

* [rofi](https://github.com/DaveDavenport/rofi)
* [streamlink](https://github.com/streamlink/streamlink)
* [TwitchNotifier](https://github.com/GiedriusS/TwitchNotifier)

## Installation

```
git clone https://github.com/indeedwatson/rofi-twitch/
cd rofi-twitch
chmod +x rofi-twitch
```

Edit `rofi-twitch` with your Twitch username. You can also add aliases for your most viewed
channels to save those precious keystrokes

## Usage

- Call `rofi-twitch` to get `rofi` to list online channels. Select a channel or press Esc to exit.
- Call `rofi-twitch channelname` to directly launch `streamlink` with the desired channel
