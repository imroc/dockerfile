SHELL := /bin/bash

.PHONY: all
all: commit push

.PHONY: commit
commit:
	git add .
	git commit -m update

.PHONY: push
push:
	git remote | xargs -L1 git push --all