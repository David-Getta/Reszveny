FROM dart:stable AS build
WORKDIR /app
COPY pubspec.* ./
RUN dart pub get
COPY . .
# `dart build cli`: a sqlite3 csomag build hookkal hozza a natív könyvtárat, ezt a
# `dart compile exe` nem támogatja. Eredmény: out/bundle/bin/server + bundle/lib/libsqlite3.so.
RUN dart build cli -o /app/out

FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*
COPY --from=build /app/out/bundle /app
COPY --from=build /app/legal /legal
RUN mkdir -p /data
# Az adatbázis a /data mappában van: ide kell tartós tárolót csatolni
# (docker run -v whatstock-data:/data, Railway: Volume a /data útvonalon).
ENV PORT=8080 DATABASE_PATH=/data/whatstock.db LEGAL_DIR=/legal
EXPOSE 8080
CMD ["/app/bin/server"]
