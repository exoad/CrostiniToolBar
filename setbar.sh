#!/bin/bash

#This part will ask you for the Colors
echo -e "\e[31m=Welcome to the Color Setter!=";
echo -e "\e[32mDefault Colors: cyan, green, blue, red, black, gray, yellow, reset"
echo "Note: Color reset will return to default color"
echo -e "\e[0mExample Color: #6fe8be"
echo -e "\e[0mPlease type a color in HEX or type one of the defaults listed above that will set your toolbar color: "
read clr;

strToMatch="exit"


# #f2f2f2 (default)
#
# Main:
#
# #92c957 (green)
# #5fa2c9 (blue)
# #d17b75 (red)
# #e8c15a (orange)
# #63c9ab (cyan)
# #1c1c1c (black)
# #636363 (gray)
#
# Secondary (Source: https://github.com/joshdick/onedark.vim):
#
# #282c34 (black)
# #E06C75 (red)
# #98c379 (green)
# #E5c07B (yellow)
# #61AFEF (blue)
# #56B6C2 (cyan)
# #ABB2BF (gray)

# Statements to change the colors
if [ "$clr" == "$strToMatch" ] 
then
    echo "Exiting..."
    exit
elif [ "$clr" == "green" ] || [ "$clr" == "Green" ]
then 
    sudo mkdir -p ~/.config/systemd/user/sommelier-x@0.service.d

    echo -e '[Service]\nEnvironment="SOMMELIER_FRAME_COLOR=#98c379"' > ~/.config/systemd/user/sommelier-x@0.service.d/override.conf

    echo "Color set to default [green]. Please restart the Linux Environment for changes to take effect"
elif [ "$clr" == "reset" ] || [ "$clr" == "default" ]
then
    sudo mkdir -p ~/.config/systemd/user/sommelier-x@0.service.d

    echo -e '[Service]\nEnvironment="SOMMELIER_FRAME_COLOR=#f2f2f2"' > ~/.config/systemd/user/sommelier-x@0.service.d/override.conf

    echo "Color set to default [reset]. Please restart the Linux Environment for changes to take effect"
elif [ "$clr" == "cyan" ] || [ "$clr" == "Cyan" ]
then
    sudo mkdir -p ~/.config/systemd/user/sommelier-x@0.service.d

    echo -e '[Service]\nEnvironment="SOMMELIER_FRAME_COLOR=#56B6C2"' > ~/.config/systemd/user/sommelier-x@0.service.d/override.conf

    echo "Color set to default [cyan]. Please restart the Linux Environment for changes to take effect"
elif [ "$clr" == "red" ] || [ "$clr" == "Red" ]
then
    sudo mkdir -p ~/.config/systemd/user/sommelier-x@0.service.d

    echo -e '[Service]\nEnvironment="SOMMELIER_FRAME_COLOR=#E06C75"' > ~/.config/systemd/user/sommelier-x@0.service.d/override.conf

    echo "Color set to default [red]. Please restart the Linux Environment for changes to take effect"
elif [ "$clr" == "blue" ] || [ "$clr" == "Blue" ]
then
    sudo mkdir -p ~/.config/systemd/user/sommelier-x@0.service.d

    echo -e '[Service]\nEnvironment="SOMMELIER_FRAME_COLOR=#61AFEF"' > ~/.config/systemd/user/sommelier-x@0.service.d/override.conf

    echo "Color set to default [blue]. Please restart the Linux Environment for changes to take effect"
elif [ "$clr" == "black" ] || [ "$clr" == "Black" ]
then
    sudo mkdir -p ~/.config/systemd/user/sommelier-x@0.service.d

    echo -e '[Service]\nEnvironment="SOMMELIER_FRAME_COLOR=#282c34"' > ~/.config/systemd/user/sommelier-x@0.service.d/override.conf

    echo "Color set to default [black]. Please restart the Linux Environment for changes to take effect"
elif [ "$clr" == "yellow" ] || [ "$clr" == "Yellow" ]
then
    sudo mkdir -p ~/.config/systemd/user/sommelier-x@0.service.d

    echo -e '[Service]\nEnvironment="SOMMELIER_FRAME_COLOR=#E5c07B"' > ~/.config/systemd/user/sommelier-x@0.service.d/override.conf

    echo "Color set to default [yellow]. Please restart the Linux Environment for changes to take effect"
elif [ "$clr" == "gray" ] || [ "$clr" == "Gray" ]
then
    sudo mkdir -p ~/.config/systemd/user/sommelier-x@0.service.d

    echo -e '[Service]\nEnvironment="SOMMELIER_FRAME_COLOR=#ABB2BF"' > ~/.config/systemd/user/sommelier-x@0.service.d/override.conf

    echo "Color set to default [gray]. Please restart the Linux Environment for changes to take effect"
else 
    sudo mkdir -p ~/.config/systemd/user/sommelier-x@0.service.d

    echo -e "[Service]\nEnvironment=SOMMELIER_FRAME_COLOR=$clr" > ~/.config/systemd/user/sommelier-x@0.service.d/override.conf

    echo "Color set to custom [$clr]. Please retart the Linux Environment for changes to take effect"
fi
