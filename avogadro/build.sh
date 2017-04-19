rm -f CMakeCache.txt

# Environment created with:
# conda create -n avo27 pkg-config qt=4 eigen openbabel sip
# (removing numpy+boost specifically so that python doesn't get configured)

# When building under conda-build, $PREFIX is defined

mkdir build
cd build

cmake \
  -D CMAKE_PREFIX_PATH=$PREFIX \
  -D CMAKE_INSTALL_PREFIX=$PREFIX \
  -D EIGEN3_INCLUDE_DIR=$PREFIX/include/eigen3 \
  -D USE_SYSTEM_YAEHMOP=ON \
  ..
make
make install
