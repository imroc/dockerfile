SHELL := /bin/bash

.PHONY: push
push:
	git remote | xargs -L1 git push --all