# Portafolio

Portafolio personal construido con Ruby on Rails, Tailwind CSS y React. La página principal concentra la presentación, una selección de proyectos, habilidades y contacto.

## Requisitos

- Ruby y Bundler (consulta `.ruby-version` si existe)
- PostgreSQL
- Node.js y Yarn

## Preparar el entorno

```sh
bin/setup
yarn install
bin/rails db:prepare
```

## Desarrollo

```sh
bin/dev
```

Esto inicia Rails y compila CSS y JavaScript en modo de observación. La app estará disponible en http://localhost:3000.

Para compilar los assets manualmente:

```sh
yarn build
yarn build:css
```

## Personalizar el portafolio

- Edita el nombre, la presentación, habilidades y enlaces en `app/views/pages/home.html.erb`.
- Actualiza los proyectos de ejemplo y su tecnología en `app/controllers/pages_controller.rb`.
- Ajusta colores, tipografía y diseño adaptable en `app/assets/stylesheets/application.tailwind.css`.
- Actualiza los enlaces de GitHub y LinkedIn antes de publicar.

Los tres proyectos iniciales son contenido de muestra. Sustitúyelos por proyectos reales y reemplaza cualquier enlace `#`.

## Despliegue

La configuración de despliegue usa Kamal (`config/deploy.yml`). Configura los secretos, la imagen y el acceso a PostgreSQL para el entorno destino antes de desplegar. No publiques `config/master.key`; proporciona la clave mediante el mecanismo de secretos del entorno.

### Netlify

Netlify publica una versión estática de la portada. `netlify.toml` usa `script/netlify-build` para compilar los assets y renderizar `/` durante el build; el resultado queda en `dist/`. Conecta este repositorio a Netlify y usa la rama `main`; Netlify leerá la configuración del repositorio y reconstruirá el sitio después de cada push.

La versión estática incluye el portafolio, imágenes, video, enlaces y modo oscuro. No ejecuta Rails en producción, por lo que las rutas dinámicas como inicio de sesión de Devise no están disponibles en Netlify.
