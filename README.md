# 🔄 macOS VM Desktop Switcher (Hammerspoon)

A quick script to easily switch between virtual desktops (Spaces) on macOS, especially useful for virtual machines or setups with keyboard conflicts.

## ⚙️ Requirements
- [Hammerspoon](https://www.hammerspoon.org/) installed

## 📋 Installation

1. **Open Hammerspoon configuration:**
   - Click Hammerspoon's icon in the menu bar → `Open Config`.

2. **Paste this script into `init.lua`:**

```lua
-- Ctrl + [ to switch to previous desktop
hs.hotkey.bind({"ctrl"}, "[", function()
    hs.execute('osascript -e \'tell application "System Events" to key code 123 using control down\'')
end)

-- Ctrl + ] to switch to next desktop
hs.hotkey.bind({"ctrl"}, "]", function()
    hs.execute('osascript -e \'tell application "System Events" to key code 124 using control down\'')
end)
```

3. **Reload Hammerspoon**:
   - Press `Cmd + Ctrl + R` or click on `Reload Config` from the Hammerspoon menu.

## 🚀 Usage
- Press `Ctrl + [` to move left.
- Press `Ctrl + ]` to move right.

## ✅ Benefits
- Avoids key conflicts with host systems or virtual machines.
- Simple and reliable space switching.

## ⚠️ Note
Ensure Hammerspoon has accessibility permissions:
- macOS: **System Preferences → Security & Privacy → Privacy → Accessibility**. Check ✅ **Hammerspoon**.

