#!/bin/bash

source venv/bin/activate
export HIP_VISIBLE_DEVICES=0
export HSA_OVERRIDE_GFX_VERSION=11.0.0
export PYTORCH_HIP_ALLOC_CONF=expandable_segments:True
export PYTORCH_HIP_ALLOC_CONF=garbage_collection_threshold:0.8
export GPU_MAX_HW_QUEUES=1

python kohya_gui.py
