FOLDER=~/paper-icon-theme

if [ ! -d "$FOLDER" ]; then
	git clone https://github.com/snwh/paper-icon-theme $FOLDER
fi

cd $FOLDER
pwd=$FOLDER

# build
meson "build" --prefix=~/.local
# install
ninja -C "build" install

# set the icon theme
gsettings set org.gnome.desktop.interface icon-theme "Paper"
# set the cursor theme
gsettings set org.gnome.desktop.interface cursor-theme "Paper"
