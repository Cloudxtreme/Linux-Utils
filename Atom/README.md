# Atom

### Key shorcuts

>>> keymap.cson

```cson


'atom-workspace atom-text-editor:not([mini])':

  # Comment Line
  'alt-1': 'editor:toggle-line-comments'

  # Color Picker
  'alt-2': 'color-picker:open'

  # Css comb
  'alt-3': 'css-comb:run'

  # Beautify
  'alt-4': 'atom-beautify:beautify-editor'

  # Git
  'alt-5': 'git-history:show-file-history'
  'alt-6': 'git-diff-details:toggle-git-diff-details'

  # Encode Decode
  'f5': 'html-entities:encode'
  'f6': 'html-entities:decode'

  # Merge
  'alt-f1': 'merge-conflicts:accept-theirs'
  'alt-f2': 'merge-conflicts:accept-ours'

  # Css number increase
  'alt-up': 'emmet:increment-number-by-1'
  'alt-down': 'emmet:decrement-number-by-1'

  # Move up and down
  'ctrl-shift-up': 'editor:move-line-up'
  'ctrl-shift-down': 'editor:move-line-down'

  'alt-z': 'tree-view:toggle'
  'alt-x': 'tool-bar:toggle'

  # Split multi-selections
  'ctrl-shift-L': 'editor:split-selections-into-lines'

  # TO-DO Toggle markdown
  # 'ctrl-z': 'toggle-markdown-task:toggle'

  # Scp hide
  # 'escape': 'find-and-replace:hide'

'atom-text-editor.autocomplete-active':
  'enter': 'autocomplete-plus:confirm'

  # 'ctrl-alt-up': 'editor:add-selection-above'
  # 'ctrl-alt-down': 'editor:add-selection-below'


```


### Styles

>>> styles.less

```less

/*
 * Your Stylesheet
 *
 * This stylesheet is loaded when Atom starts up and is reloaded automatically
 * when it is changed.
 *
 * If you are unfamiliar with LESS, you can read more about it here:
 * http://www.lesscss.org
 */
.tree-view {}
// style the background and foreground colors on the atom-text-editor-element
// itself
atom-text-editor {}
// To style other content in the text editor's shadow DOM, use the ::shadow
// expression
atom-text-editor::shadow .cursor {}

/* ·············································································
 * Highlight
 */
/* highlight-selected */
atom-text-editor,
atom-text-editor::shadow {
  atom-text-editor .highlight.highlight-selected .region {
    position: absolute;
    pointer-events: none;
    z-index: -1;
  }
  .highlights {
    // Box
    .highlight-selected .region {
      border: 1px solid;
      background: yellow;
      // padding: 5px;
    }
    // Background
    .highlight-selected.background .region {
      background: yellow;
    }
    // Light theme box (set in settings)
    .highlight-selected.light-theme .region {
      border-color: rgba(255, 128, 64, 0.4);
    }
    // Light theme background (set in settings)
    .highlight-selected.light-theme.background .region {
      background-color: rgba(255, 128, 64, 0.2);
    }
  }
}
/* Find highlight */
atom-text-editor::shadow .highlight {
  &.find-result .region,
  &.current-result .region,
  &.current-result ~ .highlight.selection .region {
    z-index: -1;
  }
  &.find-result .region {
    background: yellow;
  }
  &.current-result .region,
  &.current-result ~ .highlight.selection .region {
    background: orange;
  }
}
/* ·············································································
 * Theme Atom Light
 */
@titlebar-color: rgba(251, 251, 251, 0);
@text-color: rgb(250, 79, 79);
.tab-bar {
  .tab {
    .close-icon {
      &:hover {
        color: @text-color;
      }
    }
  }
  .tab.active:hover .close-icon {
    color: @text-color;
    &:hover {
      color: @text-color;
    }
  }
}
/* ·············································································
 * Toolbar
 */
.tool-bar button.tool-bar-btn {
  color: #5C6A7E;
  box-shadow: none;
}
/* ·············································································
 * Minimap
 */
atom-text-editor atom-text-editor-minimap::shadow .minimap-visible-area,
atom-text-editor::shadow atom-text-editor-minimap::shadow .minimap-visible-area {
  background-color: rgba(106, 152, 185, 0.54);
  opacity: 0.5;
}
/* Mini map scroll bar hide */
atom-text-editor .vertical-scrollbar,
atom-text-editor::shadow .vertical-scrollbar {
  opacity: 0;
  width: 0;
}


```

### Toolbar

