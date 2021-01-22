
# Cloud SQL Proxy Hardening
[中文版](https://github.com/Funny-Systems-OSS/CloudSQL-Proxy-Hardening/blob/master/README.zh.md)\
CloudSQL Proxy Hardening Encryptor: https://github.com/Funny-Systems-OSS/CloudSQL-Proxy-Hardening-Encryptor
+ [Problem and Solution](#Solution)
+ [Features](#Features)
+ [Requirements](#Requirements)
+ [Installation](#Installation)
+ [Usage](#Usage)
+ [Todo](#Todo)
## Problem and Solution 
![Before](https://github.com/Funny-Systems-OSS/cloudsql-proxy-hardening/blob/master/asset/01.PNG)
![After](https://github.com/Funny-Systems-OSS/cloudsql-proxy-hardening/blob/master/asset/02.PNG)
![Result](https://github.com/Funny-Systems-OSS/cloudsql-proxy-hardening/blob/master/asset/03.PNG)
## Features
+ Replace plain credential file with encrypted one which bound to instance ID.
+ Compare with original Cloud SQL Proxy
  + Software             | Google Cloud SQL Proxy  | Cloud SQL Proxy Hardening (OSS Edition) | Cloud SQL Proxy Hardening (Enterpise Edition)
    ---------------------|-------------------------|-----------------------------------------|----------------------------------------------
    Credential File      | Plaintext               | **Ciphertext**                          | **Ciphertext**
    Bind with Instance   | No                      | **Yes**                                 | **Yes**
    Support Auto-Scaling | No                      | No                                      | **Yes**
    Authentication       | Service Account         | Serivce Account & **Instance ID**       | **ENHANCED**
  + For more infomation ? Contact [oss@funny.systems](mailto:oss@funny.systems) 
## Requirements
+ Go 1.15 or higher.
## Fork from
cloudsql-proxy: https://github.com/GoogleCloudPlatform/cloudsql-proxy/tree/v1.19.0
## Installation
1. git clone https://github.com/Funny-Systems-OSS/cloudsql-proxy-hardening.git
2. cd ./cloudsql-proxy-hardening
3. go build -o ../cloud_sql_proxy_funny ./cmd/cloud_sql_proxy/
## Usage
![Overview](https://github.com/Funny-Systems-OSS/cloudsql-proxy-hardening/blob/master/asset/manuel.png)
+ ./cloud_sql_proxy_funny <-credential_file credential_file_path> [-use_plainfile]
  + -credential_file:\
    The encrypted credential file be used to retrieve Service Account credential in cloud_sql_proxy_funny.
  + -use_plainfile:\
    Setting this flag will allow you to use plainfile.
## Todo
+ Act as classic cloud_sql_proxy if not in debug mode.
