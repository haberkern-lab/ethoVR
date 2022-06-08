---
title: Getting Started
nav_order: 2
---

# Getting started with the Janelia Unity Toolkit
{: .no_toc }
Below you will find instructions on how to setup the software side of the virtual reality system. For further information on the hardware, please refer to information on the [Display](../display) and [Hardware-interface](../ethoVR/hardware) pages.
{: .fs-6 .fw-300 }

---
## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## First time setup
Install Unity and clone Janelia unity toolkit
* Install a recent version of Unity Hub and then Unity itself.
* Clone the janelia-unity-toolkit repository from GitHub into a local folder:
`$ git clone https://github.com/JaneliaSciComp/janelia-unity-toolkit.git`

Now proceed with the step-by-step guide below.

## Step-by-step guide to setting up a new unity program
<ins>Prerequisites</ins>: Unity hub and at least one version of unity are installed and the Janelia Unity toolbox code has been cloned to a local directory.

The settings and steps for setting up the virtual reality will depend on the experimental design and hardware. In the instructions below, experimental settings specific to the imaging rig described in [Haberkern et al, bioRxiv, 2022](https://biorxiv.org/content/10.1101/2022.05.17.492284v1.full) are provided as an example (in *italic*).

### 1. Create a new unity project
Open unity hub, select desired unity version (dropdown menu next to the “NEW” button”, then press “NEW”. Select 3D and choose a project name (this will be a directory name as well as the name of the unity program) and project directory.

### 2. Load packages from Janelia Unity toolbox
This is a two-step process. First we will install a package that will simplify the installation of packages from the Janelia Unity toolbox, then we will use this package to install other packages. You can use a json “manifest” file to install all necessary modules at once.

**Which packages are required?** This depends on the intended use. For a full explanation of what the different packages do, see [Janelia Unity Toolkit](https://github.com/JaneliaSciComp/janelia-unity-toolkit). For the experiments described in [Haberkern et al, bioRxiv, 2022](https://biorxiv.org/content/10.1101/2022.05.17.492284v1.full) the following 10 packages were necessary:
* Package Installer For Dependencies
* FicTrac Collision handling
* Fictrac (Basic FicTrac Support)
* Logging
* Collision Handling
* Setup Cameras N-gon
* Camera Utilities
* Force Render Rate
* General
* NI DAQmx Support
For experiments with the cylinder panorama world, you will also need to install “Background”.


**Install the installer package:** In the top menu bar, click “Window” → “Package Manager”. This should open a pop-up window. In the new window, click on the small “+” in the top left corner and select “Add package from disk”. Navigate to the directory that contains the Janelia Unity toolbox code and in there to the subdirectory “org.janelia.package-installer”. Select “package.json” and click “Open”. The package “Janelia Package Installer For Dependencies” should now be listed. Close the pop-up window.

**Install other packages:** In the top menu bar, click “Window” → “Install Package and Dependencies”. This should open a different pop-up window.
* <ins>Option 1 – Manually install each package</ins>: In the new window, navigate to a toolbox directory and select the package.json file. Then click “Open”. The pop-up window will close and a new window will pop up listing all dependencies of the previously selected package. Click “Install”. Once the installation is complete, you can double check if the packages have been installed by again opening  “Window” → “Package Manager” and reviewing the list of packages under “Custom”. Repeat the steps above until all desired packages have been installed. The installed packages should now also appear in the “Packages” area of the “Project” tab.  In the latter, the “Editor” sub-folder is what contains the code.
* <ins>Option 2 – Use a installer</ins>: You can use a “manifest” to to install a specified list of packages and it’s dependencies. Simply navigate to and double click on the manifest file (which is a simple json formatted list and can be manually generated).

**Note** that Unity's Api Compatibility Level must be set to .NET 4.x in the project using the Janelia Basic Input/Output package (to support reading from serial ports):
* In the Unity editor's “Edit” menu, choose “Project Settings…” to raise the Project Settings window.
* In the “Player” tab, open the “Other Settings” tab.
* Under “Configuration”, set API Compatibility Level to **.NET 4.x**.

Without this change, System.IO.Ports will not be found, and the Unity editor will give errors like: type or namespace name 'SerialPort' could not be found.

### 3. Create game objects and link up package code with objects

#### Create the virtual screen for perspective correction
* In the Unity editor’s “Window” menu, there should now be a “Setup Cameras, N-gon” midway down. Choose it to open a new window that allows configuration of cameras.
* The cameras will be created in the n-gon arrangement. The default values for “Number of cameras” and “Number of empty sides” (and also “Offset X (mm)” and “Offset Y (mm)” for now) will create a pentagon with one missing face. The offset values permit adjustments if the fly is not positioned at the center of the n-gon shape. You will have to use measurements from your projector rig to fill in the values for “Screen width (mm)”, “Screen height (mm)”, and “Fractional height”.
* *For my screen setup I use the following settings:*
    - Number of cameras: 4
    - Number of empty sides: 1
    - Screen width (any units, here cm): 5.8
    - Screen height (any units, here cm): 9.5
    - Offset X (Unity units, here 10 cm): 0
    - Offset Y (Unity units, here 10 cm): 0
    - Near (Unity units, here 10 cm): 0.01 (estimated distance of fly head from ground)
    - Far (Unity units, here 10 cm): 1000
    - Fractional height: 0.737 (fly head is positioned about 25 mm below the edge of the screen)
    - Rotation: -18

* *For the 2-projector behavior rig chose:*
    - Number of cameras: 2
    - Number of empty sides: 2
    - Screen width (any units, here dm): 1.0
    - Screen height (any units, here dm): 1.72
    - Fractional height: 0.33 (fly head is positioned about ...mm below the edge of the screen)
    - Rotation Y (deg): 45
    - Offset X (Unity units, here 10 cm): -0.32
    - Offset Y (Unity units, here 10 cm): 0
    - Near (Unity units, here 10 cm): 0.01 (estimated distance of fly head from ground)
    - Far (Unity units, here 10 cm): 1000

* Press that window’s “Update” button. In the Unity editor you should now see a “Fly” object, which is the parent for the four cameras, each with an associated screen plane.
* Place both the main camera and the “Fly” object at a distance of 1 mm above the pane (0.01 unity units). Adjust the main camera “near plane” to match the distance of the camera to the ground plane. I place the camera at y = 0.01 units (=1 mm for 10 cm units), so the near plane has to also be set to 0.01.

#### Force render rate
* In the Unity editor, in the “Hierarchy” panel, click the “Create” button in the upper-left, and choose “Create Empty”. In the “Hierarchy” panel, you should now see a “GameObject” item. Right-click on it, choose “Rename”, and rename it to “ForceRenderRate”.
* From the “Runtime” sub-folder of the “Janelia Force Render Rate” folder in the “Packages” area of the “Projects” tab, drag the “ForceRenderRate.cs” script and drop it on the new “ForceRenderRate” object.
* When the “ForceRenderRate” object is selected, the “Inspector” panel of the Unity editor should show some user interface for configuring the frame rate (default is 360Hz), and for giving a little debugging information in the “Console” panel (if desired). Note that Unity tries to maintain the specified frame rate when the game is running. *I set it to 144 Hz with 400 Hz frames to average.*

#### Adjoining Displays Camera
* Navigate to the Packages → Janelia Camera Utilities → Runtime folder. Select the AdjoiningDisplaysCamera script and attach it to the main camera object.
* In the new inspector panel, expand the field “Display Cameras”. In the submenu, you should see as many fields as “fly cameras” were generated with “Setup Cameras N-gon”. Drag the “fly cameras” into the fields in the order that matches the order of display ids. *In my case this is simply 1,2,3,4.*
* Enter the display dimensions of each projector display in pixels for”Display Width” and “Display Height”. *For my setup this is width = 480, height = 720 pixels. If the projectors have no built-in correction for back-projection, turn on mirror.*
* Use the “Progress Box…” (=Frame rate indicator) items to set up the little window that flickers black on even frames, white on odd. *Set to LOWER_LEFT, screen 1, 70 px*

#### Logging options
* Navigate to the Packages → Janelia Logging → Runtime → Log Options and attach it to the “Fly” object. This will add a new panel to the inspector.
* Make sure to select “Enable Logging”.

#### Fictrac interface
* Navigate to the Packages → Janelia FicTrac Collision Handling Support → Runtime → FicTrac Subject and attach it to the “Fly” object. This will add a new panel to the inspector.
* Make sure the settings are correct, in particular the socket port, the server address and the ball radius. *I use the following settings:*
  - Server address: 127.0.0.1 (default server for fictrac, should not need to be changed)
  - Port: 2000 (needs to be free and match with fictrac config file)
  - Ball radius:0.47 cm (unity units, so for 10 cm units 0.047)  0.044 for RZ
  - Smoothing count: 1
  - Enable log Fictrac message
* Optional (used to move around in the virtual world with buttons): Fly -> add component scripts -> janelia-> example kinematic subject

#### Communication with the NiDaq board
* Create a new folder (“Scripts”) in the Assets folder.
* Add a custom script [talk2NiDaqMx.cs](toadd) that reads from the NiDaq board and logs data building on the NiDaq and logging packages.
* Attach the script  to the main camera.

#### Customize the scene
See section [World construction](../ethoVR/worlds) for details.

### 4. Create standalone player app

#### Configure build
Use the Unity editor's `File/Build Settings...` menu item and click on `Player Settings` in the lower left, and set the `Company Name` to a name of your choice, e.g. `HHMI`. This controls the directory where the log will be saved, making it something like  `C:\Users\labadmin\AppData\LocalLow\HHMI\<nameOfWorld>)`. Close that (second) window.

#### Build standalone game
To build the stand-alone game, use the Unity editor's `File/Build Settings...` menu item. Then click the `Build` button and choose the build folder. A good practice is to manually create a folder called `Build` in the Unity project's top-level folder (i.e., the folder containing the `Assets` and `Packages` folders) and then choose that `Build` folder. Unity then will build the game and put the resulting `.exe` file in the chosen folder.
