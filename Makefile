greeting:
	echo 'Hello world'


math:
	expr 2 + 2

all: directories downloads freshdata

directories:
	-mkdir tmp
	-mkdir data
	
downloads:
	curl "https://www.imf.org/external/datamapper/PCPIPCH@WEO/WEOWORLD?year=2023" -o tmp/inflation.json
	curl "https://www.imf.org/external/datamapper/api/v1/countries" -o tmp/countries.json

freshdata:
	node imf_to_csv.js