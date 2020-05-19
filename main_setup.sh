
#install neurodocker
#pip install --no-cache-dir https://github.com/kaczmarj/neurodocker/tarball/master --user

#upgrade neurodocker
#pip install --no-cache-dir https://github.com/kaczmarj/neurodocker/tarball/master --upgrade

# install development version
# pip install --no-cache-dir https://github.com/stebo85/neurodocker/tarball/sb_dev --upgrade
pip install --no-cache-dir https://github.com/stebo85/neurodocker/tarball/minc_install_from_deb_and_rpm --upgrade


export buildMode='singularity'  #singularity or docker_singularity
export testImageDocker='false'
export localSingularityBuild='true'
export localSingularityBuildWritable='false'
export remoteSingularityBuild='false'
export testImageSingularity='false'
export uploadToSwift='false'
export uploadToSylabs='false'
export cleanupSif='false'


if [ "$buildMode" = "singularity" ]; then
       export neurodocker_buildMode="singularity"
       echo "generating singularity recipe..."
else
       export neurodocker_buildMode="docker"
       echo "generating docker recipe..."
fi

export buildDate=`date +%Y%m%d`

export imageName=${toolName}_${toolVersion}


echo "building $imageName in mode $buildMode" 

export mountPointList=$( cat ../globalMountPointList.txt )

echo "mount points to be created inside image:"
echo $mountPointList