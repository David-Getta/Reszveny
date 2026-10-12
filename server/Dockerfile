FROM dart:stable AS build
WORKDIR /app
COPY pubspec.* ./
RUN dart pub get
COPY . .
RUN dart compile exe bin/server.dart -o /app/server

FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends libsqlite3-0 ca-certificates && rm -rf /var/lib/apt/lists/*
COPY --from=build /app/server /server
COPY --from=build /app/legal /legal
# Az adatbázis a /data mappában van: ide kell tartós tárolót csatolni
# (docker run -v whatstock-data:/data, Railway: Volume a /data útvonalon).
ENV PORT=8080 DATABASE_PATH=/data/whatstock.db LEGAL_DIR=/legal
EXPOSE 8080
CMD ["/server"]
