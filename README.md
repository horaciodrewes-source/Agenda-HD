# Agenda HD

Agenda personal de tareas y eventos, en una sola página web (HTML y JavaScript, sin instalar nada).

## Qué hace

**Tareas**
- Se escriben o se dictan por voz (el micrófono pasa la voz a texto).
- Cada tarea lleva fecha y prioridad opcional.
- Se ordenan por fecha, prioridad, recién agregadas o en orden alfabético.
- Se marcan como realizadas y se pueden borrar todas las realizadas juntas.
- Las vencidas se marcan en rojo.

**Eventos**
- Descripción (escrita o dictada), fecha, hora, ubicación y tipo de evento.
- Tipos: reunión, trabajo / cliente, médico / salud, cumpleaños, viaje, social / familia y otro.
- Vista en línea de tiempo (agrupada por mes) o agrupada por tipo.
- Filtros por tipo y por próximos, pasados o todos.
- La ubicación abre en Google Maps.

## Cómo usarla

- **En el celular (como la app de Golf):** abrí https://horaciodrewes-source.github.io/Agenda-HD/ y elegí "Agregar a pantalla de inicio" (Android: menú ⋮ de Chrome; iPhone: botón Compartir de Safari). Queda como una app con su ícono y funciona sin internet. Los datos se guardan en el teléfono.
- **Dentro de Claude:** https://claude.ai/artifact/2ydTsJW2suruP3Auxzo1v4. Ahí los datos se guardan en el navegador y además en tu cuenta de Claude.

## Archivos

- `agenda.html`: la app (es la misma página que se publica en Claude).
- `index.html`: la versión instalable para el celular. Se arma con `./build.sh` a partir de `agenda.html`; no editarla a mano.
- `manifest.webmanifest`, `sw.js` e íconos: lo que hace que se pueda instalar y funcione sin conexión.

## Dictado por voz

Usa el reconocimiento de voz del navegador (funciona en Chrome y Edge). Si el navegador no lo permite, la app avisa: en ese caso se puede usar el micrófono del teclado del celular.
