.PHONY:install
install:
	bundle install

.PHONY:migrate
migrate:
	bundle exec ridgepole -c config/database.yml -E development --apply -f db/Schemafile
