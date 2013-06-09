# Run from root of source tree

root=`pwd`
cd $root

# In order to use pstest must be in build environment
. build/envsetup.sh >/dev/null 2>&1

cd build
pstest 7717/2
cd $root

cd device/samsung/jf-common
pstest 8855/1
cd $root

cd packages/apps/Camera
pstest 8875/1
cd $root

cd vendor/aokp 
pstest 8191/8
pstest 8854/2
pstest 8658/4
pstest 8890/1
cd $root

. build/envsetup.sh >/dev/null 2>&1
