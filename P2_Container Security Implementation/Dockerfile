**Use a minimal base image**
FROM node:18-alpine

**Create a non-root user and group**
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

**Set permissions**
WORKDIR /app
COPY . .

**Ensure ownership for the non-root user** (Critical)
RUN chown -R appuser:appgroup /app

**Switch to non-root user**
USER appuser

**Start the application**
CMD ["node", "testserver.js"]
