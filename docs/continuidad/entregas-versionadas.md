# Recuperación de entregas versionadas

Verificado el 25/10/2026. Origen: ausencia de dos PDF en `entregas/` tras las PR #34 y #35.

## Diagnóstico

Ambas PR conservaron VERSION 1.3. Las CI de main 40214118519 y 40215197771 terminaron con éxito, pero el workflow no sobrescribe una entrega existente: seleccionó de nuevo v1.3 y omitió su publicación. La compilación verde no demuestra la creación de otro archivo versionado.

## Corrección

Base de memoria `93bc98e1d313c0cc9212cc4ddcc9590548f23fdf`; rama `capitulo-f-recuperar-entregas`. Se recuperan los dos PDF ya compilados y revisados, sin modificar sus bytes. VERSION pasa a 1.5. No cambian capítulos, bibliografía, plantilla, imágenes o workflow; las entregas v1.0 a v1.3 se conservan.

| Entrega | Fuente y comprobación |
|---|---|
| `entregas/Economicon_Memoria_TFM_v1.4.pdf` | PR #34, HEAD `19fb0d7`; artefacto de [CI 40212489716](https://github.com/EconomiconFinOps/memoria-economicon/actions/runs/40212489716), 21 páginas físicas. Mismo árbol Git `2adaf7d1fbef3e9b56a2162ff94404b7a50d713b` que el merge `1804217f`. SHA256 `f37f64b25be99111bed2cd38e1a16cb32f7956e9d2a03e6b2c24b6f93a6b97ac`. |
| `entregas/Economicon_Memoria_TFM_v1.5.pdf` | PR #35, HEAD `f7ab711`; artefacto de [CI 40214479695](https://github.com/EconomiconFinOps/memoria-economicon/actions/runs/40214479695), 22 páginas físicas. Mismo árbol Git `cc87d994f59bda104df9f3da58155bd097fc38d8` que el merge `93bc98e1`. SHA256 `b949c58e53c811292ed71e3ea58439e6368ddae7ca47ae1aba2b11a89f1c6df7`. |

La v1.4 conserva el estado anterior al párrafo de F.6 sobre el repositorio de memoria; la v1.5 lo incluye. Los nombres versionan las entregas, no alteran sus contenidos históricos. Identidad de bytes, número de páginas y presencia o ausencia del párrafo comprobados antes de publicar la rama.

El guardado automático de main seguirá encontrando v1.5 ya existente, ahora con el PDF correcto. Para la próxima entrega se debe incrementar VERSION en la misma PR que cambie el documento, como indica README. No se cambia la política del workflow por esta recuperación. Compilación del candidato y revisión de la PR pendientes; no se declara un merge ni la aparición en main antes de comprobarlos.
