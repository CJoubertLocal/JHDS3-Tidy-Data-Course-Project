---
title: "CodeBook"
author: "Christian Joubert"
date: "28/04/2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Identy variables
- `participant id` - The identification number of each participant
- `activity` - The name of the activity performed by the participant

## Measurement variables
- `time body accelerometer mean x` - Mean of time values recorded by accelerometer in direction x due to body movement
- `time body accelerometer mean y` - Mean of time values recorded by accelerometer in direction y due to body movement
- `time body accelerometer mean z` - Mean of time values recorded by accelerometer in direction z due to body movement
- `time body accelerometer standard deviation x` - Standard Deviation of time values recorded by accelerometer in direction x due to body movement 
- `time body accelerometer standard deviation y` - Standard Deviation of time values recorded by accelerometer in direction y due to body movement
- `time body accelerometer standard deviation z` - Standard Deviation of time values recorded by accelerometer in direction z due to body movement
- `time gravity accelerometer mean x` - Mean of time values recorded by accelerometer in direction x due to gravitational pull
- `time gravity accelerometer mean y` - Mean of time values recorded by accelerometer in direction y due to gravitational pull
- `time gravity accelerometer mean z` - Mean of time values recorded by accelerometer in direction z due to gravitational pull
- `time gravity accelerometer standard deviation x` - Standard Deviation of time values recorded by accelerometer in direction x due to gravitational pull
- `time gravity accelerometer standard deviation y` - Standard Deviation of time values recorded by accelerometer in direction y due to gravitational pull
- `time gravity accelerometer standard deviation z` - Standard Deviation of time values recorded by accelerometer in direction z due to gravitational pull
- `time body accelerometer jerk mean x` -  Mean of time values recorded by accelerometer in direction x due to body movement (jerk)
- `time body accelerometer jerk mean y` -  Mean of time values recorded by accelerometer in direction y due to body movement (jerk)
- `time body accelerometer jerk mean z` -  Mean of time values recorded by accelerometer in direction z due to body movement (jerk)
- `time body accelerometer jerk standard deviation x` - Standard Deviation of time values recorded by accelerometer in direction x due to body movement (jerk)
- `time body accelerometer jerk standard deviation y` - Standard Deviation of time values recorded by accelerometer in direction y due to body movement (jerk)
- `time body accelerometer jerk standard deviation z` - Standard Deviation of time values recorded by accelerometer in direction z due to body movement (jerk)
- `time body gyrometer mean x` - Mean of time values recorded by gyrometer in direction x due to body movement
- `time body gyrometer mean y` - Mean of time values recorded by gyrometer in direction y due to body movement
- `time body gyrometer mean z` - Mean of time values recorded by gyrometer in direction z due to body movement
- `time body gyrometer standard deviation x` - Standard Deviation of time values recorded by gyrometer in direction x due to body movement
- `time body gyrometer standard deviation y` - Standard Deviation of time values recorded by gyrometer in direction y due to body movement 
- `time body gyrometer standard deviation z` - Standard Deviation of time values recorded by gyrometer in direction z due to body movement
- `time body gyrometer jerk mean x` -  Mean of time values recorded by gyrometer in direction x due to body movement (jerk)
- `time body gyrometer jerk mean y` -  Mean of time values recorded by gyrometer in direction y due to body movement (jerk)
- `time body gyrometer jerk mean z` -  Mean of time values recorded by gyrometer in direction z due to body movement (jerk)
- `time body gyrometer jerk standard deviation x` - Standard Deviation of time values recorded by gyrometer in direction x due to body movement (jerk)
- `time body gyrometer jerk standard deviation y` - Standard Deviation of time values recorded by gyrometer in direction y due to body movement (jerk)
- `time body gyrometer jerk standard deviation z` - Standard Deviation of time values recorded by gyrometer in direction z due to body movement (jerk)
- `time body accelerometer mag mean` - Mean of magnitude time values recorded by accelerometer due to body movement
- `time body accelerometer mag standard deviation` - Standard deviation of time values recorded by accelerometer in direction x due to body movement
- `time gravity accelerometer mag mean` -  Mean of magnitude time values recorded by accelerometer due to gravitational pull
- `time gravity accelerometer mag standard deviation` - Standard deviation of magnitude time values recorded by accelerometer due to gravitational pull
- `time body accelerometer jerk mag mean` - Mean of magnitude time values recorded by accelerometer due to body movement (jerk)
- `time body accelerometer jerk mag standard deviation` - Standard deviation of magnitude time values recorded by accelerometer due to body movement (jerk)
- `time body gyrometer mag mean` -  Mean of magnitude time values recorded by gyrometer due to body movement
- `time body gyrometer mag standard deviation` - Standard deviation of magnitude time values recorded by gyrometer due to body movement
- `time body gyrometer jerk mag mean` - Mean of magnitude time values recorded by gyrometer due to body movement (jerk)
- `time body gyrometer jerk mag standard deviation` - Standard deviation of magnitude time values recorded by gyrometer due to body movement (jerk)
- `fourier body accelerometer mean x` - Fast Fourier Transformation of mean of frequency values recorded by accelerometer in direction x due to body movement
- `fourier body accelerometer mean y` - Fast Fourier Transformation of mean of frequency values recorded by accelerometer in direction y due to body movement
- `fourier body accelerometer mean z` - Fast Fourier Transformation of mean of frequency values recorded by accelerometer in direction z due to body movement
- `fourier body accelerometer standard deviation x` - Fast Fourier Transformation of standard deviation of values recorded by accelerometer in direction x due to body movement
- `fourier body accelerometer standard deviation y` - Fast Fourier Transformation of standard deviation of values recorded by accelerometer in direction y due to body movement
- `fourier body accelerometer standard deviation z` - Fast Fourier Transformation of standard deviation of values recorded by accelerometer in direction z due to body movement
- `fourier body accelerometer mean freq x` - Fast Fourier Transformation of mean of frequency values recorded by accelerometer in direction x due to body movement
- `fourier body accelerometer mean freq y` - Fast Fourier Transformation of mean of frequency values recorded by accelerometer in direction y due to body movement
- `fourier body accelerometer mean freq z` - Fast Fourier Transformation of mean of frequency values recorded by accelerometer in direction z due to body movement
- `fourier body accelerometer jerk mean x` - Fast Fourier Transformation of mean of values recorded by accelerometer in direction x due to body movement (jerk)
- `fourier body accelerometer jerk mean y` - Fast Fourier Transformation of mean of values recorded by accelerometer in direction y due to body movement (jerk)
- `fourier body accelerometer jerk mean z` - Fast Fourier Transformation of mean of values recorded by accelerometer in direction z due to body movement (jerk)
- `fourier body accelerometer jerk standard deviation x` - Fast Fourier Transformation of standard deviation of values recorded by accelerometer in direction x due to body movement (jerk)
- `fourier body accelerometer jerk standard deviation y` - Fast Fourier Transformation of standard deviation of values recorded by accelerometer in direction y due to body movement (jerk)
- `fourier body accelerometer jerk standard deviation z` - Fast Fourier Transformation of standard deviation of values recorded by accelerometer in direction z due to body movement (jerk)
- `fourier body accelerometer jerk mean freq x` - Fast Fourier Transformation of mean of frequency values recorded by accelerometer in direction x due to body movement (jerk)
- `fourier body accelerometer jerk mean freq y` - Fast Fourier Transformation of mean of frequency values recorded by accelerometer in direction x due to body movement (jerk)
- `fourier body accelerometer jerk mean freq z` - Fast Fourier Transformation of mean of frequency values recorded by accelerometer in direction x due to body movement (jerk)
- `fourier body gyrometer mean x` - Fast Fourier Transformation of mean of frequency values recorded by gyrometer in direction x due to body movement
- `fourier body gyrometer mean y` - Fast Fourier Transformation of mean of frequency values recorded by gyrometer in direction y due to body movement
- `fourier body gyrometer mean z` - Fast Fourier Transformation of mean of frequency values recorded by gyrometer in direction z due to body movement
- `fourier body gyrometer standard deviation x` - Fast Fourier Transformation of standard deviation of values recorded by gyrometer in direction x due to body movement
- `fourier body gyrometer standard deviation y` - Fast Fourier Transformation of standard deviation of values recorded by gyrometer in direction y due to body movement
- `fourier body gyrometer standard deviation z` - Fast Fourier Transformation of standard deviation of values recorded by gyrometer in direction z due to body movement
- `fourier body gyrometer mean freq x` - Fast Fourier Transformation of mean of frequency values recorded by gyrometer in direction x due to body movement
- `fourier body gyrometer mean freq y` - Fast Fourier Transformation of mean of frequency values recorded by gyrometer in direction y due to body movement
- `fourier body gyrometer mean freq z` - Fast Fourier Transformation of mean of frequency values recorded by gyrometer in direction z due to body movement
- `fourier body accelerometer mag mean` - Fast Fourier Transformation of mean of magnitude of values recorded by accelerometer due to body movement
- `fourier body accelerometer mag standard deviation` - Fast Fourier Transformation of standard deviation of magnitude of values recorded by accelerometer due to body movement
- `fourier body accelerometer mag mean freq` - Fast Fourier Transformation of mean of the magnitude of frequency values recorded by accelerometer due to body movement
- `fourier body accelerometer jerk mag mean` - Fast Fourier Transformation of mean of the magnitude of frequency values recorded by accelerometer due to body movement (jerk)
- `fourier body accelerometer jerk mag standard deviation` - Fast Fourier Transformation of standard deviation of the magnitude of values recorded by accelerometer due to body movement (jerk)
- `fourier body accelerometer jerk mag mean freq` - Fast Fourier Transformation of mean of the magnitude of frequency values recorded by accelerometer due to body movement (jerk)
- `fourier body gyrometer mag mean` - Fast Fourier Transformation of mean of the magnitude of values recorded by gyrometer due to body movement
- `fourier body gyrometer mag standard deviation` - Fast Fourier Transformation of standard deviation of the magnitude of frequency values recorded by gyrometer due to body movement
- `fourier body gyrometer mag mean freq` - Fast Fourier Transformation of mean of the magnitude of frequency values recorded by gyrometer due to body movement
- `fourier body gyrometer jerk mag mean` - Fast Fourier Transformation of mean of the magnitude of values recorded by gyrometer due to body movement (jerk)
- `fourier body gyrometer jerk mag standard deviation` - Fast Fourier Transformation of standard deviation of the magnitude of values recorded by gyrometer due to body movement (jerk)
- `fourier body gyrometer jerk mag mean freq` - Fast Fourier Transformation of mean of the magnitude of frequency values recorded by gyrometer due to body movement (jerk)