# symlinked from local_manifest repo
# Run from root of source tree

root=`pwd`
cd $root

# In order to use pstest must be in build environment
. build/envsetup.sh >/dev/null 2>&1

cd build
pstest 7717/2
pstest 8192/1
cd $root

cd device/samsung/d2-common
pstest 8179/1
pstest 8180/1
pstest 8181/1
pstest 8182/1
pstest 8183/1
pstest 8184/1
pstest 8185/1
cd $root

cd device/samsung/msm8960-common
pstest 8169/1
pstest 8170/1
pstest 8171/1
pstest 8172/1
pstest 8173/1
pstest 8174/1
cd $root

cd frameworks/base
pstest 7969/6
pstest 8014/4
pstest 8126/2
pstest 8134/1
cd $root

cd packages/apps/ROMControl
pstest 4550/3
cd $root

cd system/core
pstest 8193/1
cd $root

cd vendor/samsung
pstest 8187/1
pstest 8188/1
pstest 8189/1
pstest 8190/1
cd $root

cd vendor/aokp
pstest 8191/1
cd $root

# Reinitialize build environment with pspush
. build/envsetup.sh >/dev/null 2>&1
