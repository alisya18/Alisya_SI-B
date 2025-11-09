#!/bin/bash
touch report.txt
echo "--- Laporan File Sistem ---" > report.txt
echo "===========================" >> report.txt
echo "" >> report.txt
echo "Jumlah File di Setiap Folder : " >> report.txt
ls -R | grep ":$" | wc -l >> report.txt

echo "" >> report.txt
echo "Ukuran Total Direktori (dalam KB) : " >> report.txt
du -sh * >> report.txt

echo "" >> report.txt
echo "Jumlah Total Baris Dalam Semua File Teks : " >> report.txt
find documents -type f -name "*.txt" -exec wc -l {} + >> report.txt

echo "" >> report.txt
echo "Jumlah Total Baris Dalam Semua File Image : " >> report.txt
find images -type f -name "*.jpg" -exec wc -l {} + >> report.txt

echo "" >> report.txt
echo "Jumlah Total Baris Dalam Semua File Archives : " >> report.txt
find archives -type f -name "*.zip" -exec wc -l {} + >> report.txt

echo "" >> report.txt
echo "Jumlah Total Baris Dalam Semua File Log : " >> report.txt
find logs -type f -name "*.log" -exec wc -l {} + >> report.txt

echo "" >> report.txt
echo "Selesai Membuat Laporan.."


