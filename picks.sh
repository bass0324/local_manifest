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
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/97/4997/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/64/4864/4 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/53/4953/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/54/5054/1 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Mms
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Mms refs/changes/59/4659/7 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Phone
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Phone refs/changes/47/4947/2 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/ROMControl
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/54/4954/2 && git cherry-pick FETCH_HEAD
cd $root

cd packages/apps/Settings
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Settings refs/changes/65/4865/1 && git cherry-pick FETCH_HEAD
cd $root

cd packages/inputmethods/LatinIME
git fetch http://gerrit.sudoservers.com/AOKP/packages_input_LatinIME refs/changes/92/4992/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_input_LatinIME refs/changes/93/4993/1 && git cherry-pick FETCH_HEAD
cd $root
