# sync_cloud_storage
Sync files from local to cloud storage and cloud to local

Example:

Cloud storage
IP: 122.234.567.890

user: bill

Path `/home/<username>/shared`

and in the `shared` has multiple folder, ex: `fold1`, `fold2`,....

Local:

Username: bill

path `/Users/bill`

To sync from cloud storage to local

go to root folder of bill in local

```
cd ~
```

sync to cloud `fold1` to local

```
hs pull fold1 -ex
```

and sync local to cloud
go to root user folder
```
cd ~
```
and sync to cloud
```
hs push fold -ex

```
##Options
**Exclude folders**

in the local home folde

create file `.exclude`

```
touch .exclude
```
and add folders you want exlucde,ex:

```
.sass-cache
bower_components
```

