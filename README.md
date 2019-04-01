1. config.lua         # for hammerspoon
`cp config.lua ~/.hammerspoon/private/config.lua`

2. Remove Dock 
>https://apple.stackexchange.com/questions/59556/is-there-a-way-to-completely-disable-dock
`defaults write com.apple.dock pinning -string end`
`killall Dock`
