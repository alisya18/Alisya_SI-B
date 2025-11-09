#!/bin/bash
echo "Masukkan kata kunci pencarian"
read keyword

echo "Mencari file berdasarkan nama.."
find . -type f -name "*$keyword*"

echo ""
echo "Mencari file berdasarkan isi.."
grep -rl "$keyword" .
