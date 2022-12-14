# Utiliza a imagem rasa oficial como base
FROM rasa/rasa:3.2.4-full

# Utiliza o root user para instalar as dependências
USER root
# Instala as dependências
RUN python -m spacy download pt_core_news_lg

WORKDIR /app

COPY ./bot/ /app

# Seguindo as boas práticas não executo o código com user root
#USER 1001