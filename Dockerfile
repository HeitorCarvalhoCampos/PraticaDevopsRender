# Usa uma imagem base do NGINX para servir os arquivos HTML/CSS
FROM nginx:alpine

# Remove o arquivo de configuração padrão do NGINX
RUN rm /etc/nginx/conf.d/default.conf

# Copia o arquivo de configuração do NGINX personalizado
COPY nginx.conf /etc/nginx/conf.d

# Copia os arquivos estáticos (HTML, CSS, JS, etc.) para o diretório padrão do NGINX
COPY . /usr/share/nginx/html

# Exponha a porta 80, onde o NGINX servirá o conteúdo
EXPOSE 80

# Inicia o NGINX quando o container for iniciado
CMD ["nginx", "-g", "daemon off;"]
