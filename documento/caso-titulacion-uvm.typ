// Documento para estudiantes de licenciaturas L6 de la UVM, campus Querétaro Juriquilla.
// Compilar: typst compile caso-titulacion-uvm.typ

#let tinta = black
#let gris = luma(95)
#let encabezado = luma(225)

#let B = "https://uvm.mx/storage/app/uploads/public/"
#let url = (
  ene2022: B + "673/672/398/6736723989a67699683567.pdf",
  jul2022: B + "673/672/836/673672836a610127085009.pdf",
  jun2023: B + "673/672/b5b/673672b5bd99b158142806.pdf",
  dic2023: B + "673/672/f48/673672f482125336300850.pdf",
  nov2024: B + "687/fcd/9bd/687fcd9bdf0ab340254092.pdf",
  jul2025: B + "6a6/d13/426/6a6d134260fd8169377395.pdf",
  jul2026: B + "6a6/d13/eb9/6a6d13eb93573153046456.pdf",
  estatutos: "https://uvm.mx/la-uvm/nuestros-estatutos",
)
// enlace que abre el PDF oficial directo en la página citada
#let pdf(v, pag, cuerpo) = link(url.at(v) + "#page=" + str(pag), cuerpo)
#let fuente(v, pag) = [Fuente: #link(url.at(v) + "#page=" + str(pag))[#url.at(v)], página #pag.]

#let recuadro(titulo: none, cuerpo) = pad(x: 1.2em)[
  #if titulo != none [#text(weight: "bold")[#titulo] \ ]
  #cuerpo
]

#set document(
  title: "Del testimonio Satisfactorio al Sobresaliente: cambio en la titulación por EGEL en la UVM",
  author: "Estudiantes de licenciaturas L6, UVM campus Querétaro Juriquilla",
)
#set text(font: "Arial", size: 12pt, lang: "es", region: "mx")
#set par(justify: true, leading: 0.75em, spacing: 1.15em)
#set page(
  paper: "us-letter",
  margin: (x: 2.5cm, top: 2.8cm, bottom: 2.5cm),
  header: context {
    if counter(page).get().first() > 1 {
      set text(size: 9pt, fill: gris)
      [Cambio en la titulación por EGEL en los programas L6 #h(1fr) UVM, campus Querétaro Juriquilla]
      v(-6pt)
      line(length: 100%, stroke: 0.5pt + luma(180))
    }
  },
  footer: context {
    if counter(page).get().first() > 1 {
      set text(size: 9pt, fill: gris)
      [Documento informativo y de petición #h(1fr) Página #counter(page).display() de #counter(page).final().first()]
    }
  },
)
#set heading(numbering: "1.")
#show heading.where(level: 1): it => {
  v(1.4em)
  block(below: 0.9em)[
    #set text(size: 15pt, weight: "bold", fill: tinta)
    #if it.numbering != none [#counter(heading).display(it.numbering) #h(0.4em)]
    #it.body
  ]
}
#show heading.where(level: 2): it => block(above: 1.2em, below: 0.7em)[
  #set text(size: 12.5pt, weight: "bold", fill: tinta)
  #if it.numbering != none [#counter(heading).display(it.numbering) #h(0.3em)]
  #it.body
]
#show link: it => underline(stroke: 0.4pt, offset: 2pt, it)
#set table(stroke: 0.5pt + luma(160), inset: 7pt)
#show table.cell.where(y: 0): set text(weight: "bold")
#show figure.caption: set text(size: 10pt)
#show figure: set block(breakable: false)
#set figure(gap: 0.8em)
#set list(indent: 0.6em)
#set enum(indent: 0.6em)

