# docker-gui-vscode
An example of launching a GUI from within a docker container and using VSCode

## Description
This is an example template to use to create a docker container with the following features
 * Creates a `docker` user inside the container which can run sudo
 * This container can run python3 files in VSCode.
 * The python3 application can launch a GUI.

The example launches a matplot lib window of a scatter plot of random data.

To use this template, clone the repo
```
git clone https://github.com/johnesquivel/docker-gui-vscode.git
```

CD into the repo and launch [VSCode](https://code.visualstudio.com/docs/setup/linux).
```
cd docker-gui-vscode
code .
```

The press `F5` to launch in debug mode.
