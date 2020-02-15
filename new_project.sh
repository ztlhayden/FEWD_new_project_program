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
cp ../resources/*.html ./

#Create style file in scss
echo "/* Import Style Indexes ------- */
@import 'base/_index';
@import 'components/_index';
@import 'utilities/_index';" > scss/style.scss

#change into base and make scss files...typogrophy,
echo '/* Typography ------- */' > scss/base/_typography.scss

#normilize,
cp ../resources/*.scss ./scss/base/

#images,
echo '/* Images ------- */' > scss/base/_images.scss

#and index.
echo "/* Import Index ------- */
@import '_typography';
@import '_normilize';
@import '_image';" > scss/base/_index.scss

#change into components and make scss files...navigation,
echo '/* Navigation ------- */' > scss/components/_navigation.scss

#grid,
echo '/* Grid ------- */' > scss/components/_grid.scss

#form,
echo '/* Forms ------- */' > scss/components/_form.scss

#button,
echo '/* Buttons ------- */' > scss/components/_button.scss

#and index.
echo "/* Import Index ------- */
@import '_navigation';
@import '_grid';
@import '_form';
@import '_button';" > scss/components/_index.scss

#scss/utilities and make scss files...variables,
echo '/* Variables ------- */' > scss/utilities/_variables.scss

#mixins,
echo '/* Mixins ------- */' > scss/utilities/_mixins.scss

#functions,
echo '/* Functions ------- */' > scss/utilities/_functions.scss

#and index.
echo "/* Import Index ------- */
@import '_variables';
@import '_mixins';
@import '_functions';" > scss/utilities/_index.scss

#all done
echo 'Done! Go make a website!'