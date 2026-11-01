#!/bin/sh
# Arma index.html (app instalable para el celular) a partir de agenda.html (la misma página que se publica en Claude).
set -e
cd "$(dirname "$0")"
{
cat <<'HEAD'
<!doctype html>
<html lang="es"><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta name="apple-mobile-web-app-title" content="Agenda">
<meta name="theme-color" content="#ffffff">
<link rel="manifest" href="manifest.webmanifest">
<link rel="apple-touch-icon" href="icon-180.png">
<link rel="icon" href="icon-192.png">
<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}[hidden]{display:none!important}</style>
</head><body>
HEAD
sed '/claude:viewport-fit-sides/d' agenda.html
cat <<'TAIL'
<script>if("serviceWorker" in navigator)navigator.serviceWorker.register("sw.js").catch(()=>{})</script>
</body></html>
TAIL
} > index.html
