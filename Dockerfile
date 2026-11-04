<<<<<<< HEAD
FROM python:3.13.2

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY application.py .
COPY cache.py .
COPY config.py .
COPY controllers.py .
COPY i18n.py .
COPY locales.csv .
COPY logger.py .
COPY routes.py .
COPY tmdb.py .
COPY utils.py .
COPY icon.png .

ENV CACHE_DIR=/app/cache
VOLUME /app/cache

=======
FROM python:3.13.2

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY application.py .
COPY cache.py .
COPY config.py .
COPY controllers.py .
COPY i18n.py .
COPY locales.csv .
COPY logger.py .
COPY routes.py .
COPY tmdb.py .
COPY utils.py .
COPY icon.png .

ENV CACHE_DIR=/app/cache
VOLUME /app/cache

>>>>>>> f57beee1e274161f2242f6b97699a5f32999f119
CMD ["python", "application.py"]