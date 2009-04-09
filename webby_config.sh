sudo gem install RedCloth --no-ri --no-rdoc

mv config/site.yml.tmpl config/site.yml
mv config/database.yml.tmpl config/database.yml

mkdir log
chown www-data log

sed s/salt: "change-me"/salt: "webbynode-salt-change-me"/ config/site.yml
sed s/database: (.*)^/database: $WC_APP_NAME/ config/site.yml
