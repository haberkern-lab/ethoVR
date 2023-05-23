---
layout: default
title: Projector choice
parent: Display
nav_order: 2
---

# Suggested projector models
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---


## TI LightCrafter 2010 EVM

### Why DLP LightCrafter 2010 EVM?
For the first itteration fo the virtual reality system we decided to use the  DLP LightCrafter Display 2010 Evaluation Module (DLPDLCR2010EVM) (http://www.ti.com/tool/dlpdlcr2010evm), mainly because of it's
* small form factor,
* high refresh rate (240 Hz), and
* low cost (~500 $ depending on reseller).
Unfortunately, it is now discontinued, but see below for possible replacement options.

### Technical overview
* DLP DMD: DLP2010 .2 WXGA
* DLD support chip: DLPC3435 Digital Controller (http://www.ti.com/product/DLPC3435, http://www.ti.com/lit/ds/symlink/dlpc3435.pdf )
* LED driver: DLPA2005
* Resolution: 854 x 480
* Wavelength: for visible light
* Up to 240 Hz refresh rate

## DLP LightCrafter Display 3010EVM-G2 (TI DLPDLC3010EVM-G2)
Used by the [Turner-Evans lab (UCSC)](https://t-e-lab.com/) and Jayaraman lab (Janelia) together with the unity-based ethoVR. This projector reliably shows streamed RGB images at 120 Hz.

A guide on modifying this projector for use in the ethoVR can be found [here](https://hjmh.github.io/ethoVR/assets/otherdocs/TI DLPDLC3010EVM-G2 modification guide.pdf).

## EKB Technologies
We tested the [EKB DLP LightCrafter E4500 UV-B-G](https://www.ekbtechnologies.com/e-store/dlp-lightcrafter-e4500-mkii-uv-385nm-405nm-blue-460nm-green-520nm?c=5cb86ca038d9a) extensively and were unable to stream full color video at 120 Hz. When set to **streaming** at 120 Hz, we measured an effective frame rate of **15 Hz**. This was tested with several, comparatively powerful graphics cards such as the PNY GeForce RTX2080Ti 11GB PCI-E (Blower Edition).

It is possible to show **single color 8-bit** images at 120 Hz in **pattern sequence mode**, albeit not reliably (on our test rig the frame rate averages closer to 90 Hz). Further, in pattern sequence mode, video input needs to have a 1140x 960 resolution, resulting in a large, distored image. Note that with "single color", we mean that only a single pattern is shown per frame. In pattern sequence mode it is possible to show this single pattern with multiple colors simultaneoulsy. Lowering the bit-depth and/or the pixel resolution may increase reliability and allow for display of multi-colored images, but we were not able to achieve this due to limitations in the graphics settings and we were not able to find examples of others succeeding at this either.

We do not recommend these projectors for closed-loop virtual reality applications in insects.