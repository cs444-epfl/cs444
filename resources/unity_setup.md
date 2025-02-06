# Unity setup
Here are concise instructions to set up a new Unity project ready to build a VR game using the `XR Interaction Toolkit`:

- Create a **new project** using the **`3D (Built-In Render Pipeline)`** template and **Unity 6**
- Initialize a **new Git repository** for the project
  - _Optionally, publish it as a repository on GitHub_
  - Add the provided [`.gitignore`](.gitignore) file to your repository. This is an augmented version of the [standard `.gitignore` file for Unity projects](https://github.com/github/gitignore/blob/main/Unity.gitignore) which also ignore OS or IDE specific generated files (`.idea` for Rider, `.DS_Store` for MacOS, ...). Only the files under `Assets/`, `ProjectSettings/` and `Packages/` folders are committed. `.utmp` folder contains temporary files created during a build, they are ignored as well.
  - Make a **first commit** with the blank project: "Initial commit"
- Install the required **packages** (`Window > Package Manager > Unity Registry > <package_name> > Install`):
  - **`Universal RP`** 
  - **`XR Interaction Toolkit`**  
    - Install the **`XR Device Simulator`** and **`Starter Assets`** samples (`Window > Package Manager > In Project > XR Interaction Toolkit > Samples`)
  - **`XR Plugin Management`**
  - **`OpenXR Plugin`**
- Enable **`OpenXR` Plug-in Provider**:  
  `Edit > Project Settings > XR Plug-in Management`, tick `OpenXR` under each tab
- Enable `OpenXR` **`Meta Quest Support`**:  
  `Edit > Project Settings > XR Plug-in Management > OpenXR > (android tab) > OpenXR Feature Groups`, tick `Meta Quest Support`
- Select the correct **target device** (Quest or Quest 2):  
  `Edit > Project Settings > XR Plug-in Management > OpenXR > OpenXR Feature Groups > Meta Quest Support`, click on the cog and tick the correct device under `Target Devices`
- Enable the **`Oculus Touch Controller Profile`**:  
  `Edit > Project Settings > XR Plug-in Management > OpenXR > Enabled Interactions Profiles > + > Oculus Touch Controller Profile`, for each tab
- Switch the **build platform** to **Android**:  
  `File > Build Profiles > Platforms > Android > Switch Platform`
- Change the **active input system** to the newest system:  
(`Project Settings > Player > Active Input Handling > Input System Package (New)`)
- **Fix all issues** under **Project Validation**:  
  `Edit > Project Settings > XR Plug-in Management > Project Validation > Fix all`, for each tab
- Make a **second commit** with the blank project: "Set up project for VR"

You can find a more detailed version of this tutorial in the [HO2](../hands-on/ho2.md)