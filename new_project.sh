#This is a simple script I wrote to set up new projects quickly
#Hayden Young Created FEB 12 2020
#Updated FEB 12 2020

#!/bin/bash
echo 'New Project Name:' $1
echo 'Creating New Project Directories'

#make home directory and switch into it then build index.html
mkdir -p -v $1
cd $1

#make sub-directories
echo 'Creating sub-directories'

mkdir -p -v scss/components
mkdir -p -v scss/utilities
mkdir -p -v scss/base
mkdir -p -v css
mkdir -p -v img


#Create the files
echo 'Creating Files'

#create index.html
cp resources/index.html index.html

#Change into scss to create style file there
cd scss
echo "/* Import Style Indexes ------- */
@import 'base/_index';
@import 'components/_index';
@import 'utilities/_index';" > style.scss

#change into base and make scss files...typogrophy,
cd base 
echo '/* Typography ------- */' > _typography.scss

#normilize,
cp ../../resources/normalize.css _normilize.scss

#imagies,
echo '/* Images ------- */' > _images.scss

#and index.
echo "/* Import Index ------- */

@import '_typography';
@import '_normilize';
@import '_image';" > _index.scss

#change into components and make scss files...navigation,
cd ../components
echo '/* Navigation ------- */' > _navigation.scss

#grid,
echo '/* Grid ------- */' > _grid.scss

#form,
echo '/* Forms ------- */' > _form.scss

#button,
echo '/* Buttons ------- */' > _button.scss

#and index.
echo "/* Import Index ------- */

@import '_navigation';
@import '_grid';
@import '_form';
@import '_button';" > _index.scss

#change into utilites and make scss files...variables,
cd ../utilities
echo '/* Variables ------- */' > _variables.scss

#mixins,
echo '/* Mixins ------- */' > _mixins.scss

#functions,
echo '/* Functions ------- */' > _functions.scss

#and index.
echo "/* Import Index ------- */

@import '_variables';
@import '_mixins';
@import '_functions';" > _index.scss

#all done
echo 'Done! Go make a website!'