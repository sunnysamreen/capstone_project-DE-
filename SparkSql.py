#!/usr/bin/env python
# coding: utf-8

# In[1]:


from pyspark.sql import SparkSession
from pyspark.sql.types import *
from pyspark.sql.functions import *
spark = (SparkSession.builder.appName("project").config("hive.metastore.uris","thrift://ip-10-1-2-24.ap-south-1.compute.internal:9083").enableHiveSupport().getOrCreate())


# In[2]:


spark


# In[3]:


spark.sql("use samreenalab_capstone").show()


# In[7]:


#2.


spark.sql("select d.dept_no, d.dept_name,e.emp_no, e.last_name, e.first_name from employees e inner join department_managers dm on e.emp_no = dm.emp_no inner join departments d on d.dept_no = dm.dept_no").show()


# In[8]:


#3.

spark.sql("select e.emp_no, e.first_name, e.last_name, d.dept_name from employees as e inner join department_employees as de on e.emp_no = de.emp_no inner join departments as d on d.dept_no = de.dept_no").show()


# In[9]:


#4.

spark.sql("select first_name, last_name, sex from Employees where first_name = 'Hercules' and last_name LIKE 'B%'").show()


# In[10]:


#5.

spark.sql("select e.emp_no, e.first_name, e.last_name, d.dept_name  from employees e  inner join department_employees de on de.emp_no = e.emp_no inner join departments d on d.dept_no = de.dept_no where d.dept_name = 'Sales'").show()


# In[11]:


#6.

spark.sql("select e.emp_no, e.first_name, e.last_name, d.dept_name from employees e inner join department_employees de on de.emp_no = e.emp_no inner join departments d on d.dept_no = de.dept_no where d.dept_name IN ('Sales', 'development')").show()


# In[12]:


#7.


#spark.sql("select e1.last_name, count(e2.last_name) from employees as e1 join employees e2 on e1.last_name = e2.last_name")


# In[15]:


#8.

salary = spark.sql("select * from samreenalab_capstone.salaries")

salary.show()


# In[16]:


type(salary)


# In[17]:


salary_pd = salary.toPandas()


salary_pd['salary'].plot(kind = 'hist')


# In[18]:


import seaborn as sns
import matplotlib.pyplot as plt

plt.rcParams['figure.figsize'] = (14,8)

sns.distplot(salary_pd['salary'])


# In[ ]:


 


# In[20]:


#9.




# In[ ]:




