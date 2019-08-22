echo "Getting Adobe Source Code Pro font..."
git clone https://github.com/adobe-fonts/source-code-pro
echo "NOTE: you will be asked the root password. This is so you can apply the fonts system-wide."
sudo mv ./source-code-pro/TTF/*.ttf /usr/share/fonts
sudo fc-cache
echo "Backing up existing emacs configs..."
echo "~/.emacs will be renamed to ~/.emacs.old and ~/.emacs.d to ~/.emacs.d.old"
mv ~/.emacs .emacs.old
mv ~/.emacs.d .emacs.d.old
echo "Cloning Spacemacs to ~/.emacs.d"
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
echo "Cloning my config layer to ~/.emacs.d/private/lorecast162"
git clone https://github.com/lorecast162/Spacemacs-Config-Layer ~/.emacs.d/private/lorecast162
echo "Emacs will load for the first time under spacemacs, after all is done, close it, the script will take care of the rest."
emacs
echo "To finish setup, emacs will open the ~/.spacemacs file. You will have to add \"lorecast162\" to the \"dotspacemacs-configuration-layers\" var after \"'(\""
read -rsp $'Press enter to continue...\n'
emacs ~/.spacemacs
echo "Setup should be done. You will need to run emacs for one last time just to check that everything is in place. The script will exit now."
read -rsp $'Press enter to continue...\n'
exit
