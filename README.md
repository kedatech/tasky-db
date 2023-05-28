# template-sqlserver

Esta es una plantilla para manejar los scripts de una base de datos

- /scripts/tables.sql: La creación de la bd y sus tablas
- /scripts/procedures/*: Stored procedures


## Como usar

Puede que tu usuario *System Administrator* no tenga acceso a login asi que puedes...
```sql
ALTER LOGIN sa WITH PASSWORD = 'tu_nueva_contraseña';
GO
ALTER LOGIN sa ENABLE;
GO
```

## Estructuras de carpetas

```markdown
├── doc/
├── scripts/ 
│   ├── procedures/ 
└── README.md
```

- **doc/** cntiene documentación del proyecto.

- **scripts/** contiene los scripts utilizados en el proyecto.

- **scripts/procedures/** contiene scripts de procedimientos almacenados.
