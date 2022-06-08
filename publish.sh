#!/bin/bash

if [ -e nodejsDependenciesLayer.zip ]; then
    rm nodejsDependenciesLayer.zip
fi

zip -r nodejsDependenciesLayer.zip nodejs > /dev/null

aws s3 cp nodejsDependenciesLayer.zip s3://provident-lambda-dependency-layers

aws lambda publish-layer-version \
--layer-name nodejsDependencies \
--description "$1" \
--compatible-runtime nodejs12.x nodejs14.x nodejs16.x \
--content S3Bucket=provident-lambda-dependency-layers,S3Key=nodejsDependenciesLayer.zip
