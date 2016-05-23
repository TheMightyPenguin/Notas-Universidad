# Respuestas Practica 1 de Procesos

---

#### (1) Seleccione la respuesta correcta. La técnica de planificación Round-Robin:

- a) En general, da mejores tiempos de espera que el FCFS.
- b) Minimiza el tiempo medio de retorno.
- c) Maximiza el rendimiento del sistema.
- d) Permite acotar el tiempo de respuesta máximo.

**R**: a) En general, da mejores tiempos de espera que el FCFS.

---

#### (2) ¿Qué tipo de procesos se ve favorecido en general por colas multinivel con retroalimentación, los procesos con carga de procesador o los procesos con carga de E/S? Explique por qué

**R**:

---

#### (3) Considere el conjunto de procesos siguiente (la duración de ráfaga de CPU se da en milisegundos):

**Proceso** | **Tiempo de ráfaga** | **Prioridad**
----------- | -------------------- | -------------
P1          | 10                   | 3
P2          | 1                    | 1
P3          | 2                    | 3
P4          | 1                    | 4
P5          | 5                    | 2

Se supone que los procesos llegaron en el orden P1, P2, P3, P4, P5, todos en el instante 0.
Dibuje cuatro diagramas de Gant que ilustren la ejecucion de estos procesos empleando planificación FCFS y SJF.

**R**:

---

#### (4) Defina la diferencia entre planificación apropiativa y no apropiativa. Explique por qué es poco probable que se use una planificación no apropiativa estricta en un proceso de cómputo

**R**: En la planificacion apropiativa los procesos pueden salir del estado de
ejecución para que entre otro procesos mientras que en la no apropiativa una
vez que un proceso comienza a ejecutarse no sale del estado de ejecución hasta
que no consume todo el tiempo de ráfaga que necesite.

El caso de un proceso de cómputo que tarde mucho tiempo si usaramos
planificación no apropiativa los demas procesos tendrian que esperar mucho
tiempo a que este termine para obtener tiempo de CPU.

---

#### (5) Explique las diferencias del grado en que los siguientes algoritmos de planificación discriminan a favor de los procesos cortos:

- FCFS
- Colas multinivel con retroalimentación

**R**:

---

#### (6) Señale cuál de los siguientes atributos es compartida entre todos los hilos (procesos ligeros) de un mismo proceso:

- a) Una pila de ejecición.
- b) Un estado de ejecución.
- c) Un contexto de ejecución donde se salva que no se esté en ejecución.
- d) Un código ejecutable.

**R**: d) Un código ejecutable.

---

#### (7) En un sistema de tiempo real con las siguientes tareas (en orden decreciente de prioridad):

**Tarea** | **T. de ejecución** | Periodo
--------- | ------------------- | --------
T1        | 5                   | 10
T2        | 8                   | 20
T3        | 5                   | 55

¿Existe una planificación en tiempo real viable? Razona la respuesta.

**R**:

---

#### (8) Dados cuatro programas, se sabe que van a consumir los siguientes tiempos de CPU:

- A: 9ms
- B: 3ms
- C: 7ms
- D: 5ms

Los programas no se bloquean por E/S ni por ninguna otra causa. Considérese un
sistema operativo donde los programas se ejecutan en el orden en que llegan:
A, B, C, D. Si los cuatro llegan en el mismo milisegundo:

¿En qué orden deberían entrar a ejecutarse para que el tiempo de respuesta fuese
mínimo? Calcular dicho valor.

**R**: Deberian entrar en el orden B, D, C, A. Con los procesos mas cortos primero,
se obtiene el tiempo respuesta minimo. Tenemos entonces que el tiempo promedio de espera es:



---

### (9) ¿Cuáles de los siguientes algoritmos de planificación pueden dar lugar a bloqueos indefinidos?

- a) FCFS
- b) SJF
- c) Planificación por prioridades

**R**:
