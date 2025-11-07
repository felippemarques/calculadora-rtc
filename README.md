# 🇧🇷 Calculadora da Reforma Tributária do Consumo (RTC) Offline - Deploy com Coolify

Este repositório contém a configuração completa e o guia para fazer o deploy da **Calculadora Oficial da Reforma Tributária do Consumo (RTC) da Receita Federal** em um ambiente Docker, utilizando a plataforma de PaaS **Coolify**.

Esta é a versão *offline* da calculadora, ideal para ser integrada via API RESTful a ERPs e sistemas internos, garantindo autonomia e alta performance nos cálculos da nova Reforma Tributária (CBS, IBS e Imposto Seletivo).

## ✨ Funcionalidades Principais

* **Motor de Cálculo Oficial:** Utiliza o componente JAR fornecido pela Receita Federal, garantindo aderência total à legislação.
* **Deploy Automatizado:** Configuração pronta para Coolify via Docker Compose.
* **Java 21:** Imagem Docker otimizada com Java 21 (Temurin) para compatibilidade máxima.
* **Modo Offline:** Inclui o banco de dados SQLite oficial e o *profile* `offline` para operação totalmente isolada.

---

## 🚀 Guia de Deploy no Coolify

1.  **Crie o Recurso:** No Coolify, crie um **"New Application/Service"**.
2.  **Conecte o Repositório:** Escolha **"Deploy via Git Repository"** e aponte para este repositório.
3.  **Configurações de Build:** Marque a opção **"Use Docker Compose file"**.
4.  **Configurações de Porta e Domínio:**
    * **Domain:** Defina seu domínio (ex: `calculadora.seudominio.com.br`).
    * **Public Port (Porta Exposta):** Defina a porta **`8081`** (conforme definido no `docker-compose.yml`).
    * **Base Path (Opcional):** Para acessar via `calculadora.seudominio.com.br/api`, configure o **Base Path** como `/api` nas configurações de roteamento do Coolify.
5.  **Inicie o Deploy:** O Coolify fará o build, e o serviço deve entrar em estado "Running".

---

## ✅ Teste de Saúde (Health Check)

Após o deploy ser concluído com sucesso, use este endpoint para confirmar que a API está online e acessando o banco de dados:

```
# Exemplo (com Base Path /api):
https://calculadora.seudominio.com.br/api/dados-abertos/versao
```

---
## 🤝 Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou Pull Requests para melhorias na configuração.

## 📄 Licença

O código de infraestrutura (Dockerfile e docker-compose.yml) é disponibilizado sob a licença MIT.

O software da Calculadora da Reforma Tributária do Consumo é um componente oficial e de código aberto da Receita Federal do Brasil.

