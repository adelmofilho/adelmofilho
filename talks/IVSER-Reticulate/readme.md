# Reticulate: Integrando Py e R

## IV Seminário Internacional de Estatística com R

21 a 23 de Maio - Nitéroi, Rio de Janeiro - RJ

## Conteúdo do curso

- Instação e configuração do python via pacote reticulate
- Criação de virtual environments para python
- Utilização do RStudio como IDE python via REPL
- Importação de codígos .py dentro da sessão do R
- Uso do Py e R em um mesmo pipeline de análise de dados

## Estudos de caso

- Criação de um aplicativo Shiny combinado com pacotes python
- Análise estatística da origem das músicas [UCI Machine Learning Dataset](http://archive.ics.uci.edu/ml/datasets/geographical+original+of+music)

## Acesso ao Servidor para aula

Para acessar o RStudio pré-configurado com o material do curso entre no endereço:

http://157.230.229.38:8787/

Em seguida, forneça o login e senha comunicados individualmente.


## Materiais relevantes para o curso

- Reticulate cheatsheet (disponível em: https://www.rstudio.com/resources/cheatsheets/)
  
- Manual do pacote reticulate (acesso em: https://rstudio.github.io/reticulate/)


## Sobre a instalação do python em Windows

Foi verificado problemas recorrentes (https://github.com/ContinuumIO/anaconda-issues/issues/8460) nas distribuições Windows da Anaconda. Pede-se que qualquer versão instalada em seu computador seja desinstalada e seja instalado o python 2 e python 3 via Miniconda (https://docs.conda.io/en/latest/miniconda.html).


## Sobre a instalação do python em linux

Garantir que os seguintes comandos sejam rodados previamente:

```
sudo apt-get install -y libpython-dev
sudo apt-get install -y libpython3-dev

sudo apt install python3-pip
sudo apt install python-pip

sudo apt-get install python-virtualenv
```