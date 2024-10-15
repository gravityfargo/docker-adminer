# Docker AdminerEvo

Welcome to **Docker AdminerEvo**, a docker container for [AdminerEvo](https://github.com/adminerevo/adminerevo).

AdminerEvo, (formerly Adminer) is a full-featured database management tool written in PHP.

- **Multi-Database Support**: MySQL, PostgreSQL, SQLite, MS SQL, and more.
- **Single-File Deployment**: Just one PHP file required for full database management capabilities.
- **Lightweight and Secure**: Ideal for modern server environments with minimal resource overhead.

## Usage

   ```bash
   docker pull gravityfargo/adminerevo:4.8.1
   ```
   ```bash
   docker run --name adminerevo -d -p 8080:8080 gravityfargo/adminerevo:4.8.1
   ```
Navigate to [http://localhost:8080](http://localhost:8080)

## Deprecated Projects

[Adminer](https://github.com/vrana/adminer) by [Jakub Vrána](https://github.com/vrana).

[docker-adminer](https://github.com/TimWolla/docker-adminer) by [Tim Düsterhus](https://github.com/TimWolla).