// ================================================================= portada
#page(margin: (x: 3cm, y: 3cm))[
  #set align(center)
  #set par(justify: false)
  #text(size: 12pt)[Universidad del Valle de México \ Campus Querétaro Juriquilla]
  #v(4.5cm)
  #text(size: 22pt, weight: "bold")[Del testimonio Satisfactorio \ al Sobresaliente]
  #v(0.6cm)
  #text(size: 14pt)[Cambio en el requisito del EGEL para la titulación \ en las licenciaturas L6]
  #v(1.2cm)
  #text(size: 12pt, style: "italic")[Documento informativo y de petición]
  #v(1fr)
  #text(size: 12pt)[Dirigido a estudiantes de las licenciaturas en modalidad L6 \ (duración semestral de veinte semanas, modalidad mixta) \ que ingresaron antes de julio de 2025]
  #v(1.5cm)
  #text(size: 12pt)[Santiago de Querétaro, Qro., 29 de septiembre de 2026]
  #v(1.2cm)
  #set align(left)
  #set par(justify: true)
  #text(size: 9pt, fill: luma(80))[Documento elaborado por estudiantes para estudiantes. No constituye asesoría legal. La información sobre los reglamentos proviene de las versiones oficiales publicadas por la UVM en uvm.mx/la-uvm/nuestros-estatutos, descargadas y respaldadas el 29 de septiembre de 2026.]
]

// ================================================================= índice
#page[
  #v(0.5cm)
  #text(size: 18pt, weight: "bold", fill: tinta)[Índice]
  #v(0.6cm)
  #set text(size: 11.5pt)
  #show outline.entry.where(level: 1): set block(above: 1.1em)
  #outline(title: none, depth: 2, indent: 1.5em)
]

// ================================================================= cuerpo
= Resumen

#recuadro(titulo: [En pocas palabras])[
  + *Lo que se nos informó:* el EGEL forma parte de la calificación de la asignatura terminal y vale el 40%. Con testimonio *Satisfactorio*, o incluso sin testimonio a partir de 900 puntos, se podía acreditar, según las calificaciones de los demás parciales.
  + *Lo que ahora se nos exige:* para titularnos por EGEL, testimonio *Sobresaliente* (1150 puntos o más). El Satisfactorio "ya no aplica".
  + *Cuándo cambió:* el requisito aparece por primera vez en la versión de *julio de 2025* del Reglamento de Titulación (Anexo L, artículo 44), no "desde 2022" como se nos dijo.
  + *Cómo se comunicó:* solo en la página web, sin aviso directo, y a unas semanas del examen. Ni siquiera el personal directivo y docente tenía claridad sobre el cambio.
]

Este documento reúne la evidencia de ese cambio, explica por qué consideramos que afecta a quienes cursamos licenciaturas L6 e ingresamos antes de julio de 2025, y propone qué hacer. Nuestra inquietud no es que existan requisitos, sino que *el requisito del EGEL se elevó de Satisfactorio a Sobresaliente a la mitad de nuestra carrera, sin una notificación clara y sin un régimen de transición.*

El promedio general mínimo de 8.0 que también menciona el reglamento es un requisito aparte. Este documento se centra en el nivel exigido en el EGEL.

= El EGEL en la UVM: cómo funciona

En todas las licenciaturas de la UVM, el EGEL se vincula a una *asignatura terminal* que se cursa en el último periodo (por ejemplo, el Taller de Fortalecimiento al Egreso). Así lo establecen el Reglamento General de Estudiantes, #pdf("jul2022", 58)[artículo 171], y el Anexo H, Política de Operación y Evaluación del EGEL, #pdf("jul2022", 171)[artículo 11].

- Los parciales formativos valen el *60%* de la calificación de la asignatura.
- El resultado del EGEL vale el *40%*, según la tabla del artículo 11.
- Con menos de *900 puntos* no se puede acreditar la asignatura.

#figure(
  image("img/c-art171-jul2022.png", width: 90%),
  caption: [Reglamento General, artículo 171, fracciones I a III, versión de julio de 2022. En rojo: el 60% de los parciales, el 40% del EGEL y el mínimo de 900 puntos. \ #fuente("jul2022", 58)],
)

