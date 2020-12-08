
# Cloud SQL Proxy Hardening

+ [功能](#功能)
+ [需求](#需求)
+ [安裝](#安裝)
+ [使用](#使用)
## Fork from
cloudsql-proxy: https://github.com/GoogleCloudPlatform/cloudsql-proxy/tree/v1.19.0
## 功能
+ 將明文金鑰以綁定 GCE 執行個體 ID 的加密檔案取代。
## 需求
+ Go 1.15 以上。
## 安裝
1. git clone https://github.com/Funny-Systems-OSS/cloudsql-proxy-hardening.git
2. cd ./cloudsql-proxy-hardening
3. go build -o ../cloud_sql_proxy_funny ./cmd/cloud_sql_proxy/
## 使用
+ ./cloud_sql_proxy_funny <-credential_file 金鑰路徑> [-use_plainfile]
  + -credential_file:\
    用於在 cloud_sql_proxy_funny 中認證服務帳號的金鑰。
  + -use_plainfile:\
    可選參數。設置時可使用明文金鑰檔。