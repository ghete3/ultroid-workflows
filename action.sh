branch=main
git clone -b $branch https://github.com/ghete3/Ultroid /root/ghete3
cp ultroid/.env /root/ghete3/.env
cd /root/ghete3
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
