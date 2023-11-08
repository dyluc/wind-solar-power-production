### Notes

#### Creating a conda env with python 3.10

`conda create --name power-prod python=3.10`
`conda activate power-production`

We'll be using pip to install our project dependencies, but if you'd rather use conda, then add conda-forge as a channel:
`conda config --add channels conda-forge`
`conda config --set channel_priority strict`

Then you can update the Makefile requirements command to run:
`conda install --yes --file requirements.txt`

Install dependencies:
`make clean requirements`

#### Dataset

https://www.kaggle.com/datasets/henriupton/wind-solar-electricity-production?resource=download

kaggle datasets download -d henriupton/wind-solar-electricity-production