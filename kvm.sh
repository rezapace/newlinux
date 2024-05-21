#!/bin/bash

# Periksa apakah skrip dijalankan sebagai root
if [ "$EUID" -ne 0 ]; then 
  echo "Please run as root"
  exit
fi

# Update sistem dan instal paket yang diperlukan
echo "Updating system and installing necessary packages..."
apt-get update
apt-get install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

# Verifikasi instalasi KVM
echo "Verifying KVM installation..."
kvm_ok=$(kvm-ok)
if [[ $kvm_ok == *"KVM acceleration can be used"* ]]; then
  echo "KVM installation verified successfully."
else
  echo "KVM acceleration cannot be used. Exiting."
  exit 1
fi

# Tambah pengguna ke grup libvirt dan kvm
echo "Adding user to libvirt and kvm groups..."
usermod -aG libvirt $SUDO_USER
usermod -aG kvm $SUDO_USER

# Mulai dan aktifkan layanan libvirt
echo "Starting and enabling libvirt service..."
systemctl enable libvirtd
systemctl start libvirtd

# Verifikasi koneksi ke libvirt daemon
echo "Verifying connection to libvirt daemon..."
virsh list --all

# Informasikan pengguna untuk logout dan login kembali
echo "Please logout and login again to apply the group changes."

# Selesai
echo "KVM installation and configuration completed successfully."
