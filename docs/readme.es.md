# Scaffold Base para NixOS

## Propósito
Plantilla mínima para proyectos NixOS. Incluye lo esencial para funcionar.

[Ingles](../README.md)

## Estructura
- `flake.nix`: Configuración básica con `nixpkgs`.
- `flake.lock`: Versión fija de Nixpkgs (25.11).
- `justfile`: Automatización de tareas (construcción, limpieza, formato).

## Uso básico
```bash
# Construir máquina virtual
just build

# Ejecutar
just run
```

## Notas
- No incluye configuraciones adicionales.
- Ideal como punto de partida.
