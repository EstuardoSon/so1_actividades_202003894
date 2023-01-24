Estuardo Gabriel Son Mux
202003894

#Tipos de Kernel
* Kernel Monolítico: Es un kernel de gran tamaño para cualquier tipo de tarea. Es el único responsable de la gestión de memoria, procesos, de la comunicación entre procesos y proporcionar funciones de soporte de drivers y hardware. 
* Microkernel: Esta diseñado para tener un tamaño reducido para que en casos de fallo no paralice todo el sistema operativo. Está dividido en varios modulos para que pueda asumir las funcioens de un módulo de mayor tamaño.
* Kernel híbrido: Consiste la combinación de kernel monolítico y el microkernel. En este caso, el kernel de mayor tamaño se hace más compacto y modulable. Otras partes del kernel puden cargarse dinámicamente.

#Diferencias entre Kernel Mode y User Mode
El modo usuario es un modo restringido, que las aplicaciones de programas ejecutan y comienzan.
El modo kernel es un modo privilegiado, que la computadora accede cuando la computadora accede a recursos del hardware.
- Modos
El modo usuario es considerado como el modo esclavo o modo restringido.
El modo kernel es el modo del sistema, modo maestro o modo privilegiado.
- Espacio de dirección
En el modo usuario, un proceso tomo su propio espacio de direcciones.
En el modo kernel, un proceso toma un solo espacio de direcciones.
- Interruptions
En modo usuario, si una interrupción ocurre afecta unicamente el proceso que falló.
En modo kernel, si una interrupción ocurre, todo el sistema operativo debe fallar.
- Restricciones
En el modo usuario, existen restricciones para acceder programas de kernel. No puede acceder a ellos directamente.
En el modo kernel, ambos programas usuarios y programas kernel pueden ser accedidos.
