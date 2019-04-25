LOGIN=$(whoami)
MEDIUM_PATH="/sgoinfre/goinfre/Perso/"$LOGIN"/"$LOGIN"_vm.vdi"
VM=$LOGIN"_vm"
DEBIAN_ISO="/sgoinfre/goinfre/Perso/$LOGIN/debian.iso"

# Deleting previous vm and medium
####################################

VBoxManage unregistervm $VM --delete

if [ -e $MEDIUM_PATH ]
then
    vboxmanage closemedium disk $(vboxmanage list hdds | grep "^UUID" | awk '{print $2}') --delete
fi

# Create VM
##############

VBoxManage createvm --name $VM \
            --ostype Debian_64 \
            --register

# Hard Disk
##############

VBoxManage createhd --filename $MEDIUM_PATH \
            --size 8000 \
            --format VDI \
            --variant Fixed

# Add SATA controler with disk
#################################

VBoxManage storagectl $VM --name "SATA Controller" \
            --add sata \
            --controller IntelAHCI \
            --portcount 1

VBoxManage storageattach $VM \
            --storagectl "SATA Controller" \
            --port 0 \
            --device 0 \
            --type hdd \
            --medium $MEDIUM_PATH

# Add IDE Controler
######################

VBoxManage storagectl $VM \
            --name "IDE Controller" \
            --add ide \
            --controller PIIX4

VBoxManage storageattach $VM \
            --storagectl "IDE Controller" \
            --port 0 \
            --device 0 \
            --type dvddrive \
            --medium $DEBIAN_ISO

# Misc Setup
###############

VBoxManage modifyvm $VM --ioapic on

VBoxManage modifyvm $VM --boot1 dvd \
            --boot2 disk \
            --boot3 none \
            --boot4 none

VBoxManage modifyvm $VM --memory 2048

# Setting bridge adapter
###########################

VBoxManage modifyvm fbabin_vm --nic1 bridged --bridgeadapter1 en0
