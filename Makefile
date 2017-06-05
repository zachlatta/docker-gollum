IMG=zachlatta/gollum

build:
	docker build -t $(IMG) .

push:
	docker push $(IMG)
