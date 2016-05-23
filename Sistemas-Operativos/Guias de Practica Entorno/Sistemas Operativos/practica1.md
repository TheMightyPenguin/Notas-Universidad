## [Sincronizacion](/sincronizacion)

---

# Respuestas Practica 1 Sistemas Operativos

---

#### (1) Defina Sistema Operativo e indique como mínimo cuatro propósitos generales.

**R**: Un sistema operativo es el administrador del harwdware, y ademas de todos los demas programas.
Entre sus propositos tenemos:
- Manejar multiples dispositivos fisicos, de manera eficiente y enmascarando las fallas.
- Dar al usuario una interfaces, y abstracciones simples de usar.
- Repartir los recursos de manera ordenada y justa.
- Prestar servicios especiales a los programas (llamadas al sistema).

---

#### (2) Indique las tres capas mediante las cuales se considera que un SO está conformado.

**R**:

---

#### (3) ¿Qué caracteriza más a un SO, y explique por qué?

- a. El intérprete de comandos.
- b. Las llamadas al sistema.
- c. Los mandatos.
- d. Sus bibliotecas de programación.

**R**: Sus bibliotecas de programacion, ya que es lo que mas varia entre un SO
y otro

---

#### (4) Mencione y explique los principales tipos de sistemas operativos y diga dos de los que usted considere mas ventajosos para un computador personal, explicar el por qué.
**R**:

---

#### (5) Describa el proceso de arranque de una computadora

**R**: Tenemos primero la CPU ejecuta un programa llamado 'bootstrap program' el cual primero ejecuta el POST (Power On Self Test)
para asegurarse que el hardware no tiene defectos y funciona de manera correcta. Luego inicializa los registros del CPU, los controladores
y contenidos de memoria. Luego localiza el kernel del sistema operativo en memoria secundaria y cargarlo a memoria principal y empezar su ejecución.
Luego de esto ya puede empezar a proveer servicios al usuario.

---

#### (6) ¿Un archivo ejecutable es un proceso?

**R**: No, un archivo ejecutable es un programa. Pasa a ser un procesos solo
cuando se pasa a memoria principal y comienza su ejecución.

---

#### (7) llamada al sistema fork

**R**: Crea un nuevo proceso a partir del proceso padre, pero no lo ejecuta.
El proceso hijo creado es una copia exacta del padre (salvo por el PID y la memoria que ocupa).
Al proceso hijo se le facilita una copia de las variables del proceso padre y de
los descriptores de fichero.
El valor de retorno (pid_t) se usa para identificar al proceso.
Regresa 0 cuando se trata del proceso hijo, -1 si hubo algún error y cualquier otro valor para el proceso padre.

---

#### (8) llamada al sistema exec

**R**: Lanza a ejecución un programa, almacenado en forma de fichero (archivo).
Esta función cambia la imagen del proceso actual. Lo que realiza es sustituir la imagen de memoria del programa
por la de un programa diferente.
Las instrucciones del proceso que las invoca son sustituidas por las instrucciones del proceso indicado.
Esta función normalmente la invocaremos en un proceso hijo previamente generado por fork().

---

#### (9) ¿A qué se refiere el Spooling?

**R**: Consiste en almacenar los procesos que se van ejecutando en un periférico
lógico, un area especial en memoria, o en disco al cual un dispositivo puede
acceder cuando este listo. Es util ya que los dispositivos pueden accesar a la
información cuando la necesiten.

---

#### (10) Un sistema operativo se considera:
- a. Una máquina estendida.
- b. Un administrador de recursos.
- c. Ninguna de las anteriores.
- d. Todas las anteriores.

**R**: d. Todas las anteriores.

---

#### (11) Defina IRQ

**R**: Las IRQ son señales que llegan al controlador de interrupciones (enviadas
por los dispositivos para indicar que requieren atencion del procesador), un
componente de hardware dedicado a la gestión de las interrupciones, y que puede
estar integrado en el procesador principal o ser un circuito separado conectado
al mismo.
Antes de la existencia de los dispositivos plug and play, los usuarios tenían
que configurar los valores IRQ de los dispositivos manualmente cuando agregaban
un dispositivo nuevo al sistema.

---

#### (12) Describa el ciclo de aceptación de una interrupción

**R**: Este ciclo se lleva a cabo en cuanto termina la ejecución de la instrucción
maquina que es esté ejecutando y consiste en la siguiente operaciones:
- Salva el PCB del proceso para luego retornar a este.
- Eleva el procesador a modo nucleo y pasa a ejecutar la rutina para manejar
la interrupción.
- Unz vez que termina la rutina de interrupción el procesador retorna al proceso
desde donde se ocasiono la interrupción.

---

#### (13) Mencione tres causas que podrían dar lugar a una interrupción

**R**:
- Una falla de hardware.
- La ocurrencia de un evento extraordinario en medio de la ejecución de un
programa (excepcion). Por ejemplo: Una division entre 0.

---

#### (14) ¿Qué es una interrupción enmascarable?

**R**: Una interrupción la cual puede posponerse para tratarse luego, en el
evento de que ocurra o se este tratando actualmente una interrupción de mayor
prioridad.
-

---

#### (15) ¿En un sistema de tiempo real tienen cabida las interrupciones no enmascarables?

**R**:

---

#### (16) Explique el funcionamiento de la instrucción TRAP

**R**: Es una interrupción que permite que el programa genera una interrupción
para buscar información en otros sitios (tambien sirve para ir a memoria
virtual). Es una interrupción no enmascarable.

---

