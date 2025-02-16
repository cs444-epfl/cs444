# Week 5: Hand tracking and advanced Unity concepts

## Objectives
- Create a VR game featuring hand tracking and interaction
- Learn some good Unity practices

## Hands interaction
Using controllers to play your game provides greater control over player actions and simplifies development. However, incorporating hand tracking adds a layer of originality and immersive interaction.

That said, hand interaction comes with several challenges to consider:
- Direct testing using the `XR Device Simulator` is not possible
- Older headsets (Quest 1) may experience performance issues
- Gesture recognition is not always trivial

We encourage you to use hand tracking instead of controllers, though this introduces additional technical challenges. Successfully developing a complete game with hand interaction would be an impressive achievement!

### Getting started
Follow these instructions to set up your project and begin using hand tracking. This tutorial provides a high-level guide: you'll need to consult additional online documentation for detailed interactions.

- Set up your project as usual, following HO2 or `unity_setup.md` resource guide
- Add the following to your project:
  - `XR Hands` package
  - `XR Hands > HandVisualizer` sample
  - `XR Interaction Toolkit > Hands Interaction Demo` sample
- Add the following OpenXR Feature Groups (`Project Settings > OpenXR`)
  - `Meta Hand Tracking Aim` 
  - `Hand Tracking Subsystem` 

You should now be able to build and play the Hands Demo Scene (`XR Interaction Toolkit > 3.0.7 > Hands Interaction Demo > HandsDemoScene`). Note that the scene may be laggy, especially on Quest 1 headsets based on our testing.

## Unity advanced concepts

Creating a game offers many possibilities, but as a project scales up, it can become unmanageable depending on how you structure its elements.

We recommend following well-known principles and patterns to maintain scalability and simplify team collaboration.

This tutorial is based on the "[Level up your code with design patterns and SOLID](https://assetstore.unity.com/packages/essentials/tutorial-projects/level-up-your-code-with-design-patterns-and-solid-289616)" e-book. If you have time, we recommend taking a look at all of it as it presents best practices for game development. It also includes a sample project demonstrating the concepts.

Below is a summary of what we believe to be the most relevant concepts from the e-book. We won’t go into detail here; instead, refer to the relevant chapters and explore the associated project examples for a deeper understanding.

### SOLID principles ([e-book](https://unity.com/resources/design-patterns-solid-ebook))
- **Single responsibility**: Make sure classes only do one thing and have only one reason to change.
- **Open-closed**: You should be able to extend the functionality of a class without changing how it already works.
- **Liskov substitution**: Subclasses should be substitutable for their base classes.
- **Interface segregation**: Keep your interfaces short with few methods. Clients only implement what they need.
- **Dependency inversion**: Depend on abstractions. Don’t depend directly from one concrete class to another.

Following these principles allows better collaboration and keeps your code base maintainable, extensible, and manageable.

Remember to have a look at the examples in the e-book and the associated project to have a better understanding of each of them.

### Object pool ([e-book](https://unity.com/resources/design-patterns-solid-ebook))
Maintain a set of initialized objects ready to be spawned, waiting in a deactivated "pool."

Instead of instantiating objects at runtime, request one from the pool and activate it. When done, deactivate and return it to the pool instead of destroying it.

This approach reduces CPU load from creating and destroying numerous `GameObject`s and may improve performance. However, be mindful of memory costs.

### Singleton pattern ([e-book](https://unity.com/resources/design-patterns-solid-ebook))

A Singleton is a globally accessible class that exists only once in the scene (such as a game manager).

While Singletons are appealing, especially to beginners because they're:
- easy to understand
- easy to implement
- easy to use

Excessive use can harm your game. Being global, they:
- hide many dependencies
- make your game hard to unit test
- encourage tight coupling

Use Singletons wisely. There are many additional online resources about their use in Unity.

### State pattern ([e-book](https://unity.com/resources/design-patterns-solid-ebook))
States and state machines are essential programming constructs, and Unity is no exception. They are particularly useful for player controllers.

In XR, for example, you might switch between teleporation, continuous movement and crouching states.

### Observer pattern ([e-book](https://unity.com/resources/design-patterns-solid-ebook))
"What happens when you destroy an enemy? How about when you collect a power-up or complete an object? You often need a mechanism that allows some objects to notify others without directly referencing them, thereby creating unnecessary dependencies."

Among all of the patterns mentioned above, the observer pattern is probably the most important for your game.

We recommend watching [this video](https://www.youtube.com/watch?v=WLDgtRNK2VE), which presents one way to manage game events using `ScriptableObject`s.

### Performance
Standalone XR headsets have limited power capacity. Optimizing your game for performance is crucial to maintain a sufficient framerate. Framerate is especially critical in XR because lag can quickly lead to cybersickness.

We recommend watching [this official Unity tutorial](https://www.youtube.com/watch?v=2J0kDtUGlrY), which presents optimization techniques specifically targeted at XR and mobile platforms.

You can find tons of other similar material online. Be curious!