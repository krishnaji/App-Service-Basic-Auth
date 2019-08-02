# Run Locally 
Update docker-compose.yml as below.
```yml
      - ./nginx/nginx.conf:/etc/nginx/nginx.conf
      - ./nginx/.htpasswd:/etc/nginx/.htpasswd
```

```docker-compose -f "docker-compose.yml" up -d --build```

# Deploy to App Service for Containers

1. Push code to App Service
2. Set multicontainer config file 

```bash
 az webapp config container set --resource-group myResourceGroup --name <app-name> --multicontainer-config-type compose --multicontainer-config-file docker-compose.yml 
```