-- Use Ctrl+[ and Ctrl+] to switch desktops (no arrow key conflicts)
hs.hotkey.bind({"ctrl"}, "[", function()
    hs.execute('osascript -e \'tell application "System Events" to key code 123 using control down\'')
end)

hs.hotkey.bind({"ctrl"}, "]", function()
    hs.execute('osascript -e \'tell application "System Events" to key code 124 using control down\'')
end)
