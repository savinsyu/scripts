#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd

df = pd.read_excel("file.xlsx ")


# In[4]:


df.info()


# In[6]:


df_clean = df.drop_duplicates(subset=['Фамилия','Имя','Отчество'])


# In[7]:


df_clean.shape


# In[9]:


df_clean = df.drop_duplicates(subset=['Фамилия','Имя','Отчество'])
df_clean.to_excel("file_clean.xlsx")

