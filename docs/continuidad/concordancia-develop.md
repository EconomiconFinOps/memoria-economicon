# Concordancia con la aplicación

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
