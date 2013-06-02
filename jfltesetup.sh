# Run from root of source tree

root=`pwd`
cd $root

# In order to use pstest must be in build environment
. build/envsetup.sh >/dev/null 2>&1

cd build
pstest 7717/2
cd $root

cd packages/apps/Camera
pstest 8685/1
cd $root

cd vendor/aokp
pstest 8191/6
pstest 8583/1
pstest 8659/2
pstest 8658/2
cd $root

. build/envsetup.sh >/dev/null 2>&1
