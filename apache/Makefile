default: clean build run

build:
	docker build -t joshuacox/enforcer .

run:
	docker run \
		-dit \
		--cidfile=.enforcer.cid \
		--name enforcer \
		-p 7080:80 \
		joshuacox/enforcer

example-httpd.conf:
	docker run --rm httpd:alpine cat /usr/local/apache2/conf/httpd.conf > example-httpd.conf

clean:
	-@bash ./clean.sh

shootout.dat:
	ab -g shootout.dat -c 100 -n 100000 http://10.11.5.11:7080/

shootout.html:
	ab -w -c 100 -n 100000 http://10.11.5.11:7080/ > shootout.html
