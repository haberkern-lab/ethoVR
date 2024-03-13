---
title: World construction
nav_order: 3
permalink: /worlds
---

# Construction of virtual environments
{: .no_toc }
This page provides information on how to construct different types of virtual environments. This information is intended as a starting point, as the exact settings will depend on your experimental question and hardware.
{: .fs-6 .fw-300 }

---
## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}
---

## Definition of dimensions and orientation

### Defining spatial scale
The spatial scale of objects in unity directly affects how these objects behave if they are involved in physics simulations (presumably because their mass is derived from their scale?). For example, it takes more force to move a 1 m sphere compared to a 1 cm sphere and once the larger sphere moves it will move for longer.

Since we are not using  the unity physics engine to update positions of objects (at least not the virtual position of the fly -- see closed-loop position updates for details), the scale of worlds in unity doesn’t actually matter. Instead the scale can be imposed by the units of the ball radius, which is used to convert the ball rotation (reported in radians or “ticks”) to movements in the 2D plane.

The ball radius can be exposed as a variable in the unity editor (and later in a GUI).

### Definition of angles in cylinder worlds
<img src="https://haberkern-lab.github.io/ethoVR/assets/screenDimensions.png" alt="" width="200"/>


## Customize distant features

### Simulation of a fixed panorama using a background cylinder
This option is used for generating a 1D cylinder panorama where different images can be loaded in at run time.
* Install the Janelia Unity Toolkit package “Background”
* Go to Window → Set Up Background Cylinder.
* In the popup window, select the radius and height of the cylinder and choose a game object to tether it to (should be “Fly”).
* Press update.
There is an ipython notebook for generating panorama textures (generatePanoramas.ipynb in https://github.com/hjmh/vrStim). This notebook also gives instructions for how to set the radius and height for the virtual cylinder to make sure the texture is not distorted.

### Receptive field mapping procedure
* Use background cylinder with texture for receptive field mapping (single small feature)
* Add script to background cylinder which remaps the texture and logs the remapping steps
* Add additional constraint to make sure the cylinder does not only move with the fly but also rotates (reorients) with the fly. To do this, select the background cylinder object, in the inspector → add component → Rotation Constraint. Select the Fly object as the constraint source.


### Customize skybox (optional)
**Option 1**: Use the built-in skybox, which comes with a brightness gradient and a sun spot. You can customize the sun spot by varying the rotation of the directional light which is coupled to the sky box.

**Option 2**: To generate a flat solid background, you can simply change the Camera setting “Clear Flags” from “Skybox” to “Solid color”. To do this, select the main camera object and go to the “Camera” tab in the Inspector panel. Note that this creates different lighting settings than when a flat background is generated with a custom flat skybox.

**Option 3**: Load a custom skybox. This allows for the highest degree of control.
For this approach, one needs to first create 6 textures that form a cube map of the sky. Philip Hubbard wrote a python script that allows rendering such cube maps with the Nishita model in Blender (2.9 or higher).

* To create a **new skybox material**:
    * In the menu bar navigate to Assets → Create → Material. You should rename it and move it into a new folder in Assets called “Materials”.
    * In the Shader drop-down, click Skybox, then the skybox Shader you want to use (6-sided).
    * You can now fill out the properties on the Material to set up the skybox. The properties on the material depend on the skybox shader the material uses. For the 6-sided skybox, you have to map 6 texture images to the 6 sides.
    * The mapping works as follows
        * *for gradients*: +z:yNeg, -z:yPos, +x: xNeg, -x:xPos, +y:zPos, -y:zPos
        * *for sun disks*: +z:xNeg, -z:xPos, +x: yNeg, -x:yPos, +y:zPos, -y:zPos
    * See below for how to generate skybox textures. Place these textures into a new folder called “Textures” in the Assets folder.
    *  For each of the image textures, set Wrap Mode in the inspector window to “Clamp” to avoid black lines in the rendered world

* Go to Window → Rendering → Lighting to open the lighting window
* In the Environment tab you can select your skybox of choice.
* Adjust directional lighting (see below)

See also the [unity documentation](https://docs.unity3d.com/560/Documentation/Manual/HOWTO-UseSkybox.html).

### Make a custom skybox texture with Blender
#### Skybox from blender scene
You can generate a Blender scene and then take 6 images to generate a cube map from inside this scene. This approach makes it possible to make a skybox that mimics the simulated 1D scene with a background cylinder.

Scripts for generating the cube maps in Blender can be found [here](https://github.com/JaneliaSciComp/blender-spherical-video). Navigate to the cloned repo and use the following command:
`blender-spherical-video haberkernh$ Blender --background --python blender-spherical-video/sphericalVideo.py -- -i <pathToBlenderWorld> -o <directoryWhereToSaveImages>`

#### Naturalistic skybox using models implemented in Blender
TODO

## Lighting
Unity provides the option of a “Directional Light” object, which can be used to simulate the sun. See the [unity documentation](https://docs.unity3d.com/Manual/Lighting.html) for reference.

### Lighting with the default skybox
The default skybox is coupled to the default directional light, such that the simulated sun spot and the color of the sky and environmental lights change as the position of the directional light is changed. For example, pointing the directional light up simulates night, whereas pointing the light directly down simulates noon.

### Lighting with a custom skybox
When you use a custom sky box, it might make sense to adjust the direction of the directional light to match bright/dark parts of the sky or the position of the simulated sun spot. This can be adjusted by selecting the directional light and changing the rotation in the Transform tap.

*For my experiments I mostly use the light position at 15 degree elevation (15 x rotation) and for gradient skyboxes azimuth is 90 (90 y rotation). Further set the color to white.*

## Ground plane
First, create a ground plane object:
* Create a new object (“Plane”).
* Place the plane at (0,0,0) and scale to e.g.  x=200, z=200, y=1. The exact size in x and z depends on what scale you need the world to have.

Next, generate a ground plane material:
* Choose a ground plane texture and place the texture image in the Textures folder in Assets.
* Generate a new material called “ground”.
* Attach a ground plane texture to the material Albedo. I use the whiteNoise_verydark.jpg texture (see below). Set the Albedo color to a dark gray (I use #202020). Set Metallic and Smoothness to 0.
* Set the tiling under Emission to x = y =50. This setting will influence the spatial scale of the texture
* Attach the new material to the ground plane object

[todo: add some ground plane textures]

<ins>Note</ins>: If the horizon line is relatively high relative to the height of the screen, it is possible that the camera frustum cuts through the ground plane and the skybox is shown on the bottom of the screen. This part of the projected image should be covered by the ball, but if the sky is bright, this might increase noise in the imaging. A simple workaround is to add a second, black ground plane (black material with metallic set to 1, smoothness to 0) a couple of cm below the actual ground.


## Scene construction with approachable objects

### Importing 3D models from outside Unity
#### Imports from Blender
Blender files can be imported by drag and drop into the Assets folder. To access and edit individual meshes, the blender-imported objects need to be unpacked.

#### Add custom asset packages
It is possible to add fancy 3D models into Unity.
* Go to Assets → Import package → Custom package .. In the popup window, navigate to asset package and doubleclick to import. Go with the default import.
* Now the asset will be listed in the project panel under Assets → Models. Drag and drop the desired model into the scene.

### Grid of local objects with small jitter

#### Setup
* In a folder outside of any unity project, place folders with the plant models (multiple LODs if desired) in “models”.
* In the same folder, place your json spec files describing the desired layout.
* Customize the spec file

#### Generate a plant layout
* Generate a scene for an experiment (see section “step-by-step guide for setting up a new unity program”)
* <ins>Add PlantLayout script</ins>: Create a “Scripts” folder in the “Assets’ folder if none exists yet. Inside, create a folder named “Editor” and place the `PlantLayout.cs` script inside. I choose 1 as random seed. (Note: this will likely move into a Janelia toolkit package eventually.)
* Generate the plant array:
    * Navigate to the Texture folder in Assets. It should contain a new texture for the plant objects. If the albedo texture is colored, replace it with a monochrome image.
    * Select the new material and change the Albedo color to `202020` to make the plants look darker. Then set the smoothness = 0.  This is motivated by the idea that we simulate a blue/UV scene.
* To collect statistics on the amount of sky that is visible, you can add `BlackPixelCounter.cs`, `ButtonRotTransWithBirdseye.cs` and `PostRateLogger.cs` to the scripts folder as well and connect all three with the fly object. To avoid confusion, detach the scripts from the fly object before building the standalone player for experiments.


<ins>Black Pixel Counter</ins>: You can attach this script to the Fly (from `Scripts/BlackPixelCounter.cs`). It then changes the background color for the four cameras to black, and runs a post-process that counts the black pixels with the GPU. The current version does not have any noticeable performance impact, but you can toggle it off and on by pressing the Enter key. The `Scripts/PoseRateLogger.cs` script displays the percentage of pixels that are black in the red text that also includes the current frame rate.

### Y-maze

[Doc ToDo]
