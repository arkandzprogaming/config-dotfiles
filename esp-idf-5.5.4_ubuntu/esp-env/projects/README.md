# This markdown file *might* be important

## General Rules
1. Project Directory (i.e., any directory that contains an ESP-IDF project) naming convention: <code style="color : orange">proj-name-of-the-project</code> — replace <code style="color : orange">name-of-the-project</code> with the actual name of the project. Spaces are replaced by hyphens.
2. The Parent Directory <code style="color : orange">projects</code> is NOT tracked by git or any other version-tracking software.
3. Anything inside a Project Directory may be tracked by version-tracking software.

## Project Outline
proj-a-template/
* **WHAT**: A minimal project template that includes the vscode C/C++ intellisense JSON file.
* **WHY**: Copy this directory to create a new project instead of using the <code style="color : orange">idf create-project</code> command

proj-blink-gpio/
* Copied from an example: <code style="color : orange">cp -r $IDF_PATH/examples/get-started/blink/* proj-blink-gpio</code>

proj-hello-world/
* Copied from an example: <code style="color : orange">cp -r $IDF_PATH/examples/get-started/hello_world/* proj-hello-world</code>

proj-first-look-mair/
* Generated from scratch: <code style="color : orange">idf create-project -p $IDF_PATH/../projects/proj-first-look-mair</code>
* **WHAT**: This project follows the ESP32 course by Mair on [learnesp32.com](https://learnesp32.com).