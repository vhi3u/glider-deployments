#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Apr  8 16:09:48 2023

@author: victornguyen
"""

import matplotlib
import matplotlib.pyplot as plt
import scipy.io 


mat=scipy.io.loadmat('Ramses_Deployment1_CTD_L1.mat')


xptime_datenum = mat['ptime_datenum']
ydepth = -mat['depth']
ztemp = mat['temp']
zsalin = mat['salin']


fig, ax = plt.subplots(2,1) 
ax[0].scatter(xptime_datenum, ydepth, s=1, c=ztemp, cmap="gnuplot2")
ax[0].xaxis.set_major_formatter(matplotlib.dates.DateFormatter('%m-%d'))
ax[0].get_xaxis().set_visible(False)
ax[0].set_xlabel('Date')
ax[0].set_ylabel('Depth')
ax[0].set_title('Ramses Deployment 1 Temperature')

ax[1].scatter(xptime_datenum, ydepth, s=1, c=zsalin, cmap="gnuplot2")
ax[1].xaxis.set_major_formatter(matplotlib.dates.DateFormatter('%m-%d'))
ax[1].set_xlabel('Date')
ax[1].set_ylabel('Depth')
ax[1].set_title('Ramses Deployment 1 Salinity')


plt.show()
