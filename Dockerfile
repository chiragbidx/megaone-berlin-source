FROM node:20-alpine

# install git (needed for polling repo)
RUN apk add --no-cache git

WORKDIR /app

# copy only what is needed for runtime (no build step)
COPY . .

EXPOSE 8080

CMD ["node", "scripts/static-supervisor.js"]
