#!/bin/bash

curl http://testflightapp.com/api/builds.json -F file=@/tmp/Calculator-${GO_PIPELINE_COUNTER}.ipa -F api_token='c86a4b64036a22145802b6c1be337988_Nzc4MDA1MjAxMi0xMi0wOSAyMjozOToyMC42MTE2OTk' -F team_token='3e25a7250bb4e27cce7db047dfb3d6cc_MTY0NjA4MjAxMi0xMi0yOCAxMzo1NzoxNi4xNzY0MTA' -F notes="Build No: ${GO_PIPELINE_COUNTER}"