El Reglamento de Titulación (Anexo L, #pdf("jul2022", 280)[artículo 10]) establece que, para titularse, el estudiante debe cursar esa asignatura terminal "en la que deben obtener el puntaje mínimo establecido en el Reglamento General de Estudiantes del Tipo Superior en el Examen General de Egreso". Este texto es el mismo en la versión de julio de 2022 y en la vigente de julio de 2026.

#figure(
  image("img/c-art10-jul2022.png", width: 90%),
  caption: [Reglamento de Titulación (Anexo L), artículo 10, versión de julio de 2022. En rojo: el único requisito relativo al EGEL es el puntaje mínimo en la asignatura terminal. \ #fuente("jul2022", 280)],
)

= Lo que se nos informó: el esquema de acreditación

Durante la carrera se nos presentó la siguiente tabla, que coincide con el artículo 11 del Anexo H y agrega los rangos de puntaje del Ceneval:

#figure(
  table(
    columns: (1.1fr, 1.6fr, 1.5fr),
    align: (left, left, center),
    fill: (_, y) => if y == 0 { encabezado } else if y == 2 { luma(215) },
    [Resultado], [Detalle], [Valor en la asignatura terminal],
    [Examen con testimonio], [Testimonio TDSS (Sobresaliente): 1150 a 1300 puntos], [40% (10/10 en el parcial)],
    [*Examen con testimonio*], [*Testimonio TDS (Suficiente): 1000 a 1149 puntos*], [*30% (8/10 en el parcial)*],
    [Examen sin testimonio], [950 a 999 puntos], [20% (5/10 en el parcial)],
    [Examen sin testimonio], [900 a 949 puntos], [10% (3/10 en el parcial)],
    [Examen sin testimonio], [700 a 899 puntos], [0% (0/10 en el parcial)],
  ),
  caption: [Transcripción de la "Tabla de control interno UVM" presentada a los estudiantes. El resaltado corresponde al testimonio Satisfactorio.],
)

#figure(
  image("img/c-tabla-control-interno.png", width: 88%),
  caption: [Imagen de la "Tabla de control interno UVM" (ampliada y con mayor nitidez; el original es una imagen de baja resolución). En rojo: el testimonio Satisfactorio. Por confirmar: el documento o la presentación de origen.],
)

La misma tabla está en el reglamento vigente cuando ingresamos (julio de 2022):

#figure(
  image("img/c-anexoH-art11-jul2022.png", width: 88%),
  caption: [Política de Operación y Evaluación del EGEL (Anexo H), artículo 11, versión de julio de 2022. En rojo: el testimonio Satisfactorio vale el 30% de la calificación. La tabla continúa en la página 172 con los resultados sin testimonio. \ #fuente("jul2022", 171)],
)

== Qué significaba en la práctica

Si la asignatura se aprueba con 7.0, lo necesario en los parciales formativos dependía del resultado del EGEL:

#figure(
  table(
    columns: (1.5fr, 1fr, 1.3fr),
    align: (left, center, center),
    fill: (_, y) => if y == 0 { encabezado } else if calc.odd(y) { luma(248) },
    [Resultado en el EGEL], [Puntos que aporta a la calificación final], [Promedio mínimo necesario en los parciales],
    [Sobresaliente (1150 a 1300)], [4.0], [5.0],
    [*Satisfactorio (1000 a 1149)*], [*3.0*], [*6.7*],
    [Sin testimonio, 950 a 999], [2.0], [8.4],
    [Sin testimonio, 900 a 949], [1.0], [10],
    [Menos de 900], [0], [No se acredita],
  ),
  caption: [Cálculo propio a partir del Anexo H, artículo 11: calificación final = 60% de los parciales + puntos del EGEL; mínimo aprobatorio de 7.0.],
)

Es decir, *con testimonio Satisfactorio y un promedio de 6.7 o más en los parciales se acreditaba la asignatura terminal*, y con 10 en los parciales bastaba incluso con 900 puntos. No era necesario el Sobresaliente.

= El cambio: ahora se exige Sobresaliente

En la versión de *julio de 2025* del Reglamento de Titulación apareció, para los programas *L6* ("Licenciatura duración semestral veinte semanas impartida en modalidad mixta"), esta opción de titulación:

#recuadro[
  "I. *EGEL* (Examen General para el Egreso de Licenciatura), al obtener testimonio *Sobresaliente* en la evaluación y contar un promedio general de 8.0 (ocho punto cero) o superior en los estudios de licenciatura [...]"

  #align(right)[#text(size: 10pt, fill: gris)[Anexo L, artículo 44, fracción I, versión de julio de 2025, #pdf("jul2025", 298)[página 298]]]
]

