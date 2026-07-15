# Godot FPS Interaction Prototype

A simple first-person interaction prototype built with **Godot 4**.

This project explores the fundamentals of creating a first-person controller with object interaction mechanics, including grabbing and dropping physics objects.

## Features

- 🎮 First-person player controller
- 🖱️ Mouse look
- 🚶 WASD movement
- 🪂 Jumping
- ✋ First-person hands
- 📦 Physics-based interactable objects
- 🤏 Grab and drop mechanics
- 🌍 Basic 3D environment with lighting
- 🪑 Reusable interactable scenes (Table, Cube)

## Project Structure

```
res://
├── scenes/
│   ├── interactables/
│   │   ├── cube.tscn
│   │   └── table.tscn
│   │
│   ├── player/
│   │   └── player.tscn
│   │
│   └── world/
│       └── main.tscn
│
├── scripts/
└── project.godot
```

## Controls

| Action | Key |
|---------|-----|
| Move Forward | W |
| Move Backward | S |
| Move Left | A |
| Move Right | D |
| Jump | Space |
| Grab / Drop Object | E |
| Look Around | Mouse |

## Requirements

- Godot Engine **4.x**

## How to Run

1. Clone the repository.

```bash
git clone https://github.com/Shibi404/godot-first-person-controller.git
```

2. Open **Godot 4**.

3. Click **Import**.

4. Select the project's `project.godot` file.

5. Click **Import & Edit**.

6. Press **F5** or click **Run Project**.