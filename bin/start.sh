#!/bin/bash
qemu-system-x86_64 -display gtk,gl=on -drive file=image_file,format=raw -m 4G -enable-kvm -cpu host -smp 3 -vga virtio -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::5555-:22
