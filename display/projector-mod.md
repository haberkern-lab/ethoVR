---
layout: default
title: Projector modification
parent: Display
nav_order: 3
---

# Instructions for installing an external light source
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

The modification instructions below are for the DLPDLCR2010EVM model by Texas Instuments. Some of the steps might be applicable to other models, other steps might require extensive adjustments.

Parts should be printed with an SLA, MJF or SLS printer. If needed there are online [printing services](https://www.hubs.com/3d-printing/).

A modification guide for the DLP LightCrafter Display 3010EVM-G2 (TI DLPDLC3010EVM-G2) can be found [here](https://haberkern-lab.github.io/ethoVR/assets/otherdocs/TI DLPDLC3010EVM-G2 modification guide.pdf). It includes the following custom-designed 3D printed parts:
*	1x [PCB brace](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/PCB BRACE.stl)
*	1x [light guide adapter](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/LIGHT GUIDE ADAPTER.stl)
*	1x [Vertical Mounting Plate](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/3010 MOUNT PLATE.stl)
*	1x [Retaining bracket](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/3010 MOUNT PLATE RETAINER FIXED.stl)

---

## Disassembly
First, make sure all power is disconnected and you are properly grounded to prevent damaging components. It is advisable to retain all screws, components, and hardware as some will be reused in the new configuration.

1. Remove the 2 screws holding the optical engine mounting plate. Gently invert the plate.
![step 1](../../assets/projectorDisassembly_step1.png)
2. Disconnect the two LED ribbon cables either from the optical engine or the small circuit board.
![step 2](../../assets/projectorDisassembly_step2.png)
3. Gently pry the gold ribbon cable from the main circuit board.
![step 3](../../assets/projectorDisassembly_step3.png)
4. Remove the screws/nuts holding the optical engine to the plate and save them for a later step.
5. Pry off the LED assembly from the opposite side of the ribbon cable. The front LED assembly can be left in place.
![step 5](../../assets/projectorDisassembly_step5.png)
6. Remove the projector circuit board assembly from the base plate. Retain the 5 M3 screws for a later step.
![step 6](../../assets/projectorDisassembly_step6.jpg)
7. Disassembly complete. For modification you will need the optical engine, circuit board and fasteners mentioned above.
![step 7](../../assets/projectorDisassembly_step7.jpg)

## Reassembly and modifications
<img src="../../assets/projectorReassembly_step0.png" alt="overview" width="600"/>

### Projector modifications
**Commercial parts**
* 1x [Silver first surface mirror](https://www.edmundoptics.com/p/25-x-25mm-silver-4-6lambda-mirror/31987/)
* 3x [18mm M3 pan head screws](https://www.mcmaster.com/92000A127/)
* 3x [6mm M3 pan head screws](https://www.mcmaster.com/90116A151/)
* 3x [#4-40 nuts](https://www.mcmaster.com/91841A005/)
* 2x [#00-96 screws](https://www.mcmaster.com/92453A862/)
* [VHB tape](https://www.mcmaster.com/75935A12/)

**3d printed parts (per projector)**
* 1x [PROJECTOR MOUNT FOR ADJ XY LLG](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/PROJECTOR MOUNT FOR ADJ XY LLG V2.stl)
* 1x [PROJECTOR LIGHTBLOCK](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/PROJECTOR LIGHTBLOCK 2.stl) (Optional, simpler methods for blocking board LEDs exist)
* 1x [FLYVR PIVOT MOUNTPLATE](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/FLYVR PIVOT MOUNTPLATE.stl)
* 1x [CORNER FLYVR PIVOT MOUNTPLATE](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/CORNER FLYVR PIVOT MOUNTPLATE v2.stl) (Optional, helpful if space is limited)

**Modification steps**
1. Prepare the PROJECTOR MOUNT FOR ADJ XY LLG for assembly by using the #00-96 screws to cut threads into the printed holes and tap the hole on the vertical face for a #4-40 screw.
<img src="../../assets/projectorReassembly_step1.png" alt="step1" width="400"/>
2. Place the optical engine and ribbon cables onto the PROJECTOR MOUNT FOR ADJ XY LLG and secure with the screw from disassembly step #4.
<img src="../../assets/projectorReassembly_step2.png" alt="step2" width="400"/>
3. Carefully connect the ribbon cable from the optical engine to the circuit board.
<img src="../../assets/projectorReassembly_step3.png" alt="step3" width="400"/>
4. Gently fold the assembly over the circuit board and secure with 3 18mm M3 pan heads.
<img src="../../assets/projectorReassembly_step4.png" alt="step4" width="400"/>
5. Place the FLYVR PIVOT MOUNTPLATE, secure with the M3 screws from disassembly step #6
<img src="../../assets/projectorReassembly_step5.jpg" alt="step5" width="400"/>

### Liquid Light Guide Alignment Sub-Assembly
This allows for fine adjustment of the XY position of your light source relative to the optical engine.

<img src="../../assets/LLGA_step0.png" alt="overview" width="200"/>

**Commercial parts**
Note that quantities are listed per projector assembly.
* 4x [4-40 flat head screws 0.375in](https://www.mcmaster.com/91771A108/)
* 4x [4-40 flat head screws 0.625in](https://www.mcmaster.com/91771A112/)
* 2x [compression springs part # 70500](https://www.mwcomponents.com/shop/sp-co-a-13016?variant=1511977)
* 2x [ultra fine threaded brass inserts](https://www.mcmaster.com/98625A879/)
* 2x [ultra fine threaded M3 set screws](https://www.mcmaster.com/98625A553/)
* 1x [4-40 nylon tipped set screw](https://www.mcmaster.com/90291A106/)
* 1x [Thorlabs KM100 mount](https://www.thorlabs.com/thorproduct.cfm?partnumber=KM100)
* 1x [Thorlabs post](https://www.thorlabs.com/thorproduct.cfm?partnumber=TR3)
* 1x [Thorlabs post holder](https://www.thorlabs.com/thorproduct.cfm?partnumber=UPH3)
* 1x [Liquid Light Guide](https://www.thorlabs.com/thorproduct.cfm?partnumber=LLG5-6H): LLG5-6H - Liquid Light Guide, Ø5 mm Core, 340 - 800 nm

**3d Printed Parts**
These should be printed on a resin or polyjet printer for accuracy.
* 1x [XY SLIDE BOTTOM](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/XY SLIDE BOTTOM.stl)
* 1x [XY SLIDE TOP](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/XY SLIDE TOP.stl)
* 1x [XY SLIDE PLATE](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/XY SLIDE PLATE.stl)
* 4x [XY LINEAR GUIDE BLOCKS](https://haberkern-lab.github.io/ethoVR/assets/modelfiles/XY LINEAR GUIDE BLOCKS.stl)


**Liquid light guide alignment fabrication**
1.	Press the ultra-fine threaded brass inserts into the XY SLIDE BOTTOM until their flanges are against the inner wall.
At this point the circled holes should be tapped for #4-40 screws.

<img src="../../assets/LLGA_step1.png" alt="step1" width="200"/>

2. Install the compression springs in the recesses opposite the inserts. A small dab of epoxy or superglue can be used to secure the base of the spring in the recess.

<img src="../../assets/LLGA_step2.png" alt="step2" width="200"/>

3. Tap the hole in the XY SLIDE PLATE for a #4-40 set screw. Apply a small amount of oil to the base and sides of the XY SLIDE PLATE. Place it into the base along with 2 LINEAR GUIDE BLOCKS adjacent to the brass inserts.

<img src="../../assets/LLGA_step3.png" alt="step3" width="200"/>

4. With tweezers compress the springs and slip the remaining LINEAR GUIDE BLOCKS into place.

5. Insert 4x 0.625in #4-40 screws into the countersunk holes. The orientation of the assembly can be changed per projector to allow for easier access to the ultrafine set screws.

<img src="../../assets/LLGA_step5.png" alt="step5" width="200"/>

6. Place the XY SLIDE TOP onto the assembly and secure with 4x 0.375in #4-40 screws.

7. Insert ultrafine set screws into brass inserts. Adjust until the XY SLIDE PLATE is roughly centered.

<img src="../../assets/LLGA_step7.png" alt="step7" width="200"/>

8. Install the nylon tipped #4-40 set screw in the XY SLIDE PLATE.


### Joining the Sub-Assemblies

1. Insert 3 #4-40 nuts into the vertical plate on the PROJECTOR MOUNT FOR ADJ XY LLG and secure the LLGA sub assembly via the #4-40 screws.

<img src="../../assets/LLGAProjector_step1.png" alt="step1" width="300"/>

2. Sight down the barrel of the LLG adapter and adjust the ultra-fine set screws until it is aligned with the LED lens assembly in the optical engine.

<img src="../../assets/LLGAProjector_step2.png" alt="step2" width="300"/>

3. Place the PROJECTOR LIGHTBLOCK and secure with an M3 screw from disassembly step #6

<img src="../../assets/LLGAProjector_step3.png" alt="step3" width="300"/>

4. Attach projector assembly to the thorlab KM100 and post.

<img src="../../assets/LLGAProjector_step4.png" alt="step4" width="300"/>
