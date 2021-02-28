import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import pynwb
from allensdk.brain_observatory.ecephys.ecephys_project_cache import EcephysProjectCache
from allensdk.core.brain_observatory_cache import BrainObservatoryCache
import pprint

spike_rates = np.loadtxt('spike_rates_session_847657808_2290.491439954788-8295.446259976812.csv',delimiter=',')
#images = np.loadtxt('images_session_847657808_2290.491439954788-8295.446259976812.csv',delimiter=',')

print(spike_rates.shape)