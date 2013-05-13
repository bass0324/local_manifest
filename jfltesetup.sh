# Run from root of source tree

cd ..
root=`pwd`
cd $root

# In order to use pstest must be in build environment
. build/envsetup.sh >/dev/null 2>&1

cd vendor/samsung
pstest 8188/1
pstest 8189/1
pstest 8190/1
cd $root

cd vendor/aokp
pstest 8191/2
cd $root