Con base en esta disposición se nos informó que para titularnos por EGEL el Satisfactorio ya no es suficiente.

#figure(
  image("img/c-art44-jul2025.png", width: 90%),
  caption: [Reglamento de Titulación (Anexo L), artículo 44, versión de julio de 2025. En rojo: primera aparición del requisito de testimonio Sobresaliente. \ #fuente("jul2025", 298)],
)

#figure(
  image("img/c-art44-jul2022.png", width: 90%),
  caption: [El mismo artículo 44 en la versión de julio de 2022, vigente cuando ingresamos. En rojo: las únicas opciones para los programas L6; no existía el requisito de Sobresaliente. \ #fuente("jul2022", 288)],
)

== La contradicción dentro del propio reglamento

La versión vigente (julio de 2026) mantiene las dos reglas al mismo tiempo:

- El #pdf("jul2026", 182)[Anexo H, artículo 11] sigue otorgando valor al testimonio Satisfactorio y a los resultados sin testimonio, y el #pdf("jul2026", 292)[artículo 10 del Anexo L] sigue pidiendo solo "el puntaje mínimo establecido" en la asignatura terminal.
- El #pdf("jul2026", 299)[artículo 44 del Anexo L] condiciona la titulación por EGEL de los programas L6 al testimonio Sobresaliente.

La universidad no ha explicado cómo se relacionan ambas disposiciones ni por qué el esquema que se nos presentó dejó de ser suficiente.

= Cronología del artículo 44

