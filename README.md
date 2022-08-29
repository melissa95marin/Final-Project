# World Happiness Analysis

## 1. Overview of World Happiness Analysis

The purpose of World Happiness Report to review the state of happiness in the world from 2015 until today and show how the new science of happiness explains personal and national variations in happiness.


##  2. DataSources

The happiness scores and rankings use data from the Gallup World Poll . The columns following the happiness score estimate the extent to which each of six factors – Log GDP per capita, Social support, Healthy life expectancy at birth, Freedom to make life choices,Generosity ,Perceptions of corruption, Positive affect, Negative affect,Confidence in national government.

* The complete dataset was sourced from [World Happiness Report](https://worldhappiness.report/ed/2022/#appendices-and-data) website
* Other additional information was found in [World Happiness Report](https://worldhappiness.report/ed/2022/#appendices-and-data) in Kaggle

### 2.1 Data Dictionary

| Variable | DataType | Description |
| -------- | -------- | ----------- |
| `country_name` | List all *new or modified* files | Test |
| `git diff` | Show file differences that **haven't been** staged |  test2|

## 3. Research Questions

1. What is the main well being factor that contributes to increase the hapiness around the world?
2. Does a high rate of mortality is correlate with less happiness?

## 4.  Database Model

 * We are going to use PostgreSQL as our relational database management system. This is the first draft of our DB schema: 
 * 
<p align="center">
  <img  src="db_squema_draft1.png" >
</p>


## 5. Machine Learning Model
### 5.1 Independent and Dependent Variables Definition
<p align="center">
  <img  src="Resources/ML1" >
</p>

### 5.2 Model Testing
 After analized the Datasouces we have decided to use Supervised Machine Learning model since we have labeled data. In order to find the perfect model evaluate following models: Linear Regression,Random Forest Regressor, XGBoost, Decision Tree and Bayesian Linear Model. We calculated the **Mean Absolute Error (MAE)** which refers to the magnitude of difference between the prediction of an observation and the true value of that observation.:

<p align="center">
  <img  src="Resources/ML2" >
</p>
 
 We can conclude from the below table that the model with the minimun MAE is **XGBoost**
 
 <p align="center">
  <img  src="Resources/ML3" >
</p>
 
### 5.3 Applying XGBoost Model

<p align="center">
  <img  src="Resources/ML4" >
</p>
<p align="center">
  <img  src="Resources/ML5" >
</p>


## 6. Visulizations
https://public.tableau.com/app/profile/mariana.isidoro/viz/Project_16613136489750/LifeLadder?publish=yes
![Social Support GDP](https://user-images.githubusercontent.com/102998228/187049204-96c96155-9b1c-4bdc-90a1-e6c206e923dd.PNG)

![Life Ladder](https://user-images.githubusercontent.com/102998228/187049215-b0768156-1eea-4f90-a2a6-49e68db40708.PNG)

## 7. Communication Protocols

We agreed as a team to use Slack as our main source of communication


