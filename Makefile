USERID = $(shell id -u)

build:
	docker-compose run --rm -u $(USERID) r Rscript --vanilla -e 'bookdown::render_book("index.Rmd")'
	touch docs/.nojekyll

clean:
	rm -rf docs/ _bookdown_files/

.PHONY: build clean
