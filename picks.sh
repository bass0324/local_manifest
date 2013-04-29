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
pstest 7982/1
pstest 8032/1
pstest 8029/2
pstest 8034/1
pstest 7969/6
pstest 8014/4
pstest 8041/3
cd $root

cd packages/apps/Camera
pstest 8048/6
pstest 8049/5
pstest 8050/4
cd $root

cd packages/apps/Settings
pstest 8035/2
cd $root

# Reinitialize build environment with pspush
. build/envsetup.sh >/dev/null 2>&1
