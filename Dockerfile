FROM eclipse-temurin:21-jre-jammy

WORKDIR /app

RUN mkdir -p /app/calculadora/db

COPY /calculadora/db/calculadora.db /app/calculadora/db/calculadora.db

COPY api-regime-geral.jar app.jar
COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

EXPOSE 8080
ENV TZ=America/Sao_Paulo

ENTRYPOINT ["./entrypoint.sh"]
