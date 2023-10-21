#!/bin/bash

echo "Criando os Diretorios"

mkdir /publico /adm /ven /sec

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Definindo os grupos para seus diretorios"

chown :GRP_ADM /adm
chown :GRP_VEN /ven
chown :GRP_SEC /sec

echo "Definindo as permissoes dos diretorios"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Criando os usuarios"

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
passwd -e carlos

useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
passwd -e maria

useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
passwd -e joao

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
passwd -e debora

useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
passwd -e sebastiana

useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
passwd -e roberto

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
passwd -e josefina

useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
passwd -e amanda

useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
passwd -e rogerio

echo "Configuração concluida"


