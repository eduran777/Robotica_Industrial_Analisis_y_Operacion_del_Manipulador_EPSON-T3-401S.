# Informe Laboratorio No. 03 - Análisis y Operación del Manipulador EPSON T3-401S

<p align="center">
<img src="Imagenes/logo_3.png" alt="UNAL" width="600"/>
</p>

### Autores:  
\<Nombre 1\>  
\<Nombre 2\>  

**FACULTAD DE INGENIERÍA**  
**ROBÓTICA**  
**2025-II**

---

## Introducción



---

## Objetivos



---

## Resultados de aprendizaje



---

## Equipos, materiales y software



---

## Desarrollo experimental



---

## Requerimientos del informe  

### 1. Cuadro comparativo de características técnicas del Motoman MH6, ABB IRB 140 y EPSON T3-401S

| Característica                 | Motoman MH6                         | ABB IRB 140                         | EPSON T3-401S                      |
|--------------------------------|-------------------------------------|-------------------------------------|------------------------------------|
| Tipo de robot                  | Articulado                          | Articulado                          | SCARA                              |
| Grados de libertad             | 6                                   | 6                                   | 4                                  |
| Carga útil máx.                | 6 kg                                | 6 kg                                | 3 kg                               |
| Alcance aprox.                 | 1422 mm                             | 810 mm (hasta eje 5)                | 400 mm (radio de trabajo)          |
| Repetibilidad                  | ±0,08 mm                            | ±0,03 mm                            | ±0,02 mm                           |
| Masa del robot                 | ~130 kg                             | ~98 kg                              | ~16 kg                             |
| Montaje típico                 | Piso, pared, techo                  | Piso, invertido o pared             | Mesa / celda compacta              |
| Aplicaciones típicas           | Soldadura, manipulación, dispensado | Manipulación, empaquetado, soldadura| Ensamble, pick & place, inspección |

**Comentario general:**  
- Motoman MH6 e IRB 140 son brazos articulados de 6 gdl y 6 kg de carga, pensados para tareas de alcance medio y alta flexibilidad.  
- El EPSON T3-401S es un SCARA de 4 gdl, con menor carga (3 kg) y alcance, pero con mayor repetibilidad y tiempos de ciclo muy bajos, lo que lo hace ideal para operaciones rápidas de ensamblaje y manipulación ligera dentro de una celda compacta.  

---

### 2. Descripción de las configuraciones *home* del EPSON T3-401S, indicando la posición de cada articulación

En el laboratorio se utilizó el EPSON T3-401S como robot SCARA de 4 ejes:  
- **J1 (eje de base)**  
- **J2 (eje de brazo)**  
- **J3 (eje Z de desplazamiento vertical)**  
- **J4 / U (rotación del efector final)**  

En EPSON RC+ 7.0 las posiciones *home* se definen como puntos de referencia enseñados (por ejemplo `HOME` o `P_HOME`) y almacenados en la controladora. De forma general:

- **HOME de referencia (Home mecánico / seguro):**  
  - J1 ≈ 0° → brazo alineado hacia el frente de la celda.  
  - J2 ≈ 0° → eslabones extendidos en línea recta.  
  - J3 en posición alta segura (por encima de la cubeta y elementos de la mesa).  
  - J4 ≈ 0° → orientación “neutra” del efector, alineado con el eje X del robot.  
  Esta posición se usa como punto de **inicio y fin** de la rutina, así como referencia para calibrar sistemas de coordenadas y verificar que no existan colisiones.

- **HOME de trabajo (si se define uno adicional):**  
  Puede configurarse un segundo punto *home* más cercano a la cubeta de huevos, con:  
  - J1 y J2 orientados hacia el área de trabajo principal.  
  - J3 a una altura intermedia que reduzca el tiempo de aproximación.  
  - J4 orientado de forma que la ventosa quede alineada con el eje de la cubeta.  
  Esta posición facilita el acceso rápido a las posiciones de paletizado sin comprometer la seguridad.

