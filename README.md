# Agenda HD

Agenda personal de tareas y eventos, en una sola página web (HTML y JavaScript, sin instalar nada).

## Qué hace

**Notas rápidas** (primera pantalla)
- Se escriben o se dictan, sin fecha ni prioridad. Cada una guarda el día en que se anotó.
- Lista en letra chica, la más nueva arriba, con buscador y notas fijadas arriba.
- Se tachan y pasan a Terminadas. Una nota se puede pasar a tarea o a evento.

**Tareas** (con fecha o urgentes sin fecha)
- Listados de urgentes, con fecha programada y realizadas, cada uno con su cantidad.
- Las vencidas se marcan en rojo.

**Eventos**
- Descripción (escrita o dictada), fecha, hora, ubicación y tipo de evento.
- Tipos: reunión, trabajo / cliente, médico / salud, cumpleaños, viaje, social / familia, discusión (con personas involucradas) y otro.
- Vista en línea de tiempo (agrupada por mes) o agrupada por tipo, con filtros por tipo y por próximos, pasados o todos.
- La ubicación abre en Google Maps.

## Cómo usarla

- **En el celular (como la app de Golf):** abrí https://horaciodrewes-source.github.io/Agenda-HD/ y elegí "Agregar a pantalla de inicio" (Android: menú ⋮ de Chrome; iPhone: botón Compartir de Safari). Queda como una app con su ícono y funciona sin internet. Los datos se guardan en el teléfono.
- **Dentro de Claude:** https://claude.ai/artifact/2ydTsJW2suruP3Auxzo1v4. Ahí los datos se guardan en el navegador y además en tu cuenta de Claude.

## Celular y PC con los mismos datos

El botón de las flechas (arriba) abre "Celular y PC". Ahí se cargan tres datos, iguales en cada aparato:

- **Repositorio de datos:** un repositorio **privado** aparte, por ejemplo `horaciodrewes-source/Agenda-HD-datos`.
- **Permiso de GitHub:** un token *fine-grained* con acceso solo a ese repositorio y permiso **Contents: Read and write**.
- **Clave:** la inventa el usuario. Todo se cifra en el aparato (AES-GCM, con la clave pasada por PBKDF2) antes de subirse, así que en GitHub queda un solo archivo, `agenda.cifrada.json`, que sin la clave no se puede leer.

El permiso y la clave quedan guardados solo en cada aparato y nunca se suben a ningún repositorio. Los cambios se sincronizan solos al guardar, al volver a abrir la app y cada dos minutos.

### Entrar solo con la clave

Desde un aparato ya conectado, "Generar código de acceso" crea un código con el repositorio y el permiso cifrados con la clave (PBKDF2 de 600.000 vueltas + AES-GCM). Ese código se publica como `acceso.json` junto a la app. En un aparato nuevo, la app lo encuentra y pide solo la clave para destrabarlo.

## Archivos

- `agenda.html`: la app (es la misma página que se publica en Claude).
- `index.html`: la versión instalable para el celular. Se arma con `./build.sh` a partir de `agenda.html`; no editarla a mano.
- `manifest.webmanifest`, `sw.js` e íconos: lo que hace que se pueda instalar y funcione sin conexión.

## Dictado por voz

Usa el reconocimiento de voz del navegador (funciona en Chrome y Edge). Si el navegador no lo permite, la app avisa: en ese caso se puede usar el micrófono del teclado del celular.
