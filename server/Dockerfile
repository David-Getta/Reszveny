FROM dart:stable AS build
WORKDIR /app
COPY pubspec.* ./
RUN dart pub get
COPY . .
RUN dart compile exe bin/server.dart -o /app/server

FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends libsqlite3-0 ca-certificates && rm -rf /var/lib/apt/lists/*
COPY --from=build /app/server /server
ENV PORT=8080 DATABASE_PATH=/data/stocklens.db
VOLUME /data
EXPOSE 8080
CMD ["/server"]