En ambos casos, las posiciones se registran desde EPSON RC+ 7.0 moviendo el robot manualmente al punto deseado y usando la opción de **Teach Point** en el panel *Jog & Teach* para guardar el punto con un nombre identificable en el programa.  

---

### 3. Procedimiento detallado para realizar movimientos manuales del EPSON T3-401S (articulaciones, cartesianos, traslaciones y rotaciones)

El movimiento manual del T3-401S se realiza principalmente desde el software **EPSON RC+ 7.0**, utilizando el panel **Jog & Teach** o, si está disponible, un *teach pendant* TP2.  

**Pasos generales:**

1. **Encendido y conexión**
   1. Encender el controlador del robot y verificar que no existan alarmas activas.  
   2. Abrir EPSON RC+ 7.0 y cargar el proyecto correspondiente al T3-401S.  
   3. Confirmar que el estado del controlador aparezca como **ONLINE** en el *Robot Manager*.

2. **Habilitar el robot**
   1. Activar el suministro de energía del controlador.  
   2. En el panel *Robot* de EPSON RC+, habilitar el robot (`Motor ON` / `Servo ON`) siguiendo el procedimiento de seguridad de la celda.  

3. **Acceso al panel Jog & Teach**
   1. Abrir la pestaña **Jog & Teach**.  
   2. Seleccionar el robot T3-401S si hay más de un manipulador en la celda.

4. **Selección del modo de movimiento**
   En la sección **Jog Mode** se selecciona el sistema de coordenadas:  
   - **Joint** → movimiento por articulaciones (J1, J2, Z, U).  
   - **World / Base** → movimiento cartesiano respecto al sistema de base.  
   - **Tool** → movimiento cartesiano respecto a la herramienta (TCP).  
   - **Local / User** → sistemas definidos por el usuario (por ejemplo, sistema de la cubeta).

5. **Movimiento por articulaciones**
   - Con el modo **Joint** activo:  
     - Usar los botones `+J1 / -J1`, `+J2 / -J2`, `+Z / -Z`, `+U / -U` del panel para mover cada eje.  
     - Mantener pulsado el botón de jogging mientras se desea el movimiento (o el botón físico de habilitación en el teach pendant, si aplica).  
     - Verificar en la ventana de estado los ángulos y posición actual del robot.

6. **Movimiento cartesiano (traslaciones y rotaciones)**
   - Con el modo **World** o **Tool** activo:  
     - Traslaciones:
       - `+X / -X` → desplazamiento en eje X.  
       - `+Y / -Y` → desplazamiento en eje Y.  
       - `+Z / -Z` → subida / bajada del eje vertical.  
     - Rotaciones:
       - `+Rx / -Rx`, `+Ry / -Ry`, `+Rz / -Rz` → rotaciones alrededor de los ejes cartesianos, afectando la orientación de la herramienta (en el T3 principalmente `Rz` / `U`).  
   - El movimiento puede ser **continuo** o por **pasos discretos**, según la distancia seleccionada en *Jog Distance*.

7. **Registro de puntos (Teach)**
   - Una vez alcanzada una posición deseada (por ejemplo, una esquina de la cubeta), se utiliza el botón **Teach** del panel para guardar el punto en la lista de posiciones del proyecto, asignándole un nombre significativo (`P_HOME`, `P_HUEVO_1`, etc.).  

8. **Finalización**
   - Llevar el robot nuevamente a *home* o a una posición segura.  
   - Deshabilitar motores si no se va a seguir operando (`Motor OFF`).  
   - Guardar el proyecto antes de cerrar EPSON RC+.

---

### 4. Explicación de los niveles de velocidad para movimientos manuales, cambio entre niveles e identificación en la interfaz

