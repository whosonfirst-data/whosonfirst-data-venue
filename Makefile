count:
	find ./data -name '*.geojson' -print | wc -l

data:	data-json data-markdown

data-json:
	bin/mk-data-json.py -c /usr/local/data/whosonfirst-data/meta/wof-country-latest.csv -r /usr/local/data/ > data.json

data-markdown:
	bin/mk-data-markdown.py -s data.json -o DATA.md 
