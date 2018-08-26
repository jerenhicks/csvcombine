# csvcombine

Purpose:
This program takes in a directory of CSV files and combines them into one. However, it will take the headers from each of the files other than the first and strip them away, essentially creating one combined csv file. Should only be utilized for CSV files that share the same columns and data.

How to use:
Download code, build into jar.
Run jar with: java -jar csvcombine.jar <OPTIONAL1> <OPTIONAL2>
  OPTIONAL1: Input directory. If not set, defaults to C:/test
  OPTIONAL2: Output directory. If not set, defaults to C:/test/output

Will run and output all the files it found, when it starts, and when it finishes.
Last message indicates where the file that it created can be found at.
