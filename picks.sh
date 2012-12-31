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
fi

#Pull in non-device cherries
cd frameworks/av
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_av refs/changes/34/4834/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_av refs/changes/35/4835/1 && git cherry-pick FETCH_HEAD
cd $root

cd frameworks/base
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/24/4724/3 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/38/4838/2 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/79/4779/22 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/64/4864/4 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/68/4868/3 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/69/4869/4 && git cherry-pick FETCH_HEAD
cd $root

#cd frameworks/opt/telephony
#git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_opt_telephony refs/changes/00/29100/1 && git cherry-pick FETCH_HEAD
#git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_opt_telephony refs/changes/06/29306/2 && git cherry-pick FETCH_HEAD
#cd $root

cd packages/apps/Mms
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Mms refs/changes/60/4560/10 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/ROMControl
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/25/4725/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/75/4775/2 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/87/4787/1 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Settings
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Settings refs/changes/65/4865/1 && git cherry-pick FETCH_HEAD
cd $root
