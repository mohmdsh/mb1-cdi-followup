FROM rocker/verse


# Installl rgit-------------------------------------------------------#
RUN apt-get update && apt-get install -y git

# Installl required packages for mb1 projects--------------------------------------------------------#
# Install R packages ----------------------------------------------------------#
RUN R -e 'install.packages(c("tidyverse", "egg", "lme4", "lme4", "lmerTest", "simr", "lattice", "effects", "sjPlot", "car", "brms", "knitr", "rstan", "readxl","plyr", "ggplot2", "powerAnalysis", "ggpubr", "stringr", "data.table", "PerformanceAnalytics", "WRS2", "dplyr", "MASS", "glmmTMB", "lmtest", "rstatix", "psych", "pwr", "robustlmm", "furrr", "DataCombine", "wordbankr", "future.apply"  ), repos="http://cran.us.r-project.org")'



RUN  cd /home/rstudio \
	&&  git clone  https://github.com/manybabies/mb1-cdi-followup.git

RUN chown -R rstudio:rstudio /home/rstudio

ADD  . /home


