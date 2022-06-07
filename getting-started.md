# Getting started

## First time setup
Install Unity and clone Janelia unity toolkit
* Install a recent version of Unity Hub and then Unity itself.
* Clone the janelia-unity-toolkit repository from GitHub into a local folder:
> $ git clone https://github.com/JaneliaSciComp/janelia-unity-toolkit.git

Now proceed with the step-by-step guide below.

## Step-by-step guide to setting up a new unity program
***Prerequisites***: Unity hub and at least one version of unity are installed and the Janelia Unity toolbox code has been cloned to a local directory.

The settings and steps for setting up the virtual reality will depend on the experimental design and hardware. In the instructions below, experimental settings specific to the imaging rig described here [link] are provided as an example (in *italic*).

1. Create a new unity project
Open unity hub, select desired unity version (dropdown menu next to the “NEW” button”, then press “NEW”. Select 3D and choose a project name (this will be a directory name as well as the name of the unity program) and project directory.
2. Load packages from Janelia Unity toolbox
This is a two-step process. First we will install a package that will simplify the installation of packages from the Janelia Unity toolbox, then we will use this package to install other packages. You can use a json “manifest” file to install all necessary modules at once.
