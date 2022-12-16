# .devcontainer
vscode devcontainer configuration for working with EPICS Containers

# Base container
This project is a companion to the dev-u22 developer container project. It bases
the dev container on the image published by dev-u22. Here:
https://github.com/epics-containers/dev-u22/pkgs/container/dev-u22-workspace

# How to Use

## Quick Start for a Workspace
Most likely you want to fork this repo to create your personal developer container.

These steps clone directly from this repo, but you get the idea!

- cd root_folder_for_your_new_workspace
- git clone https://github.com/epics-containers/.devcontainer
- code .devcontainer
- open a terminal in vscode
- cd ..
- clone https://github.com/your_org/your_first_repo_for_this_workspace
- ctrl-shift-P add folder to Workspace ...
- choose the above repo folder
- File->Save Workspace As ...
- choose a filename for your workspace. IMPORTANT - save this in root_folder_for_your_new_workspace
  - the default folder will be .devcontainer and you don't want that.
- ctrl-shift-P Reopen in Container

That's it you now have a devcontainer workspace.

## Customization at container launch time

If you wish to install additional python packages or do any other setup 
at container creation time then make changes to the this file:

[postCreateCommand.sh](postCreateCommand.sh)

Changes in this file will get executed at the start of each new
container instance but do not require rebuilding the container image.

Note that this file is in .gitignore because you may have multiple
workspaces with different python projects. You can use this file
to make changes on a per workspace basis without dirtying your 
.devcontainer repo.

## Customization at container build time
When vscode launches the container it does a build using the this Dockerfile]

[Dockerfile](Dockerfile)

Add or remove installation steps as needed.


