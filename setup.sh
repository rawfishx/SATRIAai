#!/bin/bash

# Pastikan folder bin ada

# Pindah file satria ke ~/bin
cp satria ../usr/bin/satria

# Kasih izin eksekusi
chmod +x ../usr/bin/satria

# Tambahkan ke PATH di .bashrc (kalau belum ada)
if ! grep -q 'export PATH="$HOME/bin:$PATH"' ~/.bashrc; then
    echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
fi

# Refresh shell
source ~/.bashrc

echo "Selesai! Sekarang ketik 'satria' di terminal untuk menjalankan."
