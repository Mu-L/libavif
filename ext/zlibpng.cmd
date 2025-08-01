: # If you want to use a local build of zlib/libpng, you must clone the repos in this directory first,
: # then set CMake's AVIF_ZLIBPNG=LOCAL.
: # The git tags below are known to work, and will occasionally be updated. Feel free to use a more recent commit.

: # The odd choice of comment style in this file is to try to share this script between *nix and win32.

git clone -b v1.3.1 --depth 1 https://github.com/madler/zlib.git
cd zlib
git apply --ignore-whitespace ../zlib.patch
cd ..
git clone -b v1.6.50 --depth 1 https://github.com/glennrp/libpng.git
