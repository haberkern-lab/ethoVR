---
layout: default
title: Home
nav_order: 1
permalink: /
---

## ethoVR
{: .fs-9 }

Documentation for a Unity-based virtual reality system for neurobiology and ethology applications.
{: .fs-6 .fw-300 }

[Get started now](https://hjmh.github.io/ethoVR/getting-started/){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 } [Janelia Unity Toolkit](https://github.com/JaneliaSciComp/janelia-unity-toolkit){: .btn .fs-5 .mb-4 .mb-md-0 }

<button class="btn js-toggle-dark-mode">Switch to dark scheme</button>
<script>
const toggleDarkMode = document.querySelector('.js-toggle-dark-mode');

jtd.addEvent(toggleDarkMode, 'click', function(){
  if (jtd.getTheme() === 'dark') {
    jtd.setTheme('light');
    toggleDarkMode.textContent = 'Switch to dark scheme';
  } else {
    jtd.setTheme('dark');
    toggleDarkMode.textContent = 'Switch to light scheme';
  }
});
</script>

---

![intro image](https://hjmh.github.io/ethoVR/assets/DemoImage.png)

This documentation is meant as a practical guide to help you set up your own Unity-based virtual reality using modules from the Janelia Unity Toolkit. In addition to "How-to guides", this website provides information to hardware, design files for custom 3D printed parts and assembly instructions.

A neuroscience project using this virtual reality system is described here: [Haberkern et al, bioRxiv, 2022](https://biorxiv.org/content/10.1101/2022.05.17.492284v1.full).