```json
[
  {
    "type"    : "button",
    "icon"    : "three-bars",
    "callback": "tree-view:toggle",
    "tooltip" : "Toggle tree-view (Alt z)"
  },
  {
    "type"    : "spacer"
  },


  {
    "type"    : "button",
    "icon"    : "document",
    "callback": "application:new-file",
    "tooltip" : "New File",
    "iconset" : "ion"
  },
  {
    "type"    : "button",
    "icon"    : "folder",
    "callback": "application:open-file",
    "tooltip" : "Open...",
    "iconset" : "ion"
  },
  {
    "type"    : "button",
    "icon"    : "archive",
    "callback": "core:save",
    "tooltip" : "Save",
    "iconset" : "ion"
  },
  {
    "type"    : "spacer"
  },


  {
    "type"    : "button",
    "icon"    : "search",
    "callback": "find-and-replace:show",
    "tooltip" : "find-and-replace:show",
    "iconset" : "ion"
  },
  {
    "type"    : "button",
    "icon"    : "shuffle",
    "callback": "find-and-replace:show-replace",
    "tooltip" : "Replace in Buffer",
    "iconset" : "ion"
  },
  {
    "type"    : "spacer"
  },
  {
    "type"    : "button",
    "icon"    : "octoface",
    "callback": "git-control:toggle",
    "tooltip" : "Git Control",
    "style"   : {
      "color" : "#ec5959"
    }
  },
  {
    "type"    : "button",
    "icon"    : "history",
    "callback": "git-history:show-file-history",
    "tooltip" : "Git File history (Alt 5)"
  },
  {
    "type"    : "button",
    "icon"    : "list-alt",
    "iconset" : "fa",
    "callback": "git-log:show",
    "tooltip" : "Git Log"
  },
  {
    "type"    : "button",
    "icon"    : "mirror",
    "callback": "git-difftool:diff-file",
    "tooltip" : "Git Diff File"
  },
  {
    "type"    : "spacer"
  },


  {
    "type"    : "button",
    "icon"    : "comment-o",
    "iconset" : "fa",
    "callback": "editor:toggle-line-comments",
    "tooltip" : "Comment Line (Alt 1)"
  },
  {
    "type"    : "button",
    "icon"    : "eyedropper",
    "iconset" : "fa",
    "callback": "color-picker:open",
    "tooltip" : "Color Pickers(Alt 2)"
  },
  {
    "type"    : "button",
    "icon"    : "android-color-palette",
    "iconset" : "ion",
    "callback": "pigments:show-palette",
    "tooltip" : "Show Color Palette"
  },
  {
    "type"    : "button",
    "icon"    : "sort-alpha-asc",
    "callback": "sort-lines:sort",
    "tooltip" : "Sort Lines - F5",
    "iconset" : "fa"
  },
  {
    "type"    : "button",
    "icon"    : "magic",
    "callback": "beautify-editor",
    "tooltip" : "Beautify (Alt 4)",
    "iconset" : "fa"
  },
  {
    "type"    : "button",
    "icon"    : "css3",
    "callback": "css-comb:run",
    "tooltip" : "Sort css - (alt-3)",
    "iconset" : "fa",
    "style"   : {
      "color" : "#58b2ec"
    }
  },
  {
    "type"    : "spacer"
  },


  {
    "type"    : "button",
    "icon"    : "markdown",
    "callback": "markdown-preview:toggle",
    "tooltip" : "Markdown Preview"
  },
  {
    "type"    : "button",
    "icon"    : "cloud-upload",
    "callback": "remote-ftp:toggle",
    "tooltip" : "Remote FTP",
    "iconset" : "fa",
    "style"   : {
      "color" : "#3fba74"
    }
  },
  {
    "type"    : "button",
    "icon"    : "cloud-upload",
    "callback": "remote-ftp:disconnect",
    "tooltip" : "Remote FTP - Disconnect",
    "iconset" : "fa",
    "style"   : {
      "color" : "#ec5880"
    }
  },
  {
    "type"    : "spacer"
  },
  {
    "type"    : "button",
    "icon"    : "gulp-plain",
    "iconset" : "devicon",
    "callback": "gulp-control:toggle",
    "tooltip" : "Gulpp Control",
    "style"   : {
      "color" : "#ec5959"
    }
  },
  {
    "type"    : "spacer"
  },

  {
    "type"    : "button",
    "icon"    : "columns",
    "iconset" : "fa",
    "callback": ["pane:split-right"]
  },
  {
    "type"    : "button",
    "icon"    : "columns",
    "iconset" : "fa",
    "callback": ["pane:close"]
  },
  {
    "type"    : "spacer"
  },
  {
    "type"    : "button",
    "icon"    : "gear",
    "callback": "settings-view:open",
    "tooltip" : "Settings",
    "style"   : {
      "color" : "#0d0d0d"
    }
  },
  {
    "type"    : "button",
    "icon"    : "flame",
    "callback": "activate-power-mode:toggle",
    "tooltip" : "Power Mode"
  },
  {
    "type"    : "spacer"
  },
  {
    "type"    : "button",
    "icon"    : "xxxxxxxxxx",
    "callback": "axxxxxxxxx",
    "tooltip" : "Nxxxxxxe",
    "iconset" : "xxxxxx"
  }
]


```
