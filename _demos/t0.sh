###############################################################################

micromamba env create -n flameshot python=3.13

micromamba activate flameshot

micromamba install qt5

pip install cmake ninja

###############################################################################

rm -rf build/CMakeFiles
rm -rf build/CMakeCache.txt

cmake --preset osx

# cmake --build $PWD/build --target all
cmake --build $PWD/build --target install

###############################################################################

# build/install/bin/flameshot.app/Contents/MacOS/flameshot
build/src/flameshot.app/Contents/MacOS/flameshot
