# Tutorials

Hitchhiker's guide to a galaxy of painful installations - now in your system!

Stuff the ancient gcc compiler and run R on Zodiac
---

Activate `bash` shell on login:

`bash`

Install `miniconda` if you don't have it already:

`wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh`

`bash Miniconda3-latest-Linux-x86_64.sh`

Install the virtual environment `condaR.yaml` located in this repository:

`wget --no-check-certificate https://raw.githubusercontent.com/esteinig/tutorials/master/condaR.yaml`

`conda env create --name condaR --file condaR.yaml`

Activate the environment before running `R` and doing your usual thing with `install.packages`:

`source activate condaR`

You can deactivate the environment:

`source deactivate`

