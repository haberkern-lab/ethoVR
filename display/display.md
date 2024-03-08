---
layout: default
title: Display
nav_order: 4
has_children: true
permalink: /display
---
# Projector-based display

Materials for constructing a panoramic visual display using DLP projectors, which back-project an image to a single side of the screen.
{: .fs-6 .fw-300 }

We include materials for three screen geometries:
* screens arranged in a regular **pentagon** (**4 projectors**), 
* screens arranged in a **cube** (**3 projectors**), or 
* screens arranged in a **triangular** shape (**2 projectors**). 

In all cases one side (behind the fly) is open. The Janelia Unity Toolkit supports any such polygonal screen with one open face. The advantage of a design with flat surfaces is, that it does not require any spatially-modulated brightness corrections for projections.

![three screen geometries](https://haberkern-lab.github.io/ethoVR/assets/display/screen_styles.jpg)

It is possible to use the built-in illumination source for the projectors, or modify the projectors to use an external illumination source. Instructions for projector modifications can be found [here](projector-mod). See below for an example of a 4-projector screen with projectors using a light-guide.

![photo of imaging rig display](https://haberkern-lab.github.io/ethoVR/assets/display/imagingRig_projectors_photo.jpg)
