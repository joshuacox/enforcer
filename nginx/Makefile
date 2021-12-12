default: clean build run

build:
	docker build -t joshuacox/enforcer:nginx .

run:
	docker run \
		-dit \
		--cidfile=.enforcer.cid \
		--name enforcer-nginx \
		-p 6080:80 \
		joshuacox/enforcer:nginx

nginx.conf:
	docker run --rm nginx:alpine cat /etc/nginx/nginx.conf > nginx.conf

clean:
	-@bash ./clean.sh

shootout.dat:
	ab -g shootout.dat -c 100 -n 100000 http://10.11.5.11:6080/

shootout.html:
	ab -w -c 100 -n 100000 http://10.11.5.11:6080/ > shootout.html
