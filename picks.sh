# symlinked from local_manifest repo
# Run from root of source tree

root=`pwd`
cd $root

# In order to use pstest must be in build environment
. build/envsetup.sh >/dev/null 2>&1

cd build
pstest 7717/2
cd $root

cd frameworks/base
pstest 8126/2
pstest 8134/1
cd $root

cd packages/apps/ROMControl
pstest 4550/3
cd $root

# Reinitialize build environment with pspush
. build/envsetup.sh >/dev/null 2>&1
