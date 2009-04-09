mv config/site.yml.tmpl config/site.yml
mkdir log
sed /salt: "change-me"/salt: "webbynode-salt-change-me"/ config/site.yml
