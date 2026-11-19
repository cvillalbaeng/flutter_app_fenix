# Portafolio Temático — Ikki de Fénix

Aplicación móvil desarrollada en Flutter como práctica de portafolio, inspirada en el personaje Ikki de Fénix de _Saint Seiya_. (Caballeros del Zodiaco).

## Estructura del proyecto

La aplicación se organiza en distintas carpetas dentro de "lib/" para separar las vistas, los modelos y la configuración visual:

- "lib/main.dart": punto de entrada de la aplicación y configuración de la ruta inicial ("welcome") y el tema.
- "lib/routes/app_routes.dart": definición centralizada de las rutas nombradas ("welcome", "home", "about", "techniques", "hobbies", "contact", "developer").
- "lib/themes/app_theme.dart": colores oscuros, degradados personalizados y estilos de texto aplicados en las pantallas, conforme a la temtica de la armadura del personaje.
- "lib/models/attack_model.dart": modelo de datos para representar las técnicas y recursos de combate.
- "lib/screens/": pantallas de bienvenida, menú principal, biografía ("about"), técnicas, hobbies, contacto y datos del desarrollador.
- "lib/widgets/": componentes reutilizables como el pie de página ("app_footer.dart").

## Paquetes utilizados

- "font_awesome_flutter" para los íconos de las pantallas y el menú.
- "percent_indicator" para mostrar el nivel de poder cósmico en las técnicas.
- "flutter_launcher_icons" (en "dev_dependencies") para generar los íconos de la aplicación en Android.

## Ejecución local

1. Instalar dependencias:

   bash
   flutter pub get

   Autor
   Christian Villalba — Estudiante de Programación III de Ingeniería de Sistemas. UNIMAR.
