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

cd frameworks/base
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/39/5039/3 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/97/4997/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/40/5040/4 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/64/4864/4 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/53/4953/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/79/5079/5 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/06/5106/4 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/30/5130/4 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/16/5116/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/23/5123/1 && git cherry-pick FETCH_HEAD
#git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/54/5054/1 && git cherry-pick FETCH_HEAD
cd $root

cd hardware/qcom/audio-caf
git fetch http://review.cyanogenmod.org/CyanogenMod/android_hardware_qcom_audio-caf refs/changes/13/30213/1 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Contacts
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Contacts refs/changes/25/5125/4 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Mms
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Mms refs/changes/59/4659/7 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Phone
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Phone refs/changes/47/4947/2 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/ROMControl
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/54/4954/2 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/80/5080/2 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/07/5107/2 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Settings
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Settings refs/changes/65/4865/1 && git cherry-pick FETCH_HEAD
cd $root

cd vendor/aokp
git fetch http://gerrit.sudoservers.com/AOKP/vendor_aokp refs/changes/18/5118/2 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/vendor_aokp refs/changes/72/4972/3 && git cherry-pick FETCH_HEAD
cd $root
