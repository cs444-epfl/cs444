# HO4: Create your own game!

## Objectives
- Create a VR game from scratch
- Get comfortable with basic XR interactions
- Get comfortable using the components and samples of XRIT

## Cloning the project
As this hands-on tutorial is a Unity project, it is stored in a separate [Git repository]((https://github.com/cs444-epfl/ho4)). The instructions are contained in the `ho4/Readme.md` file.

The `ho4` repository has been added as a [Git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules) within this repository. To clone all the Git submodules along with the main repository, run the following command:
```bash
git clone --recurse-submodules https://github.com/cs444-epfl/cs444.git
```
You should see a `ho4` folder containing a Unity project.

If you forgot to add the `--recurse-submodules` option when cloning this repository, use the following command to initialize, fetch, and checkout any nested submodules:
```bash
git submodule update --init --recursive
```

Alternatively, you can directly clone the [HO4 repository](https://github.com/cs444-epfl/ho4). 
