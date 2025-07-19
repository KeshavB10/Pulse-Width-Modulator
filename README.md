# 🧭 RTL-to-GDSII Flow for PWM Generator – Cadence Innovus

This repository documents the complete **ASIC physical design flow** for a **Pulse Width Modulation (PWM)** generator module using **Cadence Innovus**, targeting a standard digital ASIC flow from **RTL to GDSII**.

---

## 📌 Overview

- **Design**: Pulse Width Modulation (PWM) Generator  
- **RTL Language**: Verilog HDL  
- **Target Technology**: [Specify foundry node if known, e.g., 45nm FreePDK or GF 12nm]  
- **Tool Used**: Cadence Innovus  
- **Flow Implemented**:  
  - Synthesis  
  - Floorplanning  
  - Placement  
  - Power Planning  
  - CTS  
  - Routing  
  - Physical Verification  
  - GDSII Generation  

---

## ⚙️ Design Description

A PWM generator produces a modulated square wave signal with a variable duty cycle. This is essential in digital control, power electronics, and communication systems. The module was synthesized and routed following industry-standard backend flow.

---

## 🧱 Physical Design Snapshots

Below are key stages of the layout, captured using **Cadence Innovus**:

---

### 🔲 1. Cell Placement

![Cell Placement](./Cell%20Placement.png)

> **Description**:  
Standard cells are arranged in legal rows within the defined core area after floorplanning. Cells are placed considering timing, congestion, and logic proximity.

---

### 🔍 2. Zoomed-in Placement

![Zoomed Placement](./Placement%20Zoomed.png)

> **Description**:  
A magnified view showing standard cell instances, pin placements, and localized congestion before routing.

---

### ⚡ 3. Power Ring and Stripes

![Power Ring and Stripes](./Power%20Ring%20and%20stripes.png)

> **Description**:  
Global power delivery network is constructed with:
- **Rings** on Metal5/Metal6 surrounding the core.
- **Stripes** across rows to ensure voltage reach.
- Connection to macro and standard cell VDD/VSS pins.

---

### 🔌 4. Power Routing Complete

![Power Routing](./Power%20Routing.png)

> **Description**:  
Power rings and stripes are merged, providing continuous VDD/VSS access. This is critical to minimize **IR drop** and support **EM-aware** routing.

---

### 🧩 5. Filler Cells Inserted

![Filler Cells](./After%20Filler%20Cells.png)

> **Description**:  
Post-placement, **filler cells** are inserted to:
- Maintain well tap connections.
- Ensure n-well continuity.
- Avoid open diffusion regions and DRC issues.

---

### 🗺️ 6. GDSII Layer View

![GDSII Layers](./Data_GDSII%20Layers.png)

> **Description**:  
Snapshot of the final **GDSII stream**, showing all physical layers including:
- Active
- Poly
- Metals (M1–M6)
- Via layers

Color-coded for clarity in metal stack and layer transitions.

---

### 🔗 7. GDSII – Net Visualization

![GDSII Nets](./Data_GDSII%20Nets.png)

> **Description**:  
Route view highlighting:
- Signal nets in distinct colors.
- Metal layers used.
- Congestion and wirelength distribution.

---

### ✅ 8. Final GDSII Layout

![Final GDSII](./Final%20GDSII.png)

> **Description**:  
Tape-out ready design with all components:
- Standard cells
- Routed interconnect
- Power grid
- Filler cells
- IOs and pads

Successfully passes DRC/LVS.

---

## 📁 Directory Structure

```
├── src/                     # RTL Verilog files
├── scripts/                 # SDC, floorplan, Innovus setup scripts
├── reports/                 # Timing, DRC, LVS, utilization reports
├── images/                  # Layout screenshots (above visuals)
├── outputs/                 # Final GDSII, LEF, DEF files
└── README.md
```

---

## 📊 Reports Summary

| Stage         | Status     |
|---------------|------------|
| Synthesis     | ✅         |
| Floorplanning | ✅         |
| Placement     | ✅         |
| Power Planning| ✅         |
| CTS           | ✅         |
| Routing       | ✅         |
| DRC           | ✅         |
| LVS           | ✅         |
| GDSII         | ✅ Finalized |

---

## 📌 Future Work

- Integrate IR-drop analysis
- Add CTS visualizations
- Run PrimeTime for STA signoff
- Include DEF/GDS export scripts

---

## 👤 Author

**[Your Name]**  
Final Year B.Tech ECE | RTL to GDSII Enthusiast  
[LinkedIn/GitHub/Email if you'd like to share]

---

## 📜 License

This project is for academic/research learning. Reach out for collaboration.
