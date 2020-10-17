# Web Server Boilerplate
Set up quickly a server with backend, frontend and a proxy server:
- Proxy: [Nginx](https://docs.nginx.com/nginx/admin-guide/web-server/web-server/)
- Backend: [Fastapi](https://fastapi.tiangolo.com/tutorial/)
- Frontend: [Vuejs](https://vuejs.org/v2/guide/#Getting-Started)

## Development environment
Start server:
```
make start-dev
```

Then, visit the site at:
- Frontend: http://localhost
- Backend: http://localhost/api/
- [Locally] Automatic Interactive Docs (Swagger UI): https://localhost:8081/docs

## Production environment
Start server:
```
make start-prod
```
