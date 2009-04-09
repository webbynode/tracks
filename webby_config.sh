sudo gem install RedCloth --no-ri --no-rdoc

cp config/site.yml.tmpl config/site.yml
cp config/database.yml.tmpl config/database.yml

mkdir log
chown www-data log

sed -i 's/salt: "change-me"/salt: "webbynode-salt-change-me"/' config/site.yml
sed -i 's/database: .*/database: $WC_APP_NAME/' config/database.yml
