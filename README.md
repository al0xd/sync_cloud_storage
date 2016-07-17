# sync_cloud_storage
Sync files from local to cloud storage and cloud to local

**Download and Setup**


Clone this repo to root user folder

```
cd ~
git clone git@github.com:hungvandinh/sync_cloud_storage.git

```
Add bash script to your `$PATH`

Open and Edit `.zsrc` or `.bash_profile`
```
export PATH=$PATH:/Users/<username>/sync_cloud_storage
```

**Config and Sync**

Example:

Cloud storage
IP: `122.234.567.890`

user: `bill`

Path `/home/<username>/shared/works`

and in the `shared` has multiple folder, ex: `fold1`, `fold2`,....

Local:

Username: `bill`

path `/Users/bill`

##Setup

Open `hs` file and edit:

```
CIP="122.234.567.890"
CUSER="bill"
```


To sync from cloud storage to local

go to root folder of `bill` in local

```
cd ~
```

sync to cloud `fold1` to local

```
hs pull fold1
```

and sync local to cloud

go to root user folder

```
cd ~
```
and sync to cloud
```
hs push fold

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
After that, every run sync you can add `-ex` flag:

```
hs pull fold -ex
# or
hs push fold -ex
```


