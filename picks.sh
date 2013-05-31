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
pstest 8575/2
pstest 8704/1
pstest 8686/4
pstest 8707/1
pstest 8573/29
cd $root 

cd packages/apps/ROMControl
pstest 8576/1
pstest 8574/6
cd $root


# Reinitialize build environment with pspush
. build/envsetup.sh >/dev/null 2>&1
