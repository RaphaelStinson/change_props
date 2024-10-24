#!/data/data/com.termux/files/usr/bin/bash

# Test whether the SU command is available and whether the user has root permission.
if su -c "true" > /dev/null 2>&1; then
    # Executes Resetprop commands with superuser permission
    su -c "resetprop -n ro.boot.vbmeta.avb_version 4.0"
    su -c "resetprop -n ro.boot.vbmeta.device_state locked"
    # su -c "resetprop -n ro.boot.vbmeta.digest 8760918b0695b2231342d324ecfdc00097a7a1ba328d81358aae9e8b0ef2f6fd" # Comando comentado
    su -c "resetprop -n ro.boot.vbmeta.hash_alg sha256"
    su -c "resetprop -n ro.boot.vbmeta.invalidate_on_error yes"
    su -c "resetprop -n ro.boot.vbmeta.size 17472"
    su -c "resetprop -n ro.boot.vbmeta.device_state locked"
    su -c "resetprop -n ro.boot.verifiedbootstate green"
    su -c "resetprop -n ro.boot.flash.locked 1"
    su -c "resetprop -n ro.boot.veritymode enforcing"
    su -c "resetprop -n ro.boot.warranty_bit 0"
    su -c "resetprop -n ro.warranty_bit 0"
    su -c "resetprop -n ro.debuggable 0"
    su -c "resetprop -n ro.force.debuggable 0"
    su -c "resetprop -n ro.secure 1"
    su -c "resetprop -n ro.adb.secure 1"
    su -c "resetprop -n ro.build.type user"
    su -c "resetprop -n ro.build.tags release-keys"
    su -c "resetprop -n ro.vendor.boot.warranty_bit 0"
    su -c "resetprop -n ro.vendor.warranty_bit 0"
    su -c "resetprop -n vendor.boot.vbmeta.device_state locked"
    su -c "resetprop -n ro.secureboot.lockstate locked"
    su -c "resetprop -n vendor.boot.verifiedbootstate green"
    su -c "resetprop -n sys.oem_unlock_allowed 0"
    su -c "resetprop -n ro.bootmode unknown"
    su -c "resetprop -n ro.boot.bootmode unknown"
    su -c "resetprop -n vendor.boot.bootmode unknown"

    # Displays a message of success
    echo "All Resetprop commands were successfully executed."
else
    # Displays failure message when trying to gain root access
    echo "Access denied. Unable to execute resetprop commands."
fi