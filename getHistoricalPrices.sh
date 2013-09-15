#!/bin/bash

symbolTable=$1
baseUrl="http://ichart.finance.yahoo.com/table.csv?s="

# An arbitrarily historical date 01/01/1980
startDate="&a=00&b=01&c=1980"

# Set the end date to Current date 09/14/2013 month is zero based
endDate="&d=08&e=14&f=2013"

# Other options; get daily data
options="&g=d&ignore=.csv"

# Specify output directory;
# Files will be downloaded with symbol names
outputDir=$2

# check if input file is specified
if [[ ${symbolTable} = "" ]]
then 
  echo "ERROR: Specify input file with symbols"
  exit
fi

# check if output directory is specified
if [[ ${outputDir} = "" ]]
then 
  echo "ERROR: Specify output directory in which data should be downloaded" 
  exit
fi

while read inputline
do
  echo "Processing Symbol: ${inputline}"
  echo "Downloading spreadsheet for symbol: ${inputline}"
  url="${baseUrl}${inputline}${startDate}${endDate}${options}"
  echo "Downloading from URL ${url} ..."
  wget -O ${outputDir}/${inputline} ${url} 
  echo "Completed downloading symbol: ${inputline}" 
done < ${symbolTable}
