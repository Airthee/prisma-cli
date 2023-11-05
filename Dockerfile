FROM node:lts-alpine AS builder

# Build CLI
WORKDIR /prisma
RUN apk add git && npm i -g pnpm
RUN git clone --depth 1 https://github.com/prisma/prisma.git .
RUN pnpm i && pnpm build

# RUN builded cli
FROM node:lts-alpine
COPY --from=builder /prisma .
ENTRYPOINT ["node", "/packages/cli/build/index.js"]