#Fora do container
docker-compose exec db_cobras bash
#Dentro do container:
mysql -u cobras -pSENHA < /share/bessapontes23.sql
