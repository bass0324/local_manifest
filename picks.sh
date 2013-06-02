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
pstest 8686/4
pstest 8533/1
pstest 8642/2
cd $root 

cd packages/apps/ROMControl
pstest 8534/3
pstest 8643/2
cd $root

cd vendor/samsung
pstest 8747/1
pstest 8748/1
cd $root


# Reinitialize build environment with pspush
. build/envsetup.sh >/dev/null 2>&1
