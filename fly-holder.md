---
layout: default
title: Fly holder
nav_order: 6
permalink: /folyholder
---
# Fly holder
{: .no_toc }
Some tips on materials to use for building a fly tether and "pyramid" for behavior experiments and imaging in behaving animals.

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Tethering to a pin (for behavior or imaging experiments)

### Making a tether and tether holder
**For the tether itself:**

* [Adapter piece](https://www.microgroup.com/product-category/hypodermic_tubing/) between "tether foot" and tungsten wire: Stainless Steel 316 Hypodermic Tubing: 19 Gauge, 0.042" OD, 0.032" ID, 0.005" Wall, 12" Length
* Pin Contact Gold Crimp 20-24 AWG Machined (e.g. from Digikey, Catalog #: A2160-ND)
* [Tungston wire](http://www.a-msystems.com/p-728-tungsten-rod.aspx): 127 µm diameter, 3 in long, 100 pieces

**For a holder on which the tether can be mounted**

* Post that serves as [tether holder](https://www.thorlabs.com/newgrouppage9.cfm?objectgroup_id=1257): Mini Series Mounting Posts, Ø6 mm, L = 3" (Product #: MS3R)
   - Possible alternative 1: [464 Brass Round Rod](https://www.amazon.com/dp/B003JP6DE0/ref=biss_dp_t_asn), Unpolished (Mill) Finish, H02 Temper, ASTM B21, 0.25" Diameter, 84" Length (Product #: 13440)
   - Possible alternative 2: [Eowpower 2pcs Brass Round Rods](https://www.amazon.com/Eowpower-Brass-Round-Diameter-Length/dp/B0748DQ1MP/ref=sr_1_2?ie=UTF8&qid=1504842092&sr=8-2&keywords=464+Brass+Round+Rod%2C) Lathe Bar Stock 1/4 Inch Diameter 14 Inch Length (Product #: 02-001-015)

* Adapter piece, in which the tether can secured and which is to be mounted on the post: Socket Contact Gold Crimp 20-24 AWG Machined (from Digikey, Catalog #: A2161-ND)


### Tethering a fly
For gluing the tether to the thorax, we use KOA 300 (KEMXERT, York, PA, USA). In the second step, when we glue the head to the holder (which also fixes the head to the throax), we use a different UV curable glue: Fotoplast Gel from Dreve (Dreve Dentamid GmbH, Unna, Germany).

## Fly pyramid (for imaging experiments in walking flies)

### Frame and metal pyrmid to which the fly is attached
**Frame**
3D print this piece, which will work as a frame and holder for the metal pyramid:
[ipt](https://hjmh.github.io/ethoVR/assets/flyholder/FlyHolder_PyramidMount_V3_WIDEVIEW.ipt), [stl](https://hjmh.github.io/ethoVR/assets/flyholder/FlyHolder_PyramidMount_V3_WIDEVIEW.stl), or [stp](https://hjmh.github.io/ethoVR/assets/flyholder/FlyHolder_PyramidMount_V3_WIDEVIEW.stp) files.

**Metal pyramid**
Cut this piece from thin metal sheet:
[ipt](https://hjmh.github.io/ethoVR/assets/flyholder/METAL FLY PYRAMID CENTERED V2.ipt), or [dxf](https://hjmh.github.io/ethoVR/assets/flyholder/METAL FLY PYRAMID CENTERED V2.dxf) files.

Then carefully fold the pyramid into shape along the etched edges. After folding, glue the pyramid into the 3D-printed frame with a water-resistant glue.

### Holder for the pyramid frame with xyz-stage and tether
**Commercial parts**
* XYZ translation stage from thorlabs: T12XYZ - Miniature 1/2" Translator
* Post (tether) holder: Siskiyou (MXC-2.5)
* Magnetic mount from thorlabs: Kinematic base, e.g. KB1X1 (25 mm x 25 mm)
* Post for holding the tether
* Tube on post into which to insert the tether: [A2161-ND](https://www.digikey.com/product-detail/en/te-connectivity-aerospace-defense-and-marine/205090-1/A2161-ND/132232)
* tether base: [A2160-ND](https://www.digikey.com/products/en?keywords=A2160-ND)

**Custom parts**
* Aluminum connector piece (between translation stage and post holder)

![connector piece](https://hjmh.github.io/ethoVR/assets/flyholder/flyholder_connector.png)
