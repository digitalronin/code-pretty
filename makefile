server:
	npm start

# Don't bother with this. CircleCI will deploy from GitHub
deploy:
	git push heroku master

docker-build:
	docker build -t foo .

docker-run:
	docker run -v $$(pwd):/app -v /app/node_modules -p 3001:5000 --rm foo
