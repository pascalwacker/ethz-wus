FROM jupyter/scipy-notebook:latest

#create workdir: /home/jovyan
RUN mkdir /home/jovyan/WuS_FS2020

# Add original from Peter Norvig: https://napkindiagram.wordpress.com/2015/10/12/peter-norvigs-ipython-notebook-on-probability/
ADD http://norvig.com/ipython/Probability.ipynb /home/jovyan/WuS_FS2020/probability_original.ipynb

# Add notebooks from Josef Teichmann
ADD https://people.math.ethz.ch/~jteichma/probability.ipynb /home/jovyan/WuS_FS2020/probability.ipynb
ADD https://people.math.ethz.ch/~jteichma/random_number_generator.ipynb /home/jovyan/WuS_FS2020/random_number_generator.ipynb
ADD https://people.math.ethz.ch/~jteichma/bayes_update.ipynb /home/jovyan/WuS_FS2020/bayes_update.ipynb
ADD https://people.math.ethz.ch/~jteichma/mle.ipynb /home/jovyan/WuS_FS2020/mle.ipynb

# Fix permissions
USER root
RUN fix-permissions /home/$NB_USER
USER $NB_UID

CMD ["/usr/local/bin/start.sh","jupyter","notebook","--NotebookApp.token=''"]