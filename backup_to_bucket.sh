#!bin/bash
#每日23:59備份,將mysql資料庫內容輸出並上傳gcp bucket
#至VM內crontab新增一條排程
#crontab -e
#59 23 * * * root /bin/bash ~/backup_to_bucket.sh > ~/bklog.log 2>&1

#將今天日期存入變數today
today=$(hwclock -r | cut -c 1-10)

#輸出資料庫備份檔
mysqldump -u root wp_db > ~/dbs$today.sql

#上傳至gcp bucket,bucket name "nono-db-backup",使用絕對路徑避免cron找不到gsutil
/snap/bin/gsutil cp ~/dbs$today.sql gs://nono-db-backup

#刪除VM內資料庫備份檔
rm ~/dbs$today.sql
