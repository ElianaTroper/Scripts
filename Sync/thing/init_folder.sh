# Sets up folder structure
if [ ! -d .st ]; then
	mkdir .st
fi
if [ ! -d .st/ignore ]; then
	mkdir .st/ignore
fi
# Hard links global global ignores
if [ ! -f .st/ignore/gg ]; then
	ln -s /home/troper/Configs/.st/ignore/gg .st/ignore/gg
fi
# Establishes folder specific globals
if [ ! -f .st/ignore/g ]; then
	echo "#include gg" > .st/ignore/g
fi
# Loads the global
if [ ! -f .stignore ]; then
	echo "#include .st/ignore/g" > .stignore
fi
