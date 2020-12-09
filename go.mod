module github.com/GoogleCloudPlatform/cloudsql-proxy

go 1.13

require (
	bazil.org/fuse v0.0.0-20200524192727-fb710f7dfd05
	cloud.google.com/go v0.73.0
	github.com/Funny-Systems-OSS/CloudSQL-Proxy-Hardening-Common v0.0.0-20201209081344-189bc3523013 // indirect
	github.com/Funny-Systems-OSS/funny v0.0.0-20201208034517-4851bb24c83d
	github.com/denisenkom/go-mssqldb v0.9.0
	github.com/go-sql-driver/mysql v1.5.0
	github.com/lib/pq v1.9.0
	golang.org/x/crypto v0.0.0-20201203163018-be400aefbc4c // indirect
	golang.org/x/net v0.0.0-20201207224615-747e23833adb
	golang.org/x/oauth2 v0.0.0-20201207163604-931764155e3f
	golang.org/x/sys v0.0.0-20201207223542-d4d67f95c62d // indirect
	google.golang.org/api v0.36.0
	google.golang.org/genproto v0.0.0-20201207150747-9ee31aac76e7 // indirect
	google.golang.org/grpc v1.34.0 // indirect
)

replace bazil.org/fuse => bazil.org/fuse v0.0.0-20180421153158-65cc252bf669 // pin to latest version that supports macOS. see https://github.com/bazil/fuse/issues/224
