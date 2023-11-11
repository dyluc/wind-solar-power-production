### E2E Demo ML Project

This is a small demo ML project used to make predictions on output wind production levels using hourly records produced from the French grid since 2020.

This dataset is used by the CRE to calculate the reference prices used in the calculation of the additional remuneration for the wind and solar sectors. Further background reading and some quick insights into the data can be found here:

https://odre.opendatasoft.com/explore/dataset/courbes-de-production-mensuelles-eolien-solaire-complement-de-remuneration/information/?disjunctive.filiere&disjunctive.heure

#### Creating a conda env with python 3.10

For installing dependencies, you can first create a virtual environment and run the requirements rule to install. Demonstrated here using conda:

```shell
conda create --name power-prod python=3.10
conda activate power-production
```

You can use pip to install project dependencies, but if you'd rather use conda, then add conda-forge as a channel:

```shell
conda config --add channels conda-forge
conda config --set channel_priority strict
```

Then you can update the Makefile requirements command to run:

```shell
conda install --yes --file requirements.txt
```

Install dependencies:
```shell
make clean requirements
```

#### Dataset

https://www.kaggle.com/datasets/henriupton/wind-solar-electricity-production?resource=download

```shell
kaggle datasets download -d henriupton/wind-solar-electricity-production
```