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

cd frameworks/base
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/64/4864/5 && git cherry-pick FETCH_HEAD
#git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/33/5133/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/92/5192/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/93/5193/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/72/5272/3 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/17/5117/13 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/ROMControl
#git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/54/4954/3 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/73/5273/2 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/20/5120/4 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Settings
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Settings refs/changes/65/4865/1 && git cherry-pick FETCH_HEAD
cd $root
