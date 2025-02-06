# CS-444 Course Material
This repository contains all the materials for the Virtual Reality CS-444 course.

To clone it locally, run the following command:
```bash
git clone --recurse-submodules https://github.com/cs444-epfl/cs444.git
```
Alternatively, you can continue reading the instructions online.

## Hands-On (HO) (`hands-on/`)
In the first few weeks of the course, we provide hands-on tutorials to help you become familiar with the tools you'll use throughout your project.  
These tutorials are supplementary materials designed to help you get started and accelerate your project development by teaching you the essential tools.
We strongly recommend completing them on time (or even ahead of schedule) to save valuable development time later.  
Although these documents aim to provide a foundational understanding of the topic, they don't cover every detail. We highly encourage you to seek additional online documentation.

### Week 1 ([`ho1.md`](hands-on/ho1.md))
- **Set up Git and GitHub**
- Install **[Unity](https://unity.com/download)** 
- _Access the **[Unity student plan](https://unity.com/products/unity-student)**_
- Install an **IDE**
- Install **[Meta Quest Developer Hub](https://developers.meta.com/horizon/documentation/unity/ts-odh/)**
- Complete missions 1 to 4 from the **[Unity Essentials Pathway](https://learn.unity.com/pathway/unity-essentials)**

### Week 2 ([`ho2.md`](hands-on/ho2.md))
- Install the **[XR Interaction Toolkit](https://docs.unity3d.com/Packages/com.unity.xr.interaction.toolkit@3.0/manual/index.html)** in a Unity project
- Play your VR game through the **`XR Device Simulator`**
- Set up your **headset**
- **Build** and upload your game to your headset

### Week 3 ([`ho3.md`](hands-on/ho3.md))
- Get familiar with the **[XR Interaction Toolkit](https://docs.unity3d.com/Packages/com.unity.xr.interaction.toolkit@3.0/manual/index.html)**

### Week 4 ([`ho4.md`](hands-on/ho4.md))
- **Create a VR game** from scratch
- Get comfortable with **basic XR interactions**
- Get comfortable using the components and samples of **XRIT**

This hands-on tutorial is a project in itself. We have stored it in a separate [Git repository]((https://github.com/cs444-epfl/ho4)) and made it a [Git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules) within this main repository.

If you forgot to add the `--recurse-submodules` option when cloning this repository, use the following command to initialize, fetch, and checkout any nested submodules:
```bash
git submodule update --init --recursive
```

Alternatively, you can directly clone the [HO4 repository](https://github.com/cs444-epfl/ho4). 

## Project description ([`project.md`](project.md))
It contains a description of the requirements you need to meet with your project as well as the content you need to submit.

## Other resources (`resources/`)
The `resources` folder contains condensed version of tutorials or other useful materials that we provide.