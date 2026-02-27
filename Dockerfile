FROM python:3.11-slim

WORKDIR /app

COPY pubmed-mcp/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt aiohttp

COPY pubmed-mcp/ .

ENV MCP_TRANSPORT=http
ENV PORT=8080

EXPOSE 8080

CMD ["python", "pubmed_mcp.py", "--http"]
