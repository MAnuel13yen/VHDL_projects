# VHDL_projects
Implementaciones VHDL para FPGA
# Proyecto: clock1s - Divisor de Reloj en VHDL

Este proyecto implementa un divisor de frecuencia para generar una señal de 1 Hz a partir de una señal de reloj de entrada de 50 MHz. Es útil para temporizadores, contadores y control de displays en FPGA.

---

## 📁 Archivos incluidos

- `divisor.vhd`: Módulo principal del divisor de reloj.
- `testbench_divisor.vhd`: Banco de pruebas para simular el funcionamiento.
- `divisor_waveform.png`: Imagen de la simulación en ModelSim.
- `README.md`: Este archivo con las instrucciones.

---

## ⚙️ Requisitos

- FPGA Intel (ej. DE10-Lite con Cyclone IV)
- Quartus Prime (18.0 o 19.1)
- ModelSim-Altera (opcional para simulación)

---

## ▶️ Cómo usar

1. Abre Quartus Prime.
2. Crea un nuevo proyecto y agrega `divisor.vhd`.
3. Asigna el pin de reloj según tu FPGA (ej. `PIN_23` para 50 MHz).
4. Compila y sube al FPGA.
5. Conecta la salida a un LED para verificar la frecuencia (parpadea cada 1 segundo).

---

## 🧪 Simulación (opcional)

Usa `testbench_divisor.vhd` en ModelSim o GTKWave para verificar el comportamiento antes de cargar al FPGA.

---

## 🧠 Autor

- Manuel
- GitHub: [MAnuel13yen](https://github.com/MAnuel13yen)
