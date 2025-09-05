# Herramienta de Simulación 3D para Patrulla Autónoma con Dron en Operaciones de Salvamento

Este repositorio contiene el **código fuente principal** asociado al Trabajo de Fin de Grado de **Jesús Ramos Rodríguez** (Grado en Desarrollo de Videojuegos, Facultad de Informática, UCM).

La finalidad del repositorio no es la replicación completa de la aplicación, sino servir como **referencia técnica** para la consulta de funcionalidades específicas implementadas en la aplicación, el servidor y el simulador, complementando la memoria del proyecto.

---

## 📂 Estructura del repositorio

```
+---App_code
|       BatteryManager.cs
|       CameraController.cs
|       Drone.cs
|       DroneMapController.cs
|       DroneWSClient.cs
|       IconsLayer.cs
|       MeshPaintData.cs
|       MeshPaintManager.cs
|       MissingPerson.cs
|       RouteManager.cs
|       SpeedManagement.cs
|       ToggleColorChanger.cs
|       Unit.cs
|       UnitIndicator.cs
|       UnitSelectionManager.cs
|       ZoneProgressManager.cs
|       ZoneSelector.cs
|
+---Server_code
|       connection_test.py
|       execute_server.txt
|       server.py
|
\---Simulator_code
        launch_dronekit.ps1
        setup_commands.txt
```

---

## 📌 Descripción de los componentes

### 1. `App_code`
Contiene los **scripts de Unity (C#)** que implementan la lógica principal de la aplicación:
- **Gestión del dron**: `Drone.cs`, `DroneWSClient.cs`, `RouteManager.cs`.
- **Gestión de energía y batería**: `BatteryManager.cs`.
- **Algoritmo de generación de rutas**: `ZoneSelector.cs`.
- **Interfaz y elementos gráficos**: `CameraController.cs`, `IconsLayer.cs`, `UnitSelectionManager.cs`, etc.
- **Módulos de interacción y simulación de eventos**: detección de personas (`MissingPerson.cs`), progreso de zona (`ZoneProgressManager.cs`).

### 2. `Server_code`
Contiene el **servidor de comunicación vía WebSockets** desarrollado en Python:
- `server.py`: código principal del servidor. Simula el consumo de batería, retransmite telemetría desde el simulador y recibe órdenes desde la aplicación.
- `connection_test.py`: script auxiliar para verificar la conexión entre el servidor y el simulador.
- `execute_server.txt`: archivo por lotes renombrado como `.txt` para su consulta. En su versión original (`.bat`) activa el entorno virtual correspondiente y ejecuta `server.py`.

### 3. `Simulator_code`
Scripts relacionados con la ejecución de **DroneKit-SITL** y la integración con ArduPilot:
- `setup_commands.txt`: archivo `.sh` ejecutable en Linux que inicializa el simulador con los parámetros necesarios.
- `launch_dronekit.ps1`: script de PowerShell que facilita la ejecución de `setup_commands` desde Windows.

---

## 🛠️ Requisitos técnicos

- **Aplicación**: Unity 2022.3 LTS o superior, con el plugin de **Mapbox para Unity**.  
- **Servidor**: Python 3.10+ con dependencias de DroneKit y WebSockets.  
- **Simulador**: ArduPilot + DroneKit-SITL en entorno Linux (WSL recomendado para Windows).
