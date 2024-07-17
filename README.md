# ForoAlura

ForoAlura es una aplicación de foro web construida con Spring Boot, que permite a los usuarios crear, leer, actualizar y eliminar tópicos. La aplicación también incluye autenticación de usuarios utilizando JWT (JSON Web Tokens) para asegurar los endpoints.

## Funcionalidades

1. **Autenticación de Usuarios**
   - Registro e inicio de sesión de usuarios.
   - Generación de tokens JWT para la autenticación.

2. **Gestión de Tópicos**
   - Crear nuevos tópicos.
   - Listar todos los tópicos.
   - Obtener detalles de un tópico específico.
   - Actualizar un tópico existente.
   - Eliminar un tópico.

## Endpoints Principales

### Autenticación

- **POST /auth/login**
  - Permite a los usuarios autenticarse y obtener un token JWT.

### Tópicos

- **POST /topics**
  - Crea un nuevo tópico. Requiere autenticación.
  - Ejemplo de cuerpo de solicitud:
    ```json
    {
      "title": "Título del Tópico",
      "message": "Contenido del Tópico",
      "author": "Nombre del Autor",
      "course": "Nombre del Curso"
    }
    ```

- **GET /topics**
  - Lista todos los tópicos. Requiere autenticación.

- **GET /topics/{id}**
  - Obtiene los detalles de un tópico específico por su ID. Requiere autenticación.

- **PUT /topics/{id}**
  - Actualiza un tópico existente por su ID. Requiere autenticación.
  - Ejemplo de cuerpo de solicitud:
    ```json
    {
      "title": "Título Actualizado",
      "message": "Contenido Actualizado",
      "author": "Nombre del Autor",
      "course": "Nombre del Curso"
    }
    ```

- **DELETE /topics/{id}**
  - Elimina un tópico por su ID. Requiere autenticación.
