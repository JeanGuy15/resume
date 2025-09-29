.PHONY: doc clean pdf

doc: pdf

clean:
	rm resume.pdf

pdf resume.pdf: resume.adoc
	docker run --rm -u $(shell id -u):$(shell id -g) -v $(shell pwd):"/usr/app/" ggrossetie/asciidoctor-web-pdf:latest resume.adoc --template-require ./template.js

