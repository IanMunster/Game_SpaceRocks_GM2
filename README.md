# Game Maker Tutorial - SpaceRocks 
 My introduction to GameMaker Studio 2. 

**Pros:**
 1. Nice Visual Interface
 2. Many in-build Function sound similar to Unity
 3. Easy publishing to [GX Games](https://gx.games/)
	
**Cons:**
 1. No Executable Export in Trial Version
 2. GM Language is too forgiving with Syntax

## Version 1.0
 > This **GameMaker Studio 2 (GMS2)** tutorial will guide budding video game creators through the process of creating their very own fully-functional version of the definitive asteroid space blaster. Aspiring game designers can make "Space Rocks" in GMS2 using the free version without coding, by using the drag and drop technology, or by coding with GameMaker Language.
 > Designed and presented by [Friendly Cosmonaut](https://www.youtube.com/channel/UCKCKHxkH8zqV9ltWZw0JFig), the "Space Rocks" video tutorials start out with an introduction to GMS2 before outlining how to program movement, attacking & collisions, scoring, lives, sound and effects before adding that final polish.

[ :placard: Main Tutorial Page](https://gamemaker.io/en/tutorials/make-your-own-arcade-classic)  
[ :card_file_box: Required Assets](https://marketplace.yoyogames.com/assets/7423/space-rocks-gml)  
[ :movie_camera: Tutorial Videos](https://www.youtube.com/playlist?list=PLhIbBGhnxj5JcbfoxS_CWTnImRL_wB_Wg)  
   - [x] Version 1.1. Intro to GM2
   - [x] Version 1.2. Setup and Movement
   - [x] Version 1.3. Attack and Collision
   - [x] Version 1.4. Score, Lives and Effects
   - [x] Version 1.5. Sound Effects and Polish

## Version 2.0
 > Our latest series of video tutorials for **GameMaker Studio 2 (GMS2)** is a return to our arcade shooter Space Rocks. Using your existing [Space Rocks](https://www.yoyogames.com/blog/485/make-your-own-arcade-classic) project, our new series takes on 5 different topics to really expand your game and knowledge. Once again these tutorials can be followed in GMS2 using the free version without coding, by using the drag and drop visual language, or by coding with GameMaker Language.
 > Presented again by [Friendly Cosmonaut](https://www.youtube.com/channel/UCKCKHxkH8zqV9ltWZw0JFig), the "Space Mods" series covers Cameras for expanding the playing field and following the action. *Parallax Backgrounds* for adding movement and depth to the look of space. *Enemy Factions* for filling out your game with antagonistic ships. *Power-ups* to the player ship to turn the tide of battle and lastly *Effects* to really polish your game off with pretty particles.

[ :placard: Main Tutorial Page](https://gamemaker.io/en/tutorials/space-mods-continue-your-space-rocks-game)  
[ :card_file_box: Download Assets](https://yoyo-www.yoyogames.com/tutorials/SpaceRocks_Assets.zip)  
[ :movie_camera: Tutorial Videos](https://www.youtube.com/watch?v=uBCXLlsQc2c&list=PLhIbBGhnxj5K1AGSvr99u1ZolHpAi31p4)  
   - [x] Version 2.1. Camera
        - [x] Version 2.1.1. Rudimentary Camera and Background (1/3)
        - [x] Version 2.1.2. Camera Code (2/3)
        - [x] Version 2.1.3. Asteroid Spawn Outside Camera (3/3)
   - [ ] Version 2.2. Parallax Background
   - [ ] Version 2.3. Enemy Factions
        - [ ] Version 2.3.1. ... (1/3)
        - [ ] Version 2.3.2. ... (2/3)
        - [ ] Version 2.3.3. ... (3/3)
   - [ ] Version 2.4. Power-ups
        - [ ] Version 2.4.1. ... (1/3)
        - [ ] Version 2.4.2. ... (2/3)
        - [ ] Version 2.4.3. ... (3/3)
   - [ ] Version 2.5. Effects and Polish
        - [ ] Version 2.5.1. ... (1/2)
        - [ ] Version 2.5.2. ... (2/2)


## Version 3.0
 Personal Additions, Tweaks and Polish.  
 Below is a quick list of Additions, Tweaks and Polish I made to my personal flavour of SpaceRocks Game.
	
### Tweaks
- [ ] Ship Speed: Cap speed to normal Max Speed
	
### Polish
- [ ] Bullets: Rotate According to Ships rotation. *Currently always points from Left to Right*
- [ ] Bullets: Remove Bullets outside of Camera. *Currently keep existing so Point can be made by hitting Unseen Objects*
		> Change the event ```"Event > Other > Outside Room"``` to ```"Event > Other > Views > Outside View 0"``` event.
- [X] ~~Music: Stop music on Death. *Currently overlaps multiple times on Death*~~ Fixed in v2.1.3 by Uncommenting Music-Playing Check.