#figure(
  table(
    columns: (auto, 1fr, auto),
    align: (left, left, center),
    fill: (_, y) => if y == 0 { encabezado } else if calc.odd(y) { luma(248) },
    [Versión], [Opciones de titulación para programas L6 (Anexo L, art. 44)], [Página],
    [Enero de 2022], [Estudios de Posgrado; Seminario de Titulación], [#pdf("ene2022", 289)[289]],
    [*Julio de 2022* (al ingresar)], [Estudios de Posgrado; Seminario de Titulación], [#pdf("jul2022", 288)[288]],
    [Junio de 2023], [Estudios de Posgrado; Seminario de Titulación], [#pdf("jun2023", 288)[288]],
    [Diciembre de 2023], [Estudios de Posgrado; Seminario de Titulación], [#pdf("dic2023", 289)[289]],
    [Noviembre de 2024], [Especialidad o Maestría; Máster], [#pdf("nov2024", 298)[298]],
    [*Julio de 2025*], [*EGEL con testimonio Sobresaliente* y promedio general de 8.0; EGEP con calificación mínima de 9.5; Proyecto Integrador con calificación mínima de 9.5; Especialidad o Maestría; Máster], [#pdf("jul2025", 298)[298]],
    [Julio de 2026 (vigente)], [Igual que julio de 2025], [#pdf("jul2026", 299)[299]],
  ),
  caption: [Evolución del artículo 44. El número de página abre el PDF oficial en esa página.],
)

El requisito de Sobresaliente no existía en 2022. Apareció en julio de 2025, cuando muchas generaciones ya llevaban años de carrera; por ejemplo, quienes ingresamos en agosto de 2022 ya habíamos cursado tres años.

= Cómo se comunicó el cambio

== Lo que firmamos al inscribirnos

Al ingresar firmamos una hoja titulada "Normativa", en la que se indica que la normativa, incluido el Reglamento de Titulación y la Política del EGEL, podría consultarse en #link("https://uvm.mx")[uvm.mx], y que las actualizaciones "serán publicadas a través de dicho medio informativo".

#figure(
  image("img/c-hoja-normativa.jpg", width: 70%),
  caption: [Hoja "Normativa" firmada al momento de la inscripción (fotografía del documento impreso entregado por la UVM, con ajuste de contraste). En rojo: la normativa se consulta en uvm.mx y sus actualizaciones se publican por ese medio.],
)

== Dónde se publicó

El medio oficial de publicación es la página #link(url.estatutos)[uvm.mx/la-uvm/nuestros-estatutos], que contiene alrededor de ochenta archivos. Las versiones del reglamento de estudiantes aparecen en una lista desplegable y la vigente en una sección aparte (ver Anexo B).

== Lo que se nos dijo

Al comunicarnos el requisito, se nos indicó que aplicaba "desde 2022" y que debimos revisar el reglamento desde la fecha de nuestra inscripción. Sin embargo, *el reglamento vigente cuando nos inscribimos no contenía ese requisito*: apareció en julio de 2025.

== El personal de la universidad tampoco conocía el cambio

En la reunión sostenida el 29 de septiembre de 2026, el personal directivo presente no tuvo claridad sobre el origen ni la fecha del requisito. Se sostuvo que el cambio databa de 2022 y que debimos conocerlo desde nuestro ingreso, cuando el reglamento de esa fecha no lo contemplaba. Tampoco el personal docente con el que hemos tratado el tema tenía conocimiento del cambio.

Si quienes laboran en la universidad, incluidos profesores y directivos, desconocen las modificaciones al Reglamento de Titulación, no es razonable esperar que las y los estudiantes las conozcan por su sola publicación en una página web. Esto confirma que la publicación en el sitio no ha sido un medio eficaz para dar a conocer un cambio de esta importancia.

= Nuestra postura

+ *El requisito cambió a la mitad de la carrera.* Ingresamos con un esquema en el que el testimonio Satisfactorio contaba para acreditar la asignatura terminal vinculada a la titulación. Hoy se nos exige el nivel más alto del examen.
+ *No hubo notificación directa.* Publicar un cambio en una página con decenas de archivos no equivale a informarlo. Prueba de ello es que el propio personal directivo y docente no conocía el cambio ni su fecha. La UVM cuenta con la aplicación myUVM, Conexión Lince, Blackboard y el correo institucional. Un cambio que afecta el derecho a titularse debió comunicarse por esos medios, de forma individual y con anticipación.
+ *No hubo régimen de transición.* El reglamento no prevé ninguna regla para las generaciones que ya estaban inscritas cuando cambió el requisito.
+ *No hubo tiempo suficiente.* Enterarnos a unas semanas del examen nos deja sin margen para prepararnos para un Sobresaliente o planear otra opción de titulación.
+ *El reglamento es contradictorio.* El Anexo H sigue dando valor al Satisfactorio mientras el artículo 44 lo deja sin efecto para titularse.

= Consideraciones que conviene conocer

Para actuar con realismo, estos son los argumentos que probablemente planteará la universidad:

- Los cambios *están publicados* en el medio que aceptamos por escrito al inscribirnos.
- El Reglamento General (#pdf("jul2022", 5)[artículo 2]) establece que las nuevas disposiciones no se aplican de forma retroactiva a etapas ya concluidas, pero sí "para el resto de su formación que aún no concluyen", y que al reinscribirse el estudiante acepta el reglamento actualizado.
- El artículo 44 es específico para los programas L6. Antes de julio de 2025, ese artículo no incluía el EGEL entre las opciones de titulación de los L6. La universidad podría argumentar que el EGEL con Satisfactorio nunca fue, por sí solo, una opción de titulación para esos programas.

A nuestro favor está que el propio Reglamento General (transitorio sexto, vigente desde 2022) establece que para interpretar los casos no previstos se considerará "el contrato de prestación de servicios educativos firmado por el estudiante", y que el esquema que se nos comunicó durante la carrera es el de la tabla del Anexo H.

= Qué proponemos hacer

+ *Reunir documentos:* el contrato de prestación de servicios firmado al inscribirnos, el material donde se nos presentó la tabla de acreditación y el aviso en que se nos informó del requisito de Sobresaliente (correo, publicación o mensaje), con fecha y remitente visibles.
+ *Documentar la reunión del 29 de septiembre de 2026:* quiénes asistieron por parte de la universidad, qué se dijo sobre la fecha y el origen del requisito, y quiénes estuvieron presentes como testigos. Conviene escribirlo cuanto antes, mientras está fresco, y que lo firmen varios asistentes.
+ *Presentar una solicitud colectiva por escrito* a Servicios Escolares y a la coordinación de la licenciatura, con el mayor número posible de firmas y un plazo de respuesta. El Anexo A incluye un modelo con área de firmas.
+ *Si no hay respuesta o es negativa, acudir a PROFECO*, de preferencia en forma colectiva y con este expediente. PROFECO atiende quejas contra escuelas particulares y funciona principalmente como conciliador. Teléfono del Consumidor: 55 5568 8722 y 800 468 8722; quejas en línea por Concilianet. Conviene pedir antes una asesoría gratuita.
+ *En lo académico, informar a la SEP*, autoridad que otorgó el reconocimiento de validez oficial del programa.
+ *Seguir preparándonos para el EGEL.* Un testimonio Sobresaliente resuelve el problema para quien lo obtenga, independientemente del resultado de estas gestiones.

La CONDUSEF no es competente en este caso, ya que solo atiende asuntos de instituciones financieras.

// ================================================================= anexo A
#pagebreak()
#heading(numbering: none)[Anexo A. Solicitud colectiva y área de firmas]

#set par(justify: true)
#align(right)[Santiago de Querétaro, Qro., a #box(width: 1cm, repeat[\_]) de #box(width: 3cm, repeat[\_]) de 2026.]

#v(0.3cm)
*Dirección de Servicios Escolares \
Coordinaciones de licenciatura \
Universidad del Valle de México, campus Querétaro Juriquilla \
Presente*

Las y los estudiantes abajo firmantes, inscritos en licenciaturas en modalidad L6 desde antes de julio de 2025, respetuosamente exponemos:

+ Durante nuestra formación se nos informó que el resultado del EGEL forma parte de la calificación de la asignatura terminal conforme a la tabla del artículo 11 de la Política de Operación y Evaluación del EGEL (Anexo H), en la que el testimonio Satisfactorio es suficiente para acreditarla, en combinación con las demás evaluaciones.
+ Recientemente se nos informó que para titularnos por EGEL se requiere testimonio Sobresaliente, con base en el artículo 44 del Reglamento de Titulación (Anexo L), fracción I, que aparece por primera vez en la versión de julio de 2025 y que no existía cuando ingresamos.
+ No recibimos notificación directa de este cambio por correo institucional, por la aplicación myUVM ni por Blackboard, y nos enteramos a unas semanas de la aplicación del EGEL, programada para el 27 de noviembre de 2026.
+ En la reunión del 29 de septiembre de 2026 se nos indicó que el requisito aplicaba desde 2022 y que debimos conocerlo desde nuestra inscripción. Sin embargo, el reglamento vigente en esa fecha no lo contemplaba, y el propio personal presente no tuvo claridad sobre cuándo se estableció.

Por lo anterior, solicitamos:

+ Que se nos explique por escrito cómo se relacionan el artículo 11 del Anexo H y el artículo 10 del Anexo L, que dan valor al testimonio Satisfactorio, con el artículo 44 del Anexo L, que exige testimonio Sobresaliente.
+ Que se respete para quienes ingresamos antes de julio de 2025 el esquema de acreditación que se nos comunicó, de modo que el testimonio Satisfactorio sea suficiente para titularnos por EGEL, o bien que se establezca un régimen de transición para quienes ingresamos antes de julio de 2025.
+ Que se nos indique en qué fecha y por qué medio se notificó este cambio a las y los estudiantes afectados.
+ Que en lo sucesivo los cambios que afecten la titulación se notifiquen de forma directa por correo institucional y por la aplicación myUVM.

Agradeceremos una respuesta por escrito en un plazo no mayor a diez días hábiles a partir de la recepción de este documento.

#v(0.4cm)
#align(center)[*Atentamente* \ Estudiantes de licenciaturas L6, UVM campus Querétaro Juriquilla]
#v(0.3cm)

#table(
  columns: (0.35fr, 1.8fr, 1.4fr, 0.9fr, 1.1fr, 1.1fr),
  align: (center, left, left, left, left, left),
  fill: (_, y) => if y == 0 { encabezado },
  [No.], [Nombre completo], [Licenciatura], [Ingreso], [Matrícula], [Firma],
  ..range(1, 26).map(i => ([#i], [#v(0.62cm)], [], [], [], [])).flatten(),
)

// ================================================================= anexo B
#pagebreak()
#heading(numbering: none)[Anexo B. Evidencia adicional]

#figure(
  image("img/c-art44-nov2024.png", width: 90%),
  caption: [Artículo 44, versión de noviembre de 2024. En rojo: las opciones vigentes; aún sin requisito de Sobresaliente. \ #fuente("nov2024", 298)],
)

#figure(
  image("img/c-art44-jul2026.png", width: 90%),
  caption: [Artículo 44, versión vigente de julio de 2026. En rojo: se mantiene el requisito de Sobresaliente. \ #fuente("jul2026", 299)],
)

#figure(
  image("img/c-art2-jul2022.png", width: 90%),
  caption: [Reglamento General, artículo 2, versión de julio de 2022. En rojo: la regla sobre la aplicación de los cambios, que la universidad probablemente invocará. \ #fuente("jul2022", 5)],
)

#figure(
  image("img/c-estatutos-compendio.png", width: 80%),
  caption: [Página oficial de estatutos, sección "Compendio de Reglamentos Generales de Estudiantes de Tipo Superior". En rojo: la versión de julio de 2022 (al ingresar) y la de julio de 2025 (cuando aparece el requisito). \ Fuente: #link(url.estatutos).],
)

#figure(
  image("img/c-estatutos-jul2026.png", width: 80%),
  caption: [Página oficial de estatutos: sección de la versión vigente. En rojo: la modificación de julio de 2026. \ Fuente: #link(url.estatutos).],
)

// ================================================================= anexo C
#pagebreak()
#heading(numbering: none)[Anexo C. Fuentes]

Todos los documentos fueron descargados de los servidores de la UVM y del Ceneval el 29 de septiembre de 2026 y se conservan con su fecha de descarga y su huella digital SHA-256.

#set text(size: 10pt)
#table(
  columns: (auto, 1fr),
  fill: (_, y) => if y == 0 { encabezado } else if calc.odd(y) { luma(248) },
  [Documento], [Enlace oficial],
  [Página oficial de estatutos y reglamentos], [#link(url.estatutos)],
  [Reglamento, enero de 2022], [#link(url.ene2022)],
  [Reglamento, julio de 2022 (al ingresar)], [#link(url.jul2022)],
  [Reglamento, junio de 2023], [#link(url.jun2023)],
  [Reglamento, diciembre de 2023], [#link(url.dic2023)],
  [Reglamento, noviembre de 2024], [#link(url.nov2024)],
  [Reglamento, julio de 2025], [#link(url.jul2025)],
  [Reglamento, julio de 2026 (vigente)], [#link(url.jul2026)],
  [Ceneval: exámenes EGEL], [#link("https://ceneval.edu.mx/examenes-egreso-egel/")],
)

#set text(size: 11pt)
#v(0.4cm)
*Disposiciones citadas*

#table(
  columns: (1.6fr, 1fr, 1fr),
  fill: (_, y) => if y == 0 { encabezado } else if calc.odd(y) { luma(248) },
  [Disposición], [Julio de 2022], [Julio de 2026 (vigente)],
  [Reglamento General, art. 2 (aplicación de cambios)], [#pdf("jul2022", 5)[pág. 5]], [#pdf("jul2026", 4)[pág. 4]],
  [Reglamento General, art. 171 (asignatura terminal, 900 puntos)], [#pdf("jul2022", 58)[pág. 58]], [#pdf("jul2026", 62)[pág. 62]],
  [Anexo H, art. 11 (tabla de puntajes)], [#pdf("jul2022", 171)[págs. 171 y 172]], [#pdf("jul2026", 182)[págs. 182 y 183]],
  [Anexo L, art. 10 (requisitos de titulación)], [#pdf("jul2022", 280)[pág. 280]], [#pdf("jul2026", 292)[pág. 292]],
  [Anexo L, art. 44 (opciones L6)], [#pdf("jul2022", 288)[pág. 288]], [#pdf("jul2026", 299)[pág. 299]],
)
