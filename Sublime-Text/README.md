Sublime-Text
============


https://gist.github.com/vertexclique/9839383

```bash
  $ printf '\x95' | dd seek=$((0xc700)) conv=notrunc bs=1 of=/path/to/sublime_text
```