En EPSON RC+ 7.0 la velocidad de jog del robot se controla mediante el parámetro **Jog Speed** del panel *Jog*, que define la rapidez con la que el T3-401S se mueve en modo manual.  

**a) Concepto de Jog Speed**

- Representa un **porcentaje de la velocidad máxima de jogging** o un valor en unidades lineales (mm/s) y angulares (°/s), dependiendo de la configuración del controlador.  
- Afecta únicamente los movimientos manuales (Jog & Teach), no las velocidades programadas en los comandos SPEL+ del programa.

**b) Niveles de velocidad**

En la práctica de laboratorio se suelen manejar tres rangos lógicos:

- **Baja** → valores de Jog Speed entre ~5 % y 20 %.  
  - Uso: aproximaciones a la pieza, zonas cercanas a obstáculos, enseñanza fina de puntos.
- **Media** → valores entre ~20 % y 60 %.  
  - Uso: desplazamientos moderados dentro de la celda con visibilidad del robot.
- **Alta** → valores superiores al 60 % (hasta el 100 % permitido).  
  - Uso: movimientos amplios entre zonas seguras o retorno rápido a *home*.

**c) Cambio de velocidad**

- En el panel **Jog & Teach**, en el cuadro **Jog Speed**, se selecciona el valor mediante:
  - Una lista desplegable de velocidades predefinidas.  
  - O escribiendo directamente un valor numérico (porcentaje o velocidad absoluta).  
- Adicionalmente, es posible cambiar distancia y modo de desplazamiento con las opciones **Jog Distance** (`Short`, `Medium`, `Long`, `Continuous`), que combinadas con Jog Speed permiten un control más fino del movimiento manual.

**d) Identificación en la interfaz**

- El valor activo de **Jog Speed** se muestra de forma permanente en el panel de jogging y, en algunas configuraciones, en la barra de estado del proyecto.  
- Cuando se modifica el valor, el cambio se refleja inmediatamente en la etiqueta de velocidad, indicando al operador el porcentaje actual antes de mover el robot.

**e) Recomendaciones de seguridad**

- Utilizar **velocidades bajas** al enseñar puntos sobre la cubeta de huevos o cerca de personas.  
- No usar velocidad alta durante la primera prueba de una trayectoria nueva.  
- Verificar siempre el sentido de movimiento antes de mantener pulsado un botón de jogging en modo continuo.

---

### 5. Descripción de las principales funcionalidades de EPSON RC+ 7.0 y su comunicación con el manipulador

**EPSON RC+ 7.0** es el entorno de desarrollo y operación para los controladores de robots EPSON (incluyendo la serie T). Permite programar, simular y monitorear aplicaciones robóticas desde un PC con Windows.  

**a) Funcionalidades principales**

1. **Entorno de programación SPEL+**
   - Editor de código con resaltado de sintaxis, ayuda integrada y comprobación de errores.  
   - Compilador y depurador para ejecutar programas paso a paso, con puntos de ruptura y visualización de variables.  

2. **Gestión de proyectos y robots**
   - Definición de proyectos que agrupan programas, puntos, variables y configuraciones del robot.  
   - Conexión a uno o varios controladores, gestión de backups y restauración de configuraciones.  

3. **Jog & Teach / Simulación básica**
   - Panel gráfico para mover el robot manualmente (Jog) y enseñar puntos de trabajo.  
   - Vista 3D para verificar el movimiento del robot y chequear alcances y posibles colisiones de forma básica.

4. **Simulador 3D y programación offline**  
   - Permite probar programas SPEL+ sin necesidad de ejecutar el robot físico, reduciendo tiempos de parada y riesgos durante el desarrollo.  

5. **Integración con opciones avanzadas**
   - Módulos para visión artificial, GUI Builder, PLC Function Blocks, Fieldbus I/O, etc., que permiten integrar cámaras, PLCs y HMIs al sistema robótico.  

**b) Comunicación con el manipulador**

- El controlador del T3-401S incorpora la electrónica de potencia y control, y se conecta al PC mediante enlace Ethernet o USB, según la configuración de la celda.  
- EPSON RC+ 7.0 establece una sesión de comunicación con el controlador, a través de la cual:
  1. **Descarga y carga programas SPEL+** (transferencia de código).  
  2. **Envía comandos de ejecución** (`Start`, `Stop`, `Reset`) indicando cuál función `main` debe ejecutarse.  
  3. **Lee y escribe variables, estados y E/S digitales**, permitiendo sincronizar el robot con sensores, válvulas del gripper y otros dispositivos externos.  
  4. **Monitorea alarmas y estado del sistema** (errores, límites, emergencias).

Durante la ejecución de una trayectoria (por ejemplo, el recorrido tipo caballo sobre la cubeta), EPSON RC+ 7.0 envía al controlador la secuencia de puntos y velocidades ya compilada; el controlador se encarga de interpolar los movimientos, respetar límites articulares y gestionar el perfil de velocidad del T3-401S.

---

### 6. Análisis comparativo entre EPSON RC+ 7.0, RoboDK y RobotStudio

**EPSON RC+ 7.0**, **RoboDK** y **RobotStudio** son herramientas relacionadas con programación y simulación de robots, pero con enfoques diferentes:

#### a) EPSON RC+ 7.0

- Software oficial de EPSON, ligado a sus controladores.  
- Combina programación, depuración y operación directa del robot en un solo entorno.  
- Ideal para:
  - Celdas donde el hardware es exclusivamente EPSON.  
  - Desarrollo de aplicaciones reales con el T3-401S (paletizado de huevos, pick & place, etc.).  

#### b) RoboDK

- Plataforma de **simulación y programación offline multimarca**, con una gran librería de robots de distintos fabricantes.  
- Permite:
  - Simular celdas con varios robots de marcas diferentes.  
  - Generar código en los lenguajes nativos de cada fabricante.  
- Muy usada en entornos académicos y de integración, donde se comparan distintos robots y se trabaja sin acceso directo al hardware.

#### c) RobotStudio (ABB)

- Software oficial de ABB para simulación y programación offline de sus robots.  
- Incluye un **Virtual Controller**, que es una copia del software real del controlador, permitiendo simulaciones casi idénticas al comportamiento real.  
- Ideal para:
  - Empresas que usan exclusivamente robots ABB (como el IRB 140).  
  - Validar programas RAPID antes de descargarlos al robot.

#### d) Interpretación general

- **EPSON RC+ 7.0** es la herramienta más cercana al **control directo** del T3-401S: permite programar, simular y ejecutar en el mismo ambiente, pero está limitada a robots EPSON.  
- **RoboDK** funciona como un “laboratorio virtual multimarca”; es muy útil para comparar el comportamiento del Motoman MH6, el ABB IRB 140 y el EPSON T3-401S dentro de una misma escena y generar código para cada uno.  
- **RobotStudio** es una suite especializada y muy precisa para robots ABB, complementando a EPSON RC+ y RoboDK cuando se trabaja con el IRB 140 y se requiere un modelo de controlador idéntico al real.  

En conjunto, en el contexto del laboratorio:
- **EPSON RC+ 7.0** se usa para implementar la trayectoria real en el T3-401S.  
- **RoboDK** y **RobotStudio** permiten comparar estrategias de simulación y programación para Motoman y ABB, y sirven como referencia para entender ventajas y limitaciones de cada ecosistema.

---

### 7. Diseño técnico del gripper neumático por vacío



---

### 8. Diagrama de flujo de la rutina de movimiento de huevos (patrón de caballo)



---

### 9. Plano de planta de la cubeta de huevos y posiciones iniciales



---

### 10. Código desarrollado en EPSON RC+ 7.0 (anexo)



---

### 11. Video de simulación e implementación física



---

## Conclusiones



---

## Referencias


