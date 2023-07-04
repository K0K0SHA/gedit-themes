Automatic install by running install.sh:
1. clone or download the repo
2. navigate to directory with themes (repo base dir)
3. chmod +x install.sh
4. ./install.sh
5. restart gedit and new themes should be in preferences 

Manual Install (requires basic bash skill):
1. clone or download the repo
2. navigate to directory with themes (repo base dir)
3. in another terminal window, confirm default gedit styles dir ~/.local/share/gedit/styles exists (maybe by navigating there)
4. If ~/.local/share/gedit/styles exists, ignore this step. If it doesn't, then gedit is configured to store themes in a different directory. Should this problem occur, as of install.sh v0.1, user needs to check gedit config files which they have to locate manually, as their location differs between systems.
5. copy all desired theme xml files to ~/.local/share/gedit/styles or to whichever directory that gedit looks for themes in
6. restart gedit

WARNING(S): overwrites existing .xml files in ~/.local/share/gedit/styles
CREDITS: Themes taken, installer reworked from repo: https://github.com/mig/gedit-themes/
TODO: add more themes, add overwrite confirm
