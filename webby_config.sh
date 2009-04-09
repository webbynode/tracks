mv config/site.yml.tmpl config/site.yml
mv config/database.yml.tmpl config/database.yml
mkdir log
sed /salt: "change-me"/salt: "webbynode-salt-change-me"/ config/site.yml
