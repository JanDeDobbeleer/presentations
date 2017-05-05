.PHONY: pdf

ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

pdf:
	docker run --rm -v ${ROOT_DIR}:/slides astefanutti/decktape index.html slides.pdf