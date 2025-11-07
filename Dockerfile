FROM eclipse-temurin:21-jre-jammy 

WORKDIR /app

# 1. Cria o diretório onde o DB deve residir
RUN mkdir -p /app/calculadora/db

# 2. Copia o arquivo do banco de dados para o novo subdiretório
# ATENÇÃO: O Coolify/Docker encontrará 'calculadora.db' na raiz do build
COPY calculadora.db /app/calculadora/db/calculadora.db

# 3. Copia o arquivo JAR
COPY api-regime-geral.jar app.jar

EXPOSE 8080
ENV TZ=America/Sao_Paulo

# Comando de execução. O JAR será executado na raiz do /app, e o DB estará em ./calculadora/db/
ENTRYPOINT ["java", "-jar", "app.jar", "--spring.profiles.active=offline"]