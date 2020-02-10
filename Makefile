
.PHONY: all
all: build

.PHONY: build
build:
	docker build --tag ditrit/gandalf-min:latest .

.PHONY: push
push: build
	docker push ditrit/gandalf-min:latest
