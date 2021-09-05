# analytics-okr
This is an OKR (https://en.wikipedia.org/wiki/OKR) Dashboard for InterSystems IRIS Analytics (DeepSee) solutions.

OKR - Objective and Key Results is a strategic objectives management and execution system developed by Andrew Grove of Intel. It is a very effective tool, as it sets goals and key results that are focused and always based on numerical, clear and time-determined indicators.

This application features a fictional OKR to execute the InterSystems developer community's growth strategy.

## Installation 

### ZPM
It's packaged with ZPM so it could be installed as:
```
zpm "install analytics-okr"
```
then open http://localhost:32792/dsw/index.html#/IRISAPP

### Docker
The repo is dockerised so you can  clone/git pull the repo into any local directory

```
$ git clone https://github.com/yurimarx/analytics-okr.git
```

Open the terminal in this directory and run:

```
$ docker-compose up -d
```
and open then http://localhost:32792/dsw/index.html#/IRISAPP

Or, open the cloned folder in VSCode, start docker-compose and open the URL via VSCode menu:
<img width="799" alt="Screenshot 2020-11-15 at 20 17 12" src="https://user-images.githubusercontent.com/2781759/99191744-ba02af00-277f-11eb-8568-e43aa9a0029c.png">

