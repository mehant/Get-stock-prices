Get-stock-prices
================

Script to download historical stock prices

This script uses Yahoo's finance API's to get historical stock prices. 

This script requires two input parameters

  1. File containing list of symbols, one on each line. These are the stock symbols for which the
     historical prices will be downloaded
  2. Output directory where you want your data to be downloaded
  

Example:

```bash
./getHistoricalPrices.sh dow30SymbolsOnly.txt data
```

This will download the historical stock prices for all the symbols in dow30SymbolsOnly.txt in the output directory data.

