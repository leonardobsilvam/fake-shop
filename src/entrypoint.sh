#Arquivo shel para fazer o start do container
#!/bin/bash
#Executa a migration do banco de dados
python -m flask db upgrade
#Cria as tabelas no DB e executa a aplicacao
python -m gunicorn --bind 0.0.0.0:5000 index:app