FROM openjdk:21-jdk-slim-buster

WORKDIR /app

COPY api-regime-gerar.jar app.jar

EXPOSE 8080

ENV TZ=America/Sao_Paulo

# Comando para rodar a aplicação JAR quando o contêiner iniciar
# A Receita Federal usa o profile 'offline' na documentação do JAR, 
# então o incluiremos aqui para garantir o carregamento do banco de dados embarcado.
ENTRYPOINT ["java", "-jar", "app.jar", "--spring.profiles.active=offline"]