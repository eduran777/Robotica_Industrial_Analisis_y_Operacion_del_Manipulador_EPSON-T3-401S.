# 🤖 Informe Laboratorio No. 03 – Análisis y Operación del Manipulador EPSON T3-401S

---

## 📘 Descripción general

Este repositorio contiene el **informe técnico y el material complementario** del  
**Laboratorio No. 03 – Análisis y Operación del Manipulador EPSON T3-401S**, desarrollado en el marco del curso de **Robótica – Facultad de Ingeniería, Universidad Nacional de Colombia (UNAL)** durante el semestre **2025-II**.

El propósito del laboratorio es comprender el **funcionamiento, operación manual, configuraciones iniciales y programación** del robot industrial **EPSON T3-401S**, junto con su entorno de desarrollo **EPSON RC+ 7.0**.

Además, se realiza una **comparación técnica** entre tres robots industriales:  
**Motoman MH6**, **ABB IRB 140** y **EPSON T3-401S**, analizando capacidades, aplicaciones y diferencias entre arquitecturas robóticas (articulado vs. SCARA).

También se estudian y comparan herramientas de simulación y programación:  
**RoboDK**, **RobotStudio** y **EPSON RC+ 7.0**, evaluando ventajas y limitaciones de cada una dentro de entornos educativos e industriales.

---

## 👥 Autores

- **Esteban Durán Jiménez**  
- **Ana María Orozco Reyes**

**Facultad de Ingeniería – Universidad Nacional de Colombia**  
**Curso: Robótica | 2025-II**

---

## 🧩 Contenido del repositorio

| Carpeta / Archivo | Descripción |
|-------------------|-------------|
| `Informe_Lab3_EPSON_T3_401S.md` | Informe principal con desarrollo teórico, comparaciones y análisis. |
| `Imagenes/` | Imágenes de apoyo (diagramas, posiciones home, capturas de EPSON RC+, etc.). |
| `planos/` | Planos de la cubeta de huevos y disposición de la celda robótica. |
| `codigo/` | Código SPEL+ utilizado para la trayectoria tipo “caballo” sobre la cubeta. |
| `videos/` o enlace externo | Video de simulación e implementación física de la rutina en el T3-401S. |
| `README.md` | Este archivo. |

---

## 🧠 Temas principales abordados

1. **Cuadro comparativo** entre Motoman MH6, ABB IRB 140 y EPSON T3-401S.  
2. **Configuraciones HOME** del EPSON T3-401S y posición de cada articulación.  
3. **Movimiento manual** del robot en EPSON RC+ 7.0 (Joint / World / Tool).  
4. **Niveles de velocidad** para jog y su configuración en EPSON RC+.  
5. **Funciones principales de EPSON RC+ 7.0** y cómo se comunica con el manipulador.  
6. **Comparación entre EPSON RC+**, **RoboDK** y **RobotStudio**.  
7. **Diseño de un gripper neumático por vacío** para manipulación segura de huevos.  
8. **Programación de una trayectoria tipo “caballo”** para mover dos huevos dentro de una cubeta 6×5.  
9. **Diagrama de flujo** de la rutina y **plano de planta** de la celda.  

---

## ⚙️ Herramientas y software utilizados

| Herramienta | Función |
|--------------|---------|
| **EPSON T3-401S (SCARA)** | Manipulador principal del laboratorio. |
| **EPSON RC+ 7.0** | Programación, simulación y operación del robot. |
| **SPEL+** | Lenguaje de programación del T3-401S. |
| **RoboDK** | Comparación de trayectorias y simulación multimarca. |
| **RobotStudio** | Simulación específica para robots ABB. |
| **Diseño CAD (Fusion 360 / SolidWorks)** | Bocetos del gripper y soporte de ventosa. |

---

## 📊 Comparaciones clave

| Aspecto | Motoman MH6 | ABB IRB 140 | EPSON T3-401S |
|---------|--------------|--------------|----------------|
| Tipo de robot | Articulado | Articulado | SCARA |
| Grados de libertad | 6 | 6 | 4 |
| Carga útil | 6 kg | 6 kg | 3 kg |
| Alcance | 1422 mm | 810 mm | 400 mm aprox. |
| Repetibilidad | ±0.08 mm | ±0.03 mm | ±0.02 mm |
| Aplicaciones | Soldadura, pick&place | Ensamble, empaquetado | Ensamble rápido, pick&place, inspección |

---

## 🧰 Procedimientos destacados

- Movimientos manuales mediante la ventana **Jog & Teach**.  
- Configuración de referencia **HOME / SAFE POSITION**.  
- Ajuste de velocidad en **Jog Speed** y **Jog Distance**.  
- Registro de puntos (`Teach Point`) para trayectorias.  
- Diseño de gripper con ventosa y control desde E/S digitales.  
- Programación en **SPEL+** de una secuencia tipo caballo sobre una cubeta 6×5.  
- Comparación entre ecosistemas de simulación industrial.

---

## ♟️ Trayectoria tipo "caballo" – Descripción rápida

Se diseña un algoritmo capaz de mover **dos huevos** dentro de una cubeta 6×5, donde cada movimiento permitido sigue el patrón del **caballo de ajedrez**.  
El robot alterna entre ambos huevos y recorre todas las posiciones sin colisionar ni salir del workspace.

---

## 📺 Video de simulación e implementación

🎥 *(Agregar enlace cuando el video esté disponible)*

---

## 🧾 Licencia y uso académico

Proyecto realizado con fines **académicos y formativos** para el curso de **Robótica – UNAL 2025-II**.  
El contenido puede ser reutilizado con fines educativos citando a los autores y la institución.

---

## 💬 Contacto

Para dudas o comentarios:

- 📧 **Esteban Durán Jiménez** – \<correo\>  
- 📧 **Ana María Orozco Reyes** – \<correo\>  

---
