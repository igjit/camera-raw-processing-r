USERID = $(shell id -u)
RAWS = chart.jpg flat.jpg

build: raw
	docker-compose run --rm -u $(USERID) r Rscript --vanilla -e 'bookdown::render_book("index.Rmd")'
	touch docs/.nojekyll

raw: $(RAWS)

%.jpg:
	wget https://github.com/moizumi99/camera_raw_processing/raw/master/$@

clean:
	rm -rf docs/ _bookdown_files/

.PHONY: build raw clean
