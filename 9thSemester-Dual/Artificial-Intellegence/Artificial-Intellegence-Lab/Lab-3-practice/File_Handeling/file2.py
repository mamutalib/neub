# -*- coding: utf-8 -*-
"""
Created on Sun Aug 28 02:41:57 2022

@author: Abdul Mutalib
"""

def importCSV(filename):
    file = open(filename,'r')
    dataFrame= {}
        
    headers = file.readline().replace('\n','').split(delimeter)
                                                     
    
    