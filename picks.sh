# symlinked from local_manifest repo
# Run from root of source tree

root=`pwd`
cd $root

# In order to use pstest must be in build environment
. build/envsetup.sh >/dev/null 2>&1

cd build
pstest 7717/1
cd $root

cd frameworks/base
pstest 7436/28
pstest 7820/11
pstest 7889/9
pstest 7929/1
cd $root

cd packages/apps/ROMControl
pstest 7435/23
cd $root

# Reinitialize build environment with pspush
. build/envsetup.sh >/dev/null 2>&1
