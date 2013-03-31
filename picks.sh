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
  cd system/core
  git fetch ssh://BMC@gerrit.sudoservers.com:29418/AOKP/system_core refs/changes/61/7361/1 && git cherry-pick FETCH_HEAD
  cd $root
fi

#defconfig merger
cd device/samsung/d2att
git fetch http://gerrit.sudoservers.com/AOKP/device_samsung_d2att refs/changes/84/7584/1 && git cherry-pick FETCH_HEAD
cd ../d2tmo
git fetch http://gerrit.sudoservers.com/AOKP/device_samsung_d2tmo refs/changes/85/7585/1 && git cherry-pick FETCH_HEAD
cd ../d2usc
git fetch http://gerrit.sudoservers.com/AOKP/device_samsung_d2usc refs/changes/83/7583/1 && git cherry-pick FETCH_HEAD
cd ../d2vzw
git fetch http://gerrit.sudoservers.com/AOKP/device_samsung_d2vzw refs/changes/82/7582/1 && git cherry-pick FETCH_HEAD
cd $root

cd frameworks/base
git fetch ssh://BMc@gerrit.sudoservers.com:29418/AOKP/frameworks_base refs/changes/36/7436/4 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/48/7548/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/45/7245/8 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/07/7207/9 && git cherry-pick FETCH_HEAD
cd $root

cd external/webkit
git fetch http://gerrit.sudoservers.com/AOKP/external_webkit refs/changes/80/7480/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/external_webkit refs/changes/81/7481/1 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/ROMControl
git fetch ssh://BMc@gerrit.sudoservers.com:29418/AOKP/packages_apps_ROMControl refs/changes/35/7435/5 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/49/7549/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/77/7577/1 && git cherry-pick FETCH_HEAD
cd $root
