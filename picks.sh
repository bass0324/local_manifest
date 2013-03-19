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

cd packages/apps/Mms
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Mms refs/changes/59/7259/2 && git cherry-pick FETCH_HEAD
cd $root

cd vendor/samsung
git fetch http://gerrit.sudoservers.com/AOKP/vendor_samsung refs/changes/31/7331/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/vendor_samsung refs/changes/32/7332/1 && git cherry-pick FETCH_HEAD
cd $root
