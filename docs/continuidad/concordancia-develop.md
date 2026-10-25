# Concordancia con la aplicación

## Actualización de concordancia — 25/10/2026

Origen: petición «Puedes preparar una PR corrigiendo esas inconsistencias», tras la evaluación de `Economicon_Memoria_TFM_v1.2.pdf`. Identificador del chat no disponible. La autorización cubre los capítulos, referencias y figura afectados y la publicación de una PR; no incluye merge.

Base actual de memoria: `40f594a80a0d4f803679ac2035c5992211919d88`, `main`, con versión1.3 y las figuras de PR33 ya incorporadas. Se conserva ese trabajo y los checkouts anteriores. Aplicación: `390721f92d60d29358de62e9cebf99ee028190a2`, confirmada como `develop` en GitHub el25/10; las comprobaciones del manuscrito se hacen contra su archivo Git, sin inferir implementación de otras ramas. Rama nueva `capitulo-b-d-e-f-g-h-consistencia-develop`.

Plan aplicado: corregir las cinco discrepancias del cotejo, añadir fuentes precisas, mantener resultados históricos, verificar estructura/citas y compilar el PDF con el workflow del repositorio; revisar paginación y presentar PR a `main`.

| Tema | Corrección |
|---|---|
| Coste B/G/H | Distingue media facturada por llamada de coste histórico por operación. Elimina la proyección de mil operaciones basada en mil llamadas. Dos fases por intento y reintentos no son una sola llamada. |
| Recuperación E | Distingue selección primaria, umbral, vecinos/prioridad de políticas y presupuestos de evidencia/tokens. Configuración del ejemplo separada de opciones evaluadas. |
| AWS D | Conserva Grafana/Prometheus preparados en ECS junto a CloudWatch;14 pruebas de referencia y1 de bootstrap. Nuevo esquema vectorial en `figuras/d3-aws-observabilidad.tex`, sin borrar los PNG anteriores. Aceptación offline no equivale a despliegue. |
| CI F | Diez ejecuciones técnicas al expandir matriz Python; SQL real y monitorización aislada, sin atribuir arranque integral o uso de AWS. |
| Compose B/D/F | Once servicios permanentes, incluida landing, más dos inicializadores y perfiles aparte. |
| Chat E/H | Cifras de pantalla con procedencia propia y fuentes agrupadas. Los cortes siguen abiertos en el diagnóstico; las tablas no se presentan como mediciones del cambio reciente. |

Fuentes exactas del corte:

