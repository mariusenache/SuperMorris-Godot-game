# SuperMorris: A 2D Platformer Game 
A 2D platformer game made with the Godot engine. [(playthrough video)](https://www.youtube.com/watch?v=rw2IV8Qgg_4)

**Overview**: SuperMorris is a 2D platformer prototype built with Godot Engine. Play as Morris, a bear collecting berries before hibernation. Navigate through the map, avoid spikes and falling off cliffs across two challenging levels in a classic platformer gameplay.

**Gameplay Mechanics**:
- Engine: Godot Engine
- Programming Language: GDScript
- Character Movement: Control Morris with basic movement and jumping mechanics.
- Physics: Utilizes custom gravity scaling and acceleration/deceleration for movement.
- Hazards and Lives: Start with five lives; lose a life upon touching spikes or falling off the map and return to the start menu if all lives are lost.
- Audio/Visual Feedback: Includes sprite animations and sound effects like "death" and "munch" sounds.
- Level Transitions: Complete levels by collecting all berries, with smooth fade-in and fade-out animations between levels and beat the game by reaching the den

**Technical Details**:
- GDScript: Manages player movement, physics, HUD updates, and level transitions.
- Custom Resources: Uses a PlayerMovementData resource for managing movement parameters.
- Event Handling: Signals manage level completion and game-over events for scalable game logic.
- HUD: Displays Morris's remaining lives with real-time updates.

**How to Play:** 
In the "executable" folder, you'll find the executable file to start playing.


