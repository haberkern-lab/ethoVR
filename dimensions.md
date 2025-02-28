---
title: Dimensions and Coordinates
nav_order: 3
permalink: /dims
---

# Definition of coordinate systems and dimensions
{: .no_toc }
Below we provide information on how 

{: .fs-6 .fw-300 }

---
## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}
---

## Defining spatial scale
The spatial scale of objects in unity directly affects how these objects behave if they are involved in physics simulations (presumably because their mass is derived from their scale?). For example, it takes more force to move a 1 m sphere compared to a 1 cm sphere and once the larger sphere moves it will move for longer.

Since we are not using  the unity physics engine to update positions of objects (at least not the virtual position of the fly -- see closed-loop position updates for details), the scale of worlds in unity doesn’t actually matter. Instead the scale can be imposed by the units of the ball radius, which is used to convert the ball rotation (reported in radians or “ticks”) to movements in the 2D plane.

The ball radius can be exposed as a variable in the unity editor (and later in a GUI).

## Definition of angles in cylinder worlds
<img src="https://haberkern-lab.github.io/ethoVR/assets/screenDimensions.png" alt="" width="200"/>
