# symlinked from local_manifest repo
# runs pick script from external platform_manifest repo from UnicornButter

root=`pwd`

#Pull in linaro changes on gerrit
cd platform_manifest
./pick.sh

cd $root

#Pull in non-device cherries
cd frameworks/base
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/24/4724/3 && git cherry-pick FETCH_HEAD
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_base refs/changes/60/28960/3 && git cherry-pick FETCH_HEAD
cd $root
cd packages/apps/ROMControl
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/25/4725/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/52/4752/2 && git cherry-pick FETCH_HEAD
cd $root
