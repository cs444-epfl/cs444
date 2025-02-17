# HO3: Explore the XR Interaction Toolkit

## Objectives
- Get familiar with the [XR Interaction Toolkit](https://docs.unity3d.com/Packages/com.unity.xr.interaction.toolkit@3.0/manual/index.html)

## Getting familiar with XRIT components

### YouTube material
We recommend going through as many resources as you can to get familiar with both XRIT and Unity.  
Here are some recommended YouTube channels:
- [Valem](https://www.youtube.com/@ValemVR/videos) / [Valem Tutorials](https://www.youtube.com/@ValemTutorials)
- [VR with Andrew](https://www.youtube.com/@VRwithAndrew)
- [Fist Full of Shrimp](https://www.youtube.com/@FistFullofShrimp)

We also recommend exploring existing VR projects. For example _Fist Full of Shrimp_ provides a [free VR template](https://github.com/Fist-Full-of-Shrimp/VR-Unity-Template-2023) that you can explore. When opening online projects, make sure to use the correct Unity and XRIT versions.

### Key features
We recommend exploring each feature of the VR template one by one, testing each component individually in a blank scene (use `scenes/BasicScene` as a starting point) and watching mentioned YouTube material to get familiar with the toolkit.

First, watch [this tutorial](https://www.youtube.com/watch?v=kbBYcVrGZus) from _Fist Full of Shrimp_. It demonstrates how to create a VR project from scratch, using the latest versions of the tools. In particular, it covers the newest feature in version 3.0.

Here are some more key concepts to explore. Note that many YouTube videos are not up-to-date with the latest 3.0 version, but the core concepts are still relevant.  

- **Inputs** ([YouTube](https://www.youtube.com/watch?v=vGZlTfZIfRo))
- **Hand tracking** ([YouTube](https://www.youtube.com/watch?v=f_jHGNxwN2g))  
  Using hand tracking instead of controllers can improve immersion and fun in your game, though it adds development complexity. Note that this is not a requirement for your project, unlike other features.
- **Interactors**   
  Interactors allow interactions with interactable objects. We recommend using the new **`NearFarInteractor`**, which combines both ray and direct interactors for a smoother experience.
  - **DirectInteractor** ([YouTube](https://www.youtube.com/watch?v=yqQr_TngwtY))  
  Used for close-range interaction
  - **RayInteractor** ([YouTube](https://www.youtube.com/watch?v=SC1e16ZIvUk))    
    Used for distant interaction with a straight or curved ray visual.
    - TeleportInteractor ([Youtube](https://www.youtube.com/watch?v=kbBYcVrGZu))   
      Ray interactor which allows teleporting within the environment. 
  - **NearFarInteractor** ([YouTube](https://www.youtube.com/watch?v=kbBYcVrGZu))  
    Combines the ray interactor for distant interactions and the direct interactor for close-range interactions.
    - **InteractionCasters**  
      Define the strategy for finding valid interaction targets (interactables).
    - **SphereInteractionCaster**  
      Uses a sphere cast to find valid targets.
    - **CurveInteractionCaster**  
      A more complex caster that can perform sphere, ray, or cone casts along a curved ray.
- **PokeInteractor** ([YouTube](https://www.youtube.com/watch?v=MaA76IHXMOM))  
  Allows for close interactions through poking.
- **SocketInteractor** ([YouTube](https://www.youtube.com/watch?v=5DUSpATQ_r8))  
  Unlike other interactors, it is not meant to attach to a controller; instead, it snaps nearby interactables to a predefined socket.
- **Locomotion modes** 
  - **Continuous movement** ([YouTube](https://www.youtube.com/watch?v=Jvb7sAR2Tmk))
  - **Comfort vignette** ([YouTube](https://www.youtube.com/watch?v=2AW5KZZLM8Q&t=1278s))
  - **Teleportation** ([YouTube](https://www.youtube.com/watch?v=8xIxXkXn26M))
  - **Continuous rotation**
  - **Snap rotation**
  - **Grab move** ([YouTube](https://www.youtube.com/watch?v=2AW5KZZLM8Q&t=1278s))
  - **Climbing**  
    _Note: Make sure using recent documentation (XRIT 3.0) since climbing support has improved a lot recently._
- **Interactables** [YouTube](https://www.youtube.com/watch?v=kbBYcVrGZu)
  - **GrabInteractable**
  - **Kinematic**
  - **Velocity-based**
  - **Instantaneous**
  - **XRGeneralGrabTransformer** ([YouTube](https://www.youtube.com/watch?v=2AW5KZZLM8Q&t=1278s))
    - XRDualGrabFreeTransformer
    - XRSingleGrabFreeTransformer
  - **Dynamic attach** ([YouTube](https://www.youtube.com/watch?v=2AW5KZZLM8Q&t=1278s))

This list is a starting point to familiarize yourself with the toolkit’s basics. Over the next two weeks, you will implement VR features to practice these concepts.

Remember to test each feature with the XR Device Simulator or by building your game for your headset.

### Build small demos 
We encourage you (as a team) to create small demos for each feature provided by the `XRIT` framework (mentioned above). Since many of these features need to be included in your project, testing them individually and building simple demos will save you significant time during development.