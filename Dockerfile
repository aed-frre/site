FROM python:3 as builder

COPY . .

RUN pip install --no-cache-dir mkdocs mkdocs-material && mkdocs build
 
FROM nginx:stable-alpine

COPY --from=builder site/ /usr/share/nginx/html

