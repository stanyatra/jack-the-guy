# jack-the-guy

jack-the-guy is a 2D platformer developed in Godot, focused on implementing responsive character movement, animation state management, and temporary ability-based gameplay mechanics.

The project utilizes Godot's physics system through `CharacterBody2D`, combining gravity simulation, collision handling, directional movement, and configurable jump mechanics. Player behavior is driven by a state-based architecture that dynamically switches between idle, running, jumping, and power-up animation sets.

Temporary abilities are implemented using asynchronous timers and runtime stat modification, allowing gameplay properties such as jump height and movement behavior to be altered for a limited duration before automatically reverting to their default values.

## Technical Components

- CharacterBody2D movement controller
- Physics-based jumping and gravity
- State-driven animation system
- AnimatedSprite2D integration
- Temporary power-up framework
- Runtime stat modification
- SceneTreeTimer & async event handling
- Input Map action system
- Collision detection and response
- Sprite orientation and direction handling
- Scene-based project architecture
- GDScript scripting

## Tech Stack

- Godot Engine 4.x
- GDScript
- CharacterBody2D
- AnimatedSprite2D
- SceneTreeTimer
- Godot Physics Engine
- Scene System

## Installation

### Clone the Repository

```bash
git clone https://github.com/your-username/jack-the-guy.git
