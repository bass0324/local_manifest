# symlinked from local_manifest repo
# Run from root of source tree
# runs pick script from external platform_manifest repo from UnicornButter

root=`pwd`
cd $root

# In order to use pstest must be in build environment
. build/envsetup.sh >/dev/null 2>&1

# Pull in linaro changes on gerrit
# if using the pub manifest
if [ -e platform_manifest/pick.sh ]; then
  cd platform_manifest
  ./pick.sh
  cd $root
  cd system/core
  pstest 7361/1
  cd $root
fi

cd build
pstest 7717/1
cd $root

cd frameworks/base
#pstest 7436/4
pstest 7719/1
pstest
cd $root

cd packages/apps/ROMControl
#pstest 7435/5
pstest 7645/5
cd $root
