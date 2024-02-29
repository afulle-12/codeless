<h1>Happy birthday Evan!</h1>
<h3>These are functions built to make necessary, but complex code a little bit lighter for folks in SPPH 500.</h3>
<p>This will be turned into a proper package once there are enough functions to justify the effort, but until then: hit 'em with a little cmnd+v and carry on.</p>
<p>Please note that some of these functions require the tidyverse package. Packages that rely on the tidyverse dialect will throw an error if tidyverse is not installed on your local system.</p>
<p>To install tidyverse, run: install.packages("tidyverse") in the console. </p>

<h1>Function documentation</h1>
<h3>logistic_regression.linearity()</h3>

```r
logistic_regression.linearity(model, model_data)
```
<p>This function tests the linearity assumption in all numeric features of a logistic regression model and outputs a graphical representation of x against the logit. 
  This function accepts as arguments: a glm logistic regression model, and the dataset that the glm is fitted to. Example of use:</p>

```r
example_data <- read_csv(example_data.csv)
example_model <- glm(target ~ feature1 +
                              feature2 +
                              feature3,
                              data = example_data,
                              family = "binomial")

logistic_regression.linearity(example_model, example_data)
#this will simultaneously output three plots, one for each individual feature with a loess line to demonstrate the linearity 
```
