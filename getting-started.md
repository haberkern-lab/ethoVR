---
title: Getting Started
nav_order: 2
---

# Getting started

## First time setup
Install Unity and clone Janelia unity toolkit
* Install a recent version of Unity Hub and then Unity itself.
* Clone the janelia-unity-toolkit repository from GitHub into a local folder:
> $ git clone https://github.com/JaneliaSciComp/janelia-unity-toolkit.git

Now proceed with the step-by-step guide below.

## Step-by-step guide to setting up a new unity program
***Prerequisites***: Unity hub and at least one version of unity are installed and the Janelia Unity toolbox code has been cloned to a local directory.

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
* Option 1 – Manually install each package: In the new window, navigate to a toolbox directory and select the package.json file. Then click “Open”. The pop-up window will close and a new window will pop up listing all dependencies of the previously selected package. Click “Install”. Once the installation is complete, you can double check if the packages have been installed by again opening  “Window” → “Package Manager” and reviewing the list of packages under “Custom”. Repeat the steps above until all desired packages have been installed. The installed packages should now also appear in the “Packages” area of the “Project” tab.  In the latter, the “Editor” sub-folder is what contains the code.
* Option 2 – Use a installer: You can use a “manifest” to to install a specified list of packages and it’s dependencies. Simply navigate to and double click on the manifest file (which is a simple json formatted list and can be manually generated).

**Note** that Unity's Api Compatibility Level must be set to .NET 4.x in the project using the Janelia Basic Input/Output package (to support reading from serial ports):
* In the Unity editor's “Edit” menu, choose “Project Settings…” to raise the Project Settings window.
* In the “Player” tab, open the “Other Settings” tab.
* Under “Configuration”, set API Compatibility Level to .NET 4.x.
Without this change, System.IO.Ports will not be found, and the Unity editor will give errors like: type or namespace name 'SerialPort' could not be found.
