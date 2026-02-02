#!/usr/bin/env bash
# 遇到錯誤就停止執行
set -o errexit

# 1. 安裝套件
pip install -r requirements.txt

# 2. 收集靜態檔案 (為了讓 CSS/JS 正常顯示)
python manage.py collectstatic --no-input

# 3. 資料庫遷移 (建立資料表)
python manage.py migrate
