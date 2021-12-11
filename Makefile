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
