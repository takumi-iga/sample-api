DATASOURCE = src/data-source.ts

migrate:
	npm run typeorm migration:run -- -d $(DATASOURCE)

rollback:
	npm run typeorm migration:revert -- -d $(DATASOURCE)

create-migration:
	npm run typeorm migration:generate -- -d $(DATASOURCE) --pretty migrations/$(name) 

migrate-status:
	npm run typeorm migration:show  -- -d $(DATASOURCE)

up:
	docker-compose up -d

down:
	docker-compose down