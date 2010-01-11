#!/bin/bash

echo 'zadejte heslo pro databazi blog na devel.jyxo.com'
/usr/lib/postgresql/8.4/bin/pg_dump -i --host devel.jyxo.com --port 5841 --username blog --password -T var_blog_id -v blog | gzip > blog.db.devel.jyxo.com.sql.gz

dropdb blog
createdb -O blog blog
gunzip -c blog.db.devel.jyxo.com.sql.gz | psql -a blog blog

rm blog.db.devel.jyxo.com.sql.gz


echo 'zadejte heslo pro databazi galerie na devel.jyxo.com'
/usr/lib/postgresql/8.4/bin/pg_dump -i --host devel.jyxo.com --port 5841 --username galerie --password -v galerie | gzip > galerie.db.devel.jyxo.com.sql.gz

dropdb galerie
createdb -O blog galerie
gunzip -c galerie.db.devel.jyxo.com.sql.gz | psql -a galerie blog

rm galerie.db.devel.jyxo.com.sql.gz
