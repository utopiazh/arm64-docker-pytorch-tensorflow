#!/bin/bash
set -euo pipefail

# This script is  based on the upstream MLCommon's instructions to download models.
# https://github.com/mlperf/inference/tree/master/vision/classification_and_detection

cd inference/vision/classification_and_detection

# ResNet50
wget https://zenodo.org/record/4588417/files/resnet50-19c8e357.pth
wget https://zenodo.org/record/2535873/files/resnet50_v1.pb

# SSD-ResNet34
wget https://zenodo.org/record/3236545/files/resnet34-ssd1200.pytorch
wget https://zenodo.org/record/3246481/files/ssd_resnet34_mAP_20.2.pb
wget https://zenodo.org/record/3345892/files/tf_ssd_resnet34_22.1.zip
unzip tf_ssd_resnet34_22.1.zip
cp tf_ssd_resnet34_22.1/resnet34_tf.22.1.pb .

# mobilenet
wget http://download.tensorflow.org/models/mobilenet_v1_2018_08_02/mobilenet_v1_1.0_224.tgz
tar -zxf mobilenet_v1_1.0_224.tgz

# sdd-mobilenet
wget http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v1_coco_2018_01_28.tar.gz
tar -zxf ssd_mobilenet_v1_coco_2018_01_28.tar.gz
cp ssd_mobilenet_v1_coco_2018_01_28/frozen_inference_graph.pb  ssd_mobilenet_v1_coco_2018_01_28.pb
