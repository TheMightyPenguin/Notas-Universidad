Que es una interrupcion?
Es un evento asincrono al programa para el cual deben proveerse mecanismos especiales para su tratamiento.
Practicamente todos los computadores disponen de un mecanismo mediante el que otros modulos (E/S, memoria, etc..) pueden interrumpir el procesamiento normal de la CPU. 


Llamadas al sistema
Son mecanismos que permiten usar servicios que ofrece el sistema operativo. Son la interfaz entre el sistema operativo y el programa.
Al realizar una llamada al sistema, la CPU transfiere el control a un codigo privilegiado que realiza la accion, y luego retorna control al programa que realizola llamada.
Algunos de los servicios que ofrecen son:
- Manipulacion de archivos.
- Obtener o manipular la hora.
- Establecer o crear una conexion mediante algun protocolo.
- Control de procesos.
- Asignar y liberar memoria.
