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

cd frameworks/base
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/45/7245/5 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/89/7189/6 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/07/7207/6 && git cherry-pick FETCH_HEAD
cd $root

#Pull in non-device cherries
