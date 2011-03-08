#!/system/bin/sh
if ! applypatch -c MTD:recovery:2048:9d32202c95b7b275abc344bf113ec7531d8514b0; then
  log -t recovery "Installing new recovery image"
  applypatch MTD:boot:2562048:8a896225577d3dc5453de4b4aba0628d816013b5 MTD:recovery 66c02bcc7f305f102e385ec56064094ea2534658 3665920 8a896225577d3dc5453de4b4aba0628d816013b5:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
