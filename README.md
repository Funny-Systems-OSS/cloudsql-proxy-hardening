
# Cloud SQL Proxy Hardening
[中文版](https://github.com/Funny-Systems-OSS/CloudSQL-Proxy-Hardening/blob/master/README.zh.md)\
CloudSQL Proxy Hardening Encryptor: https://github.com/Funny-Systems-OSS/CloudSQL-Proxy-Hardening-Encryptor
+ [Features](#Features)
+ [Requirements](#Requirements)
+ [Installation](#Installation)
+ [Usage](#Usage)
+ [Todo](#Todo)
## Fork from
cloudsql-proxy: https://github.com/GoogleCloudPlatform/cloudsql-proxy/tree/v1.19.0
## Features
+ Replace plaintext credential file with encrypted one which bound to instance ID.
## Requirements
+ Go 1.15 or higher.
## Installation
1. git clone https://github.com/Funny-Systems-OSS/cloudsql-proxy-hardening.git
2. cd ./cloudsql-proxy-hardening
3. go build -o ../cloud_sql_proxy_funny ./cmd/cloud_sql_proxy/
## Usage
+ ./cloud_sql_proxy_funny <-credential_file credential_file_path> [-use_plainfile]
  + -credential_file:\
    The encrypted credential file be used to retrieve Service Account credential in cloud_sql_proxy_funny.
  + -use_plainfile:\
    Setting this flag will allow you to use plainfile.
## Todo
+ Act as classic cloud_sql_proxy if not in debug mode.
