PLATFORM=$(uname -a | cut -d ' ' -f 1)

if [[ "$PLATFORM" == "Darwin" ]]
then
        source $HOME/.config/osx_config
else
        source $HOME/.config/archlinux_config
fi
