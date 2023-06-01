# Docker container with UPPAAL
Docker container with Java and UPPAAL, because nobody wants to dirty their system with Java.

1. Get docker
2. Clone repo
3. Open a terminal inside the folder where you cloned the repo.
4. run `./dowload-uppaal.sh` to download the latest version of UPPAAL.
5. Build the container with `docker build -t uppaal .`
6. Run the container with `./run.sh` to mount the right folders and enable the x11 forwarding.
7. login with password uppaal
8. Use UPPAAL like you normally would. Save your files in the persistent folder to keep them.
9. Enjoy!


# Sample UPPAAL files
The sample projects are located at `/opt/uppaal64-4.1.26-2/demo` inside the container.

# Issues:
`./download-uppaal.sh` uses curl. Run it from a Linux machine or install curl on windows.
If the script is broken or results in a different version, you can download the latest version directly from [here](https://uppaal.org/downloads/), and place it in the folder manually. Check if you need to make changes to the `Dockerfile` and `run.sh` to reflect the new version.

# TODO: 
Someone send a pull request with a `run.bat` for Windows. Also I dont even know if the x11 forwarding will run out of the box on Windows. Publish findings by making a new issue.

