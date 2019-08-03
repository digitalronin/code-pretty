server:
	npm start

deploy:
	git push heroku master

docker-build:
	docker build -t foo .

docker-run:
	docker run -v $$(pwd):/app -v /app/node_modules -p 3001:3000 --rm foo
