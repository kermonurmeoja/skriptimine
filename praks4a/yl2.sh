#!/bin/bash
# Skript pakib kausta ./test kokku ja salvestab selle ./backup kataloogi nimega test.backup.tar.gz.

tar -czf backup/test.backup.tar.gz test/ 
echo "Kataloogi /home/user/skriptimine/praks4a/test/ backup_i nimi on test.backup.tar.gz ja ta asub /home/user/skriptimine/praks4a/backup/ kataloogis."
