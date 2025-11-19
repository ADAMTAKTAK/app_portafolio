App Portafolio: The Grid Edition

La aplicación está inspirada en el universo cinematográfico de **TRON: Legacy** y **TRON: Ares**. Utiliza una estética inmersiva y tecnológica con un tema oscuro, empleando un fondo negro puro ("The Grid") y acentos de neón brillantes que representan a las diferentes facciones del sistema, sugiero subir el volumen al ejecutar el codigo.

![compose](https://github.com/user-attachments/assets/8c33d33c-0f44-40be-bc77-b235a3f9ec62)


![TRON_Ares-172705611-large](https://github.com/user-attachments/assets/ba5c0a8e-393f-4f3a-905d-737a423ecd44)


La tipografía utilizada es de estilo **Monospace**, lo que le da una apariencia de consola de comandos o terminal digital, coherente con la identidad de un desarrollador de software.

¿Cómo se usa?

La aplicación se divide en secciones accesibles mediante una navegación fluida:

Pantalla Principal ("The Grid")
Es el núcleo de la aplicación. Aquí encontrarás una barra de navegación inferior que te permite alternar entre dos facetas del sistema:

1.  Pestaña "USER ABOUT" (Azul - Usuario):
    Representa el lado luminoso y heroico. Aquí verás:
    * Una foto de perfil circular con borde de neón azul.
    * La presentación del desarrollador ("Adam Taktak").
    * Secciones detalladas sobre "¿Quién soy?" y "Hobbies", todo bajo la paleta de color cian/azul.

3.  Pestaña "PROGRAM COMMENTS" (Naranja - Programa):
    Representa el lado del sistema y la perfección. Aquí encontrarás:
    * Una imagen representativa del programa.
    * Una lista de comentarios simulados de personajes icónicos (CLU, Rinzler, Jarvis).
    * Un campo de entrada visual, todo bajo la paleta de color naranja intenso.

Controles Multimedia:
En la esquina superior derecha de la barra superior (AppBar), encontrarás un botón de **Nota Musical**. Al tocarlo, podrás pausar o reanudar la banda sonora de fondo ("End of Line" de Daft Punk) para completar la experiencia.

Pantalla "Signature" (Ares)
En la esquina superior derecha, junto al botón de música, hay un icono de **Código (`< >`)**. Si lo tocas, te llevará a una pantalla especial oculta:

Estética Roja (Ares): Esta pantalla utiliza un neón rojo agresivo y elegante.
Tarjeta de Presentación: Muestra el nombre, rol profesional ("Flutter Developer // TRON Enthusiast") y la información de contacto directa.
Acceso a GitHub: En la parte inferior, encontrarás un botón dedicado que te redirigirá externamente a el perfil oficial del desarrollador en GitHub.


El proyecto sigue la siguiente estructura:

lib/
├── models/      # Capa de Datos (Textos estáticos y configuración)

├── screens/     # Pantallas y Vistas (About, Comments, Signature, Home)

├── themes/      # Lógica de Diseño (Paletas de colores TRON centralizadas)

├── widgets/     # Componentes de UI reutilizables (InfoSection, Footer)

└── routes/      # Gestión de navegación y rutas nombradas

🛠️ Tecnologías y Dependencias:

* Flutter & Dart: SDK ^3.5.3

* audioplayers: Gestión de audio en segundo plano.

* url_launcher: Manejo de enlaces externos.

* cupertino_icons: Iconografía nativa.
