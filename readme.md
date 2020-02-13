
#Hayden Young - Created FEB 12 2020
##Updated FEB 12 2020
###This is a simple script I wrote to set up new projects quickly.


When run from the terminal with an argument for the Project's name it will create the following file system and files.


```
~$ bash ./new_project.sh example_output

Builds:
  example_output
  | Index.html
  | CSS
  | Img
  | SCSS
  | | style.scss
  | | Base
  | | | _index.scss
  | | | _normilize.scss
  | | | _typography.scss
  | | | _images.scss
  | | Components
  | | | _index.scss
  | | | _button.scss
  | | | _form.scss
  | | | _grid.scss
  | | | _navigation.scss
  | | Utilities
  | | | _index.scss
  | | | _functions.scss
  | | | _mixins.scss
  | | | _variables.scss
```

It will copy all .scss and .html files to the project/scss/base and project/ directories. Feel free to ass your own stuff or edit those files!

I know this isnt very useful but it was a fun side project to take a break from the html/css/scss and get to know bash a little better.

Hope you found it useful!