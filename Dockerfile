FROM node:12-alpine
RUN apk add --no-cache python3
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir mctools
WORKDIR /minecraft-server-backup
COPY . .
CMD ["./backup.sh"]
