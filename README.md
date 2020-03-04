# (Unofficial) Jupyter Notebook Docker for ETHZ Wahrscheinlichkeit und Statistik (Spring 2020)
Note: This is a unofficial Docker image provided as is. It's build ontop the official Docker Stack for Jupyter (https://github.com/jupyter/docker-stacks) and uses the Example Notebooks provided by the course (https://people.math.ethz.ch/~jteichma/index.php?content=teach_prob_stat18). Please feal free to fix this issues and open a pull request to this repo!

## Requirements:
- Docker (https://www.docker.com/)

## Howto:
1) Run `docker run -p 8888:8888 pascalwacker/ethz-wus:latest` in your terminal of choice

## Saving state:
Currently state isn't saved between two runs. If you need it, please open an issue

## Build it localy
1) Clone (or download) this repo
2) Run `docker build -t what-ever-name-you-would-like .`
3) Run `docker run -p 8888:8888 what-ever-name-you-would-like`

## Access the notebook
Once it's running, simply open: http://localhost:8888 in your browser. To shut down the notebook simply use `CTRL+C` in your terminal

## Note
- You can change `what-ever-name-you-would-like` in the self built docker to what ever you like, just don't use white spaces or fancy special characters and use the same name for line 2 and 3!
- You can change the port by using `-p xxxx:8888` with `xxxx` being what ever port you like (as long as it's free). For example you could run `docker run -p 80:8888 pascalwacker/ethz-wus:latest` and access it on just http://localhost
- The notebook is quite heavy, as it includes the full scipy notebook. If you feel like, try to strip things away and see if every thing still works!
- Authentication has been deactivated, you won't need a login or token. DO NOT RUN THIS ON A SERVER, FACING THE PUBLIC INTERNET, AS EVERY ONE WILL HAVE FULL ACCESS TO JUPITER (running on your local machine should be perfectly fine!)

## Disclaimer:
This software is provided as is. The are not responsible for any damages on your system or legal actions brought forward against you.
