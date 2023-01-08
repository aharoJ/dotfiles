# Pandas

#  [Documentation](https://pandas.pydata.org/docs/)


- help(pd.[function])  #help_pd
	- gives you a man -help
		- ie... `help(pd.series)`
			- #long_af_issue_git
		- in depth --> [Attribute_vs_Function_Calls](NumPy.md#Attribute_vs_Function_Calls)****
	- 
	- 
	- ![](../z/aharo_17.png)
- #attribute_vs_func 



## Intro

![](../z/aharo_11.png)
![](../z/aharo_12.png)

- like an excel but for pandas but more powerful
- ss




# Series 


# Series_part_one

 ![](../z/aharo_13.png)


![](../z/aharo_14.png)

- Pandas seires replaces the [0,1,2,3] for names 
	- usa
	- canada
	- mexico

![](../z/aharo_16.png)




## series_data_index

`data`

![](../z/aharo_19.png)

![](../z/aharo_20.png)


`index`

![](../z/aharo_21.png)

![](../z/aharo_22.png)


**Lets combined them** 
`myser = pd.Series(mydata,myindex)`

![](../z/aharo_23.png)


From the looks, most real life data we will be using comes form dict (hashmaps/dict)


![](../z/aharo_24.png)



**Part One Finished**

---


# Series_part_two

![](../z/aharo_25.png)


- `keys()`


**we can do this because of broadcast**
![](../z/aharo_26.png)


### NaN 
- the 2 datasets that you are ( + - / * ) do no cross over 
	- ie... look above
	- no_bueno: Brazil and Japan
	- cross_over: China, India, and USA



![](../z/aharo_27.png)




****


--- 
---


# DataFrames_part-one

- ![](../z/aharo_45.png)
  
  
- ![](../z/aharo_46.png)
  
  
- *Important* #pandas/dataframe
  ![](../z/aharo_47.png)
	- each individual column is a pandas series in which they all share the same index
	  

- ![](../z/aharo_48.png)


--- 

> 					how to set our dataframe
> 			
#dataframe/set_up
- ![](../z/aharo_49.png)
	- ![](../z/aharo_50.png)





---



## reading_csv


#dataframe/reading_files
>			pd.read_csv("provide full-path")
- ![](../z/aharo_52.png)

> df = pd.read_csv("/Users/aharo/programming/python/machine_learning/zcode/guidance/Pandas_03/tips.csv")









# DataFrames_part-two


## DataFrames_Properties

	df.columns
> Index(['total_bill', 'tip', 'sex', 'smoker', 'day', 'time', 'size', 'price_per_person', 'Payer Name', 'CC Number', 'Payment ID'], dtype='object')

---

	df.index
> RangeIndex(start=0, stop=244, step=1)




> short summary of the **first** rows/col  of the .csv file
- df.head()
	- ![](../z/aharo_53.png)
  
  
	df.tail()
> short summary of the **last** rows/col  of the .csv file


---



## info
- df.info()
	- ![](../z/aharo_51.png)



---

## Describe

- df.describe()
	- ![](../z/aharo_54.png)

---


#dataframe/transpose
#data/instances 

> 			df.describe().transpose()
-  ![](../z/aharo_55.png)




## transpose
#dataframe/transpose
#data/instances 


> 			df.describe().transpose()
-  ![](../z/aharo_55.png)

![](aharo_136.png)

---

### transpose_more_things

- gio![](aharo_132.png)
	- gio![](aharo_134.png)
- 
  
- 
-  ![](aharo_133.png)
- ![](aharo_135.png)


#### make_your_own
![](aharo_153.png)

---






# DataFrames_part-three



## DataFrames_columns

#dataframe/columns

getting more than **ONE** column 

- ![](../z/aharo_56.png)


---

#dataframe/columns/operations

- adding
	- ![](../z/aharo_57.png)
- 
-  dividing
	- ![](../z/aharo_58.png)
- 

---

#dataframe/columns/invoking


- ![](../z/aharo_60.png)
	- ![](../z/aharo_59.png)
		- ![](../z/aharo_62.png)


---


#numpy/round 


`np.round()`

	df['price_per_person'] = np.round(df['total_bill'] / df['size'], 2)
- ![](../z/aharo_64.png)


---
#dataframe/commit_changes
#dataframe/drop 



decapricates, not recommended to use the **inplace** parameter

	df.drop(x,x,inline)


- ![](../z/aharo_67.png)


	
> 		recommended way to commit changes + aligns with githubs repository updates... or something like that.

- `df = df.drop('tip_percentage',axis=1)`
	- ![](../z/aharo_68.png)



---
---


# DataFrames_part-four

## DataFrames_rows



### converging a column into a row

-  df.set_index()
	- ![](../z/aharo_70.png)
		- #dataframe/commit_changes 
			- ![](../z/aharo_72.png)
				- `df = df`


---


### unconverging a column into a row
- df.reset_index()
- ![](../z/aharo_73.png)
	- #dataframe/uncommit_changes 
		- ![](../z/aharo_74.png)

---

## grabbing rows



![](../z/aharo_75.png)

		df.iloc[0] # integer based location
#dataframe/iloc
- df.iloc[0]  # integer based location
	- ![](../z/aharo_77.png)
- ![](../z/aharo_79.png)



---



		df.loc['Sun2959'] # labed based location
#dataframe/loc
- df.loc['Sun2959'] # labed based location
	- ![](../z/aharo_78.png)



---
#dataframe/iloc 

- ![](../z/aharo_80.png)
	- slicing


---
#dataframe/loc 
- ![](../z/aharo_82.png)



---
#dataframe/drop 
- ![](../z/aharo_83.png)


---
#dataframe/append

- ![](../z/aharo_85.png)
	- updated version but seems weird
		-  `pd.concat([one_row, one_row])`


---
---
---
# Conditional_Filterting

**SUMMARY**
- ![](../z/aharo_86.png)
- ![](../z/aharo_87.png)
	- #data/instances 
	- #data/feature 
		- ie... ![](aharo_88.png)

---
---
## single_feature
**rows are like examples of the feature**

![](aharo_89.png)


---

**rows and columns** 
![](aharo_90.png)

> rows as particular data instances and columns as features


---
**breakdown**
#pandas/broadcast
- ![](aharo_91.png)
	- ![](aharo_92.png)
		- ![](aharo_93.png)
			- ![](aharo_96.png)
			- #pandas/broadcast  will broadcast that comparison to every single instance of that column 
- ![](aharo_97.png)
	- ![](aharo_98.png)

![](aharo_99.png)


---
#pandas/conditional

**Baby Steps**

![](aharo_100.png)

--- 
**big boy steps**
#dataframe/loc 

- ![](aharo_101.png)
- ![](aharo_102.png)

**or**
- df [   df[]    ]
![](aharo_103.png)


> conditional filtering based off "one feature"


---

#pandas/conditional/and
#pandas/conditional/or  
**&&    ,  ||**

			df[ (df['sex'] == "Male") and (df['total_bill'] > 30) ]
- **and** causes an error
	- ![](aharo_104.png)
		- ![](aharo_106.png)
			- issue because pythons bool compares two val sides but these are series
- **correct**
	- **'&'**![](aharo_107.png)
	- **'|'** ![](aharo_108.png)


---

**baby steps**

![](aharo_109.png)
![](aharo_111.png)

---
#pandas/conditional/isin
#conditional/target_feature

		df[target_feature].isin()

#pandas/conditional/isin/doc
![](aharo_112.png)
---

**big boy steps**
#conditional/target_features

		df[target_feature].isin()
- ![](aharo_113.png)


---
---
---
# Methods_single-column


**Summary**
- ![](aharo_114.png)
- ![](aharo_115.png)




## apply()

- ~doc~
	- ![](aharo_118.png)


- ![](aharo_117.png)
	- ![](aharo_119.png)
		- data manipulation is so crazy, wow ~.~![](aharo_120.png)

---
##  [instance_vs_feature](Core.md#instance_vs_feature)

^reference_for_help

#data/instances 
#data/feature 



---
# Methods_multi-column

## lambdas


**wrong**
![](aharo_122.png)



**correct**
![](aharo_123.png)



### lambdas
``` python
df['Quality'] = np.vectorize(quality) (df['total_bill'], df['tip'])
```
![](aharo_126.png)


### vectorization

```python
df['Quality'] = np.vectorize(quality) (df['total_bill'], df['tip'])
```

![](aharo_127.png)


#### vectorization_vs_lambdas 

![](aharo_127%201.png)

- [link](https://stackoverflow.com/a/3379505/20353469)


---
---
---

# Methods_describe_sorting
#pandas/sorting
#pandas/describe

- ![](aharo_137.png)

- ![](aharo_138.png)

---
## sort_params

**df.sort_value('Y', param)**

- ![](aharo_139.png)

- if they math `x==x` then you can include a second ascending ==('Y')==
	- ![](aharo_140.png)


---
## min_max_idx
grabbing index location of min() and max()
- `max()`
	- ![](aharo_141.png)
- `idxmax()`
	- ![](aharo_143.png)


## corr

- how correlated the whole model is to eachother
	- ![](aharo_144.png)


--- 

## value_counts

- count the instances of your Y
	- ![](aharo_145.png)



---

## unique
#data/instances 
#important 

**I believe this will be important in abstract imagery**

---
**table**
![](panda_head_table.png)
---


> 	it shows all instances for that specific Y


- unique()
	- ![](aharo_146.png)
	- ![](aharo_148.png)
- nunique()
	- ![](aharo_147.png)

---
## replace
#pandas/replace
- replace()
	- single target
		- ![](aharo_149.png)
	- mult targets
		- Using List![](aharo_150.png)
	

### mapping

- mapping instead of using replace
	- ![](aharo_151.png)

--- 

## duplicate
- pretty straight forward
	- ![](aharo_152.png)


---


## inclusive

- inclusive()
	- ie... (10>= # && 20<= # )
	- 
	- ![](aharo_154.png)

---

## n_smallest-largest
#important 
#data/instances 
- df.nlargest()
	- conditional for targetting the **largest** instances of a Y
	- 
	- 
	- ![](aharo_155.png)

- df.nsmallest()
	- conditional for targetting the **smallest** instances of a Y
	- 
	- 
	- ![](aharo_156.png)

---

## sampling
- df.sample()
	- samples random series
	- 
	- ![](aharo_157.png)
	- ![](aharo_158.png)



---
### resources_method
#data/feature 

#### [Applying function with multiple arguments to create a new pandas column](https://stackoverflow.com/questions/19914937/applying-function-with-multiple-arguments-to-create-a-new-pandas-column)

- multiple ways to define features
- ![](aharo_124.png)



---














---
---
---

# Missing-Data_pandas-operations
## overview
#data/NaN

- ![](aharo_159.png)
- 
- ![](aharo_160.png)
- 
- ![](aharo_161.png)
- 
- ![](aharo_162.png)
- 
- ![](aharo_163.png)
- 
- ![](aharo_164.png)
- 
- ![](aharo_165.png)
- 
- ![](aharo_166.png)
- 
- ![](aharo_167.png)
	- **11,0,0**
- 
- 
- 
- 
- 



## is_vs_eq-eq

- `is`  **correct**
	- `==` will be **incorrect**
- 
- myvar is np.nan
- 
- ![](aharo_170.png)

---

## isnull
#data/NaN 
- **df.isnull()**
	- checks if there is a NaN
	- 
	- ![](aharo_171.png)

---

## notnull
#data/NaN 
- **df.notnull()**
	- checks **no** NaN's
	- 
	- ![](aharo_172.png)


---
## dropna
#data/instances 
- df.dropna()
	- drops all NaN instances of a Y
	- 
	- ![](aharo_173.png)
	- 
	- 
	- *param* threshold is like how many NaN do you allow before dropping 
		- ![](aharo_174.png)
- 
- 
- #dataframe/axis
- Parameter (axis)
	- 0 --> drops instances
	- 1 --> drops Y's
		- ![](aharo_175.png)
- 
- 
- Param --> ( subset=[] )
- 
	- ![](aharo_176.png)
- 
- 

---
## fillna
#data/NaN 
#data/instances 

- df.fillna()
	- fills in the NaN
	- 
	- not good practice tho![](aharo_177.png)
- 
- 
- ![](aharo_178.png)
- 
- 
- 
- 
- 
- 
- 
- 
- 
- 
- 
























