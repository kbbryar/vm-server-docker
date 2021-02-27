GIT_POKY=git://git.yoctoproject.org/poky
GIT_OPENEMBEDDED=git://git.openembedded.org/meta-openembedded
GIT_VIRTUALIZATION=git://git.yoctoproject.org/meta-virtualization
GIT_VIRTUALMACHINE=git@github.com:kbbryar/meta-virtualmachine.git
GIT_KERNEL=git@github.com:kbbryar/meta-vm-linux-kernel.git
	

LOCAL_POKY=./poky
LOCAL_OPENEMBEDDED=./layers/meta-openembedded
LOCAL_VIRTUALIZATION=./layers/meta-virtualization
LOCAL_VIRTUALMACHINE=./layers/meta-virtualmachine
LOCAL_KERNEL=./layers/meta-vm-linux-kernel

setup:
	if [ ! -d "${LOCAL_POKY}" ] ; then git clone -b yocto-3.2 ${GIT_POKY} ${LOCAL_POKY}; fi 
	if [ ! -d "${LOCAL_OPENEMBEDDED}" ] ; then git clone -b gatesgarth ${GIT_OPENEMBEDDED} ${LOCAL_OPENEMBEDDED}; fi 
	if [ ! -d "${LOCAL_VIRTUALIZATION}" ] ; then git clone -b gatesgarth ${GIT_VIRTUALIZATION} ${LOCAL_VIRTUALIZATION}; fi 
	if [ ! -d "${LOCAL_VIRTUALMACHINE}" ] ; then git clone ${GIT_VIRTUALMACHINE} ${LOCAL_VIRTUALMACHINE}; fi 
	if [ ! -d "${LOCAL_KERNEL}" ] ; then git clone ${GIT_KERNEL} ${LOCAL_KERNEL}; fi 
	#create directory for storing artifacts
	mkdir -p /yocto

clean:
	rm -Rf ${LOCAL_POKY}
