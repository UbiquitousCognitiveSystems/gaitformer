#!/bin/bash
set -e

cd ..

####### CASIA-Recognition ######
########### CONTRASTIVE ####################

python main-tune.py --runs 1 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-casia-xl-1 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 2 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-casia-xl-2 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 3 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-casia-xl-3 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 5 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-casia-xl-5 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 7 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-casia-xl-7 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 10 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-casia-xl-10 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

####### MULTI-TASK ALL
python main-tune.py --runs 1 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-sm-1 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 2 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-sm-2 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 3 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-sm-3 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 5 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-sm-5 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 7 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-sm-7 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 10 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-sm-10 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

####### MULTI-TASK DEM
python main-tune.py --runs 1 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-md-1 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 2 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-md-2 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 3 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-md-3 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 5 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-md-5 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 7 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-md-7 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 10 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-md-10 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

####### MULTI-TASK CL
python main-tune.py --runs 1 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-casia-sm-1 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 2 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-casia-sm-2 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 3 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-casia-sm-3 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 5 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-casia-sm-5 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 7 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-casia-sm-7 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --runs 10 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-casia-sm-10 --trainer recognition-fine-tuner --dataset casia --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

###### FVG-Recognition ######
########## CONTRASTIVE ####################
python main-tune.py --fraction 0.1 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-fvg-xl-1 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.2 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-fvg-xl-2 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.3 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-fvg-xl-3 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.5 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-fvg-xl-5 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.7 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-fvg-xl-7 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 1.0 --backbone checkpoints/experiments-real:contrastive-xl --config_file configs/model_sizes/xl.yaml --name cont-fvg-xl-10 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

####### MULTI-TASK ALL
python main-tune.py --fraction 0.1 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-sm-1 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.2 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-sm-2 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.3 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-sm-3 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.5 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-sm-5 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.7 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-sm-7 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 1.0 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-sm-10 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

####### MULTI-TASK DEM
python main-tune.py --fraction 0.1 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-md-1 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.2 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-md-2 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.3 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-md-3 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.5 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-md-5 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.7 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-md-7 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 1.0 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-md-10 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

####### MULTI-TASK CL
python main-tune.py --fraction 0.1 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-fvg-sm-1 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.2 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-fvg-sm-2 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.3 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-fvg-sm-3 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.5 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-fvg-sm-5 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.7 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-fvg-sm-7 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 1.0 --backbone checkpoints/final-table:mt-cl-sm --config_file configs/experiments/appearance-clothing-sm.yaml --name mt-cl-fvg-sm-10 --trainer recognition-fine-tuner --dataset fvg --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

####### CASIA-Gender ######
####### MULTI-TASK ALL
python main-tune.py --fraction 0.1 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-gender-sm-1 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.2 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-gender-sm-2 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.3 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-gender-sm-3 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.5 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-gender-sm-5 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.7 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-gender-sm-7 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 1 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-casia-gender-sm-10 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

####### MULTI-TASK DEM
python main-tune.py --fraction 0.1 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-gender-md-1 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.2 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-gender-md-2 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.3 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-gender-md-3 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.5 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-gender-md-5 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.7 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-gender-md-7 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 1 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-casia-gender-md-10 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

####### Appearance ALL
python main-tune.py --fraction 0.1 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-casia-gender-xl-1 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.2 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-casia-gender-xl-2 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.3 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-casia-gender-xl-3 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.5 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-casia-gender-xl-5 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.7 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-casia-gender-xl-7 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 1 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-casia-gender-xl-10 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

####### Appearance DEM
python main-tune.py --fraction 0.1 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-casia-gender-xl-1 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.2 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-casia-gender-xl-2 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.3 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-casia-gender-xl-3 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.5 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-casia-gender-xl-5 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 0.7 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-casia-gender-xl-7 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis
python main-tune.py --fraction 1 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-casia-gender-xl-10 --trainer gender-fine-tuner --dataset casia-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env genesis

####### FVG-Gender ######
####### MULTI-TASK ALL
python main-tune.py --fraction 0.1 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-gender-sm-1 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.2 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-gender-sm-2 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.3 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-gender-sm-3 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.5 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-gender-sm-5 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.7 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-gender-sm-7 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 1.0 --backbone checkpoints/final-table:mt-all-sm --config_file configs/model_sizes/sm.yaml --name mt-all-fvg-gender-sm-10 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus

####### MULTI-TASK DEM
python main-tune.py --fraction 0.1 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-gender-md-1 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.2 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-gender-md-2 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.3 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-gender-md-3 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.5 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-gender-md-5 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.7 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-gender-md-7 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 1.0 --backbone checkpoints/final-table:mt-dem-md --config_file configs/experiments/appearance-demographic-md.yaml --name mt-dem-fvg-gender-md-10 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus

####### Appearance ALL
python main-tune.py --fraction 0.1 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-fvg-gender-xl-1 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.2 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-fvg-gender-xl-2 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.3 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-fvg-gender-xl-3 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.5 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-fvg-gender-xl-5 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.7 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-fvg-gender-xl-7 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 1.0 --backbone checkpoints/final-table:app-all-xl --config_file configs/model_sizes/xl.yaml --name app-all-fvg-gender-xl-10 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus

####### Appearance DEM
python main-tune.py --fraction 0.1 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-fvg-gender-xl-1 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.2 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-fvg-gender-xl-2 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.3 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-fvg-gender-xl-3 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.5 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-fvg-gender-xl-5 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 0.7 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-fvg-gender-xl-7 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
python main-tune.py --fraction 1.0 --backbone checkpoints/final-table:app-dem-xl --config_file configs/experiments/appearance-demographic-xl.yaml --name app-dem-fvg-gender-xl-10 --trainer gender-fine-tuner --dataset fvg-gender --model gaitformer --mode run --group fine-tune --epochs 150 --env exodus