- [Unidades de coste](https://github.com/EconomiconFinOps/tfm-economicon/blob/390721f92d60d29358de62e9cebf99ee028190a2/docs/validation/model-change-memory-figures.md).
- [Recuperación y expansión](https://github.com/EconomiconFinOps/tfm-economicon/blob/390721f92d60d29358de62e9cebf99ee028190a2/apps/backend/app/services/chat_context.py) y [almacén vectorial](https://github.com/EconomiconFinOps/tfm-economicon/blob/390721f92d60d29358de62e9cebf99ee028190a2/apps/backend/app/services/vector_store.py).
- [CI](https://github.com/EconomiconFinOps/tfm-economicon/blob/390721f92d60d29358de62e9cebf99ee028190a2/.github/workflows/ci.yml), [Compose](https://github.com/EconomiconFinOps/tfm-economicon/blob/390721f92d60d29358de62e9cebf99ee028190a2/docker-compose.yml) y [AWS monitoring](https://github.com/EconomiconFinOps/tfm-economicon/blob/390721f92d60d29358de62e9cebf99ee028190a2/infra/aws-reference/monitoring.tf).
- [Pruebas/aceptación offline AWS](https://github.com/EconomiconFinOps/tfm-economicon/blob/390721f92d60d29358de62e9cebf99ee028190a2/docs/evidence/JUP-131-pr161-reconciliation/application-acceptance.md) y [diagnóstico del chat](https://github.com/EconomiconFinOps/tfm-economicon/blob/390721f92d60d29358de62e9cebf99ee028190a2/docs/continuidad/respuestas-largas-chat.md).

Las fuentes del cuerpo mantienen enlaces de lectura sin hashes conforme a las reglas del repositorio; esta nota fija el corte reproducible. A/C/I, tablas históricas deH, VERSION y entregas publicadas se conservan. Compilación integrada no disponible por restricciones de ejecución Windows; usar CI LuaLaTeX/biber y comprobar el artefacto. Sin nuevas campañas, inferencias, cambios de producto, despliegues o mensajes a terceros.

Publicada la [PR34](https://github.com/EconomiconFinOps/memoria-economicon/pull/34) como borrador a `main`. Revisión documental independiente sin defectos materiales; corregida una cita duplicada. Verificación estructural actual:60etiquetas únicas,23claves bibliográficas,75citas con destino, cero marcadores pendientes; tablas históricasH idénticas y `git diff --check` conforme. Compilación y recuento final del PDF pendientes; no se atribuye todavía aceptación visual ni merge.

Lo que sigue conserva el antecedente del23/10; sus estados de PR13 no son un estado actual de publicación. La integración posterior de PR13 está confirmada en el historial de main.

Encargo del 23/10/2026 desde HAL, chat `01a1270c-e332-7462-9c90-706d49ade92c`: corregir los ocho puntos pendientes del segundo informe y abrir una PR en el repositorio de memoria. La autorización comprende los capítulos y referencias afectados; no incluye nuevas campañas, despliegues ni merge.

## Fuentes y base

- Base de memoria: `3f25988c364ffdf807e2f1e3910c2bcc5fc3a5f9`, tras PR12. Su árbol coincide con el candidato `7eb257e` del primer cotejo. Los hallazgos C06 (reintentos) y C09 (captura/latencia) ya estaban resueltos.
- Aplicación consultada: [`db8f69ab5e2d4a42931cd6dc7412b99e855f0148`](https://github.com/EconomiconFinOps/tfm-economicon/tree/db8f69ab5e2d4a42931cd6dc7412b99e855f0148), con PR156 integrada. Añade seis repeticiones, revisión por juez IA y dataset etiquetado; el código no cambia respecto al corte anterior `3d4e5749`.
- Evidencia reciente: [recogida](https://github.com/EconomiconFinOps/tfm-economicon/blob/db8f69ab5e2d4a42931cd6dc7412b99e855f0148/docs/evidence/JUP-133/JUP-133-infra-comparison-report.json), [juez IA](https://github.com/EconomiconFinOps/tfm-economicon/blob/db8f69ab5e2d4a42931cd6dc7412b99e855f0148/docs/evidence/JUP-133/JUP-133-agent-review-report.json) y [demo separada](https://github.com/EconomiconFinOps/tfm-economicon/blob/db8f69ab5e2d4a42931cd6dc7412b99e855f0148/docs/evidence/JUP-065-frozen-demo-20261023.md).
- Los enlaces de los capítulos se mantienen en la bibliografía. Esta nota fija el corte exacto usado para verificar su contenido.

## Correcciones

| Hallazgo | Cambio y criterio de cierre |
|---|---|
| C01 | d describe chat generativo opcional, comunicación privada, originales en MinIO, topología base y adaptadores/pipelines AWS implementados. La tabla de responsabilidades sustituye el diagrama local antiguo que omitía esos flujos; la figura AWS permanece como referencia, sin acreditar despliegue. |
| C02 | h distingue el histórico, la demo de cinco casos y las seis repeticiones posteriores; g/i remiten al mismo alcance. 171 previstas, 158 respuestas revisadas por un juez IA y 13 bloqueadas; ninguna campaña aceptada. Se explican población de latencia, reintentos, coste y falta de comparación causal. |
| C03 | b presenta 20/100 clientes y presupuesto como escenarios hipotéticos. El equilibrio comercial no prueba capacidad técnica, concurrencia ni ahorro de clientes. |
| C04 | b/d describen evaluación de presupuestos sobre costes observados; la predicción permanece como futuro. |
| C05 | b acota 0,0118 USD al benchmark histórico y separa ventanas, registro de gateway, factura y coste no medido del juez. No se inventa un acumulado global. |
| C07 | La fuente histórica del banco y el informe posterior tienen entradas distintas y rutas que contienen las evidencias; se añaden las fuentes de las nuevas campañas. |
| C08 | h conserva STR-1 como no aplicable para el instrumento; trazabilidad de citas no equivale a corrección semántica ni validación del esquema. |
| C10 | f distingue locks específicos y rangos Python, e incluye la integración con PostgreSQL/pgvector real en CI sin confundirla con AWS ni con arranque completo. |

## Publicación y ajuste de extensión

Correcciones publicadas en la [PR13](https://github.com/EconomiconFinOps/memoria-economicon/pull/13), rama capitulo-b-d-f-g-h-i-concordancia, contra main. Abierta para revisión, sin merge.

Se compactan b/d/f/h/i sin modificar tipografía ni márgenes, se retiran reservas de espacio que dejaban huecos al desplazar tablas y se omite del cuerpo la captura antigua de Grafana, conservada en figuras/ y sustituida por los cuadros con resultados y procedencia. a/c/e permanecen intactos.

## Validación y límites

El cotejo anterior verificó 81 archivos fuente. Las seis filas se contrastaron con los JSON y la suma Decimal es 0,5291594448 USD. Las 37 claves de cita están definidas; no hay referencias sin destino ni etiquetas duplicadas, y las estructuras LaTeX están equilibradas. La aritmética económica se comprobó por separado.

Las primeras compilaciones LuaLaTeX/biber en CI pasaron. Su inspección detectó exceso de extensión, por lo que se ajustó la composición indicada arriba. El resultado del último SHA, el PDF y su recuento definitivo quedan en las comprobaciones y descripción de la PR13. La vista previa local no pudo iniciar el compilador por una limitación del sandbox Windows; no se interpreta como error de fuentes.

No se reevalúan respuestas privadas ni se ejecutan producto, modelos o servicios. Los juicios se atribuyen a su fuente automatizada. Se mantienen las limitaciones históricas sin resolver del instrumento y las marcas de revisión pendientes; la corrección documental no equivale a aceptar campañas, cerrar la demo o aprobar la entrega final.

Siguiente paso: revisión de los responsables de los capítulos sobre la PR13 y resolución de las dos marcas de revisión numérica histórica que se conservan en h. Estas marcas no se cierran por la corrección de concordancia. No realizar merge sin una petición específica.
