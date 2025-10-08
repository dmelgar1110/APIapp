# Star Wars Films App

Una aplicación en SwiftUI que consume la API de [SWAPI](https://swapi.dev/) para mostrar las películas de Star Wars con detalle de personajes, planetas y vehículos.

---

## Características

- Listado completo de películas de Star Wars.
- Vista de detalle con información: título, fecha de estreno, director, productor y recursos asociados.
- Indicador de carga y manejo de errores.
- Diseño en SwiftUI nativo.

---

## Instalación

1. Clona el repositorio:
   ```bash
   git clone <URL_DEL_REPOSITORIO>
2. Abre StarWarsFilmsApp.xcodeproj en Xcode.
3. Ejecuta en el simulador o en un dispositivo iOS.

## Estructura

- FilmsViewModel.swift – Manejo de datos y estado.
- FilmsView.swift – Vista principal con listado.
- FilmRowView.swift – Vista para cada película.
- FilmDetailView.swift – Vista de detalle.
- Film.swift – Modelo Film
- FilmResponse.swift - Modelo FilmResponse.
