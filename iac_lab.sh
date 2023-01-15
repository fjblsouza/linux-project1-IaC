#!/bin/bash

echo "IaC Script - Creation of directories, users and permissions"

echo "Creating  directories"

mkdir /public
mkdir /adm
mkdir /sales
mkdir /sec

echo "Creating groups"

groupadd GRP_ADM
groupadd GRP_SALES
groupadd GRP_SEC

echo "Creating user and adding groups"

useradd carl -m -s /bin/bash --password $(openssl passwd Pass123) -G GRP_ADM
useradd mary -m -s /bin/bash --password $(openssl passwd Pass123) -G GRP_ADM
useradd john -m -s /bin/bash --password $(openssl passwd Pass123) -G GRP_ADM

useradd deborah -m -s /bin/bash --password $(openssl passwd Pass123) -G GRP_SALES
useradd sebastian -m -s /bin/bash --password $(openssl passwd Pass123) -G GRP_SALES
useradd robert -m -s /bin/bash --password $(openssl passwd Pass123) -G GRP_SALES

useradd josephine -m -s /bin/bash --password $(openssl passwd Pass123) -G GRP_SEC
useradd amanda -m -s /bin/bash --password $(openssl passwd Pass123) -G GRP_SEC
useradd roger -m -s /bin/bash --password $(openssl passwd Pass123) -G GRP_SEC

echo "Directories permissions"

chown root:GRP_ADM /adm
chown root:GRP_SALES /sales
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sales
chmod 770 /sec
chmod 777 /public

echo "End"



