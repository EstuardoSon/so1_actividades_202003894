Estuardo Gabriel Son Mux
202003894

Tipos de Kernel
* Kernel Monol�tico: Es un kernel de gran tama�o para cualquier tipo de tarea. Es el �nico responsable de la gesti�n de memoria, procesos, de la comunicaci�n entre procesos y proporcionar funciones de soporte de drivers y hardware. 
* Microkernel: Esta dise�ado para tener un tama�o reducido para que en casos de fallo no paralice todo el sistema operativo. Est� dividido en varios modulos para que pueda asumir las funcioens de un m�dulo de mayor tama�o.
* Kernel h�brido: Consiste la combinaci�n de kernel monol�tico y el microkernel. En este caso, el kernel de mayor tama�o se hace m�s compacto y modulable. Otras partes del kernel puden cargarse din�micamente.

Diferencias entre Kernel Mode y User Mode
El modo usuario es un modo restringido, que las aplicaciones de programas ejecutan y comienzan.
El modo kernel es un modo privilegiado, que la computadora accede cuando la computadora accede a recursos del hardware.
- Modos
El modo usuario es considerado como el modo esclavo o modo restringido.
El modo kernel es el modo del sistema, modo maestro o modo privilegiado.
- Espacio de direcci�n
En el modo usuario, un proceso tomo su propio espacio de direcciones.
En el modo kernel, un proceso toma un solo espacio de direcciones.
- Interruptions
En modo usuario, si una interrupci�n ocurre afecta unicamente el proceso que fall�.
En modo kernel, si una interrupci�n ocurre, todo el sistema operativo debe fallar.
- Restricciones
En el modo usuario, existen restricciones para acceder programas de kernel. No puede acceder a ellos directamente.
En el modo kernel, ambos programas usuarios y programas kernel pueden ser accedidos.
