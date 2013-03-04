# symlinked from local_manifest repo
# Run from root of source tree
# runs pick script from external platform_manifest repo from UnicornButter

root=`pwd`
cd $root

# Pull in linaro changes on gerrit
# if using the pub manifest
if [ -e platform_manifest/pick.sh ]; then
  cd platform_manifest
  ./pick.sh
  cd $root
fi

#Pull in non-device cherries
