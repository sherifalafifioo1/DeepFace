#!/usr/bin/env python
# coding: utf-8

# In[ ]:



import os
import cv2 
import numpy as np
from deepface import DeepFace


def match_user_id_pic(ID_img, pic):

    # Verify the images using DeepFace
    obj = DeepFace.verify(ID_img, pic,  model_name = 'Facenet', detector_backend = 'retinaface')

    
    return obj['verified']
#-----------------------------------------------

