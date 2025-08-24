FROM oven/bun:latest AS build-stage
WORKDIR /app
COPY . .
RUN bun install
RUN bun run build

EXPOSE 80
ENV PORT=80
ENV HOSTNAME="0.0.0.0"

CMD ["bun", "--bun", ".next/standalone/server.js"]