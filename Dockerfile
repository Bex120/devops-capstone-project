FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PORT=8080

WORKDIR /app

RUN groupadd --system accounts && useradd --system --gid accounts accounts

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY --chown=accounts:accounts . .

USER accounts
EXPOSE 8080

CMD ["gunicorn", "--bind=0.0.0.0:8080", "service:app"]