#### (17) ¿Cuál de las instrucciones de la siguiente lista NO debe ejecutarse exclusivamente en modo núcleo?
- a. Inhibir las interrupciones.
- b. Escribir en los registros de control de un controlador DMA (Acceso Directo a Memoria).
- c. Escribir en el reloj de la computadora.
- d. Provocar un trap o interrupción de software.

**R**: d. Ya que se puede provocar una excepcion sin estar en modo nucleo.

---

#### (18) Describa la estructura básica de los sistemas monolíticos

**R**: Se tiene una collecion de procedimientos que se pueden llamar entre sí,
cada procedimiento tiene una interfaz bien definida en terminos de parámetros y
resultados. Esta compuesto por un grupo de estructuras fijas las cuales funcionan
entre si. Carecen de protección y privilegions al manejar recursos como memoria
y disco duro. Generalmente son rapidos y eficientes.

---

#### (19) ¿Qué son las máquinas virtuales?

**R**: Software que simula a una computadora y puede ejecutar programas como si
fuese una computadora real.

---

#### (20) ¿A que se refiere el grado de multiprogramación?
- .a El número de procesos que se ejecutan en la CPU.
- .b El número de procesos que se encuentran en memoria principal.
- .c El número de programas que se ejecutan en la CPU.
- .d El número de programas que se encuentran en memoria principal.

**R**: .b El número de procesos que se encuentran en memoria principal.

---

#### (21) ¿Un SO de tiempo compartido debe implementarse obligatoriamente con multiprogramación, explique?

**R**: Si, ya que con la multiprogramación garantizamos que el sistema responda
de manera rapida a los multiples usuarios, y se ejecuten los multiples procesos
de manera concurrente, y que pareza que sus procesos se estan ejecutando al
mismo tiempo.

---

#### (22) Dentro de los sistemas multiprocesamiento, los sitemas asimétricos se definen como:
- .a Los sistemas en donde existe una relación maestro-esclavo entre los procesadores.
- .b No existe ninguna relación jerárquica entre los procesadores.
- .c El número de procesadores es impar.
- .d El número de procesadores es par.

**R**: .b No existe ninguna relación jerárquica entre los procesadores.

---

#### (23) ¿Cuál de los siguientes mecanismos de hardware no es un requisito para construir un sistema multiprogramado con protección entre usuarios?
- .a Memoria virtual.
- .b Protección de memoria.
- .c Instrucciones de E/S que sólo pueden ejecutarse en modo núcleo.
- .d Dos modos de operación: núcleo y usuario.

**R**: .c Instrucciones de E/S que sólo pueden ejecutarse en modo núcleo.

---

#### (24) Sea un sistema operativo sin memoria virtual, con una memoria principal de 24 MB. Conociendo que la parte residente del SO ocupa 5 MB y que cada proceso ocupa 3 MB, calcular el número de procesos que pueden estar activos en el sistema.

**R**: Pueden estar activos 6 procesos en el sistema.

---

#### (25) ¿A cuál de las funcionalidades que se enumeran a continuación, tiene que dar soporte un SO, en las dos configuraciones: (a) Una computadora de mano o un dispositivo portátil (Smartphone, tablets), (b) Un sistema de tiempo real?
- .a Programación por lotes.
- .b Memoria virtual.
- .c Tiempo compartido.

**R**: En el caso (a), se debe dar soporte a Memoria Virtual.
En el caso (b) a Programación por lotes.

---

#### (26) ¿En que se diferencian los clusters de los sistemas multiprocesador?

**R**: Los sistemas multiprocesador tiene un solo sistema operativo, mientras
que los clusters tienen varios ya que son varias computadoras conectadas.

---

#### (27) De un ejemplo de un sistema operativo de tiempo real y diga qué pasaría si el sistema tiene un fallo respecto al tiempo.

**R**:

---

#### (28) Si un banco desea crear un programa para llevar el registro de todos sus movimientos de dinero, lo cual conlleva un gran tráfico de datos de entrada y salida, ¿Cuál sería la mejor arquitectura para soportar este programa?

**R**:

---

#### (29) Un ingeniero quiere hacer un programa para el control de los ciclos de lavado de una lavadora y lo quiere montar en una tarjeta microprocesadora, ¿Qué le puede recomendar a este ingeniero?

**R**:

---

### ToDo:

- [x] Pregunta 1
- [ ] Pregunta 2
- [ ] Pregunta 3
- [ ] Pregunta 4
- [x] Pregunta 5
- [x] Pregunta 6
- [x] Pregunta 7
- [x] Pregunta 8
- [x] Pregunta 9
- [x] Pregunta 10
- [x] Pregunta 11
- [x] Pregunta 12
- [x] Pregunta 13
- [x] Pregunta 14
- [ ] Pregunta 15
- [x] Pregunta 16
- [x] Pregunta 17
- [x] Pregunta 18
- [x] Pregunta 19
- [x] Pregunta 20
- [x] Pregunta 21
- [x] Pregunta 22
- [x] Pregunta 23
- [x] Pregunta 24
- [x] Pregunta 25
- [x] Pregunta 26
- [ ] Pregunta 27
- [ ] Pregunta 28
- [ ] Pregunta 29

---

## Referencias

[comment]: <> (Referencias acerca de las llamadas al sistema Fork y Clone)
[1]: http://www.ual.es/~jjfdez/SOA/pract6.html
[2]: https://delightlylinux.wordpress.com/2012/06/25/what-is-pid-and-ppid/
[3]: http://systemcalls.blogspot.com/2010/03/fork-y-clone.html
[4]: http://sopa.dis.ulpgc.es/ii-dso/leclinux/procesos/fork/LEC7_FORK.pdf
[5]: https://sites.google.com/site/sogrupo15/familia-de-llamadas-exec

[6]: http://www.webopedia.com/TERM/S/spooling.html
