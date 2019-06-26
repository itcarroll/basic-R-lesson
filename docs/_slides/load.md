---
---

## Load Data

We will use the function `read.csv()` to load data from a Comma Separated Value
file. The essential argument for the function to read in data is the path to the
file, other optional arguments adjust how the file is read.

Additional file types can be read in using `read.table()`; in fact, `read.csv()`
is a simple wrapper for the `read.table()` function having set some default
values for some of the optional arguments (e.g. `sep = ","`).
{:.notes}

===

Type `read.csv(` into the console and then press **tab** to see what arguments
this function takes. Hovering over each item in the list will show a description
of that argument from the help documentation about that function. Specify the
values to use for an argument using the syntax `name = value`.



~~~r
> read.csv(
+   file = 'data/species.csv',
+   stringsAsFactors = FALSE)
~~~
{:title="Console" .input}


~~~
   id            genus         species    taxa
1  AB       Amphispiza       bilineata    Bird
2  AH Ammospermophilus         harrisi  Rodent
3  AS       Ammodramus      savannarum    Bird
4  BA          Baiomys         taylori  Rodent
5  CB  Campylorhynchus brunneicapillus    Bird
6  CM      Calamospiza     melanocorys    Bird
7  CQ       Callipepla        squamata    Bird
8  CS         Crotalus      scutalatus Reptile
9  CT    Cnemidophorus          tigris Reptile
10 CU    Cnemidophorus       uniparens Reptile
11 CV         Crotalus         viridis Reptile
12 DM        Dipodomys        merriami  Rodent
13 DO        Dipodomys           ordii  Rodent
14 DS        Dipodomys     spectabilis  Rodent
15 DX        Dipodomys             sp.  Rodent
16 EO          Eumeces       obsoletus Reptile
17 GS         Gambelia           silus Reptile
18 NL          Neotoma        albigula  Rodent
19 NX          Neotoma             sp.  Rodent
20 OL        Onychomys     leucogaster  Rodent
21 OT        Onychomys        torridus  Rodent
22 OX        Onychomys             sp.  Rodent
23 PB      Chaetodipus         baileyi  Rodent
24 PC           Pipilo       chlorurus    Bird
25 PE       Peromyscus        eremicus  Rodent
26 PF      Perognathus          flavus  Rodent
27 PG        Pooecetes       gramineus    Bird
28 PH      Perognathus        hispidus  Rodent
29 PI      Chaetodipus     intermedius  Rodent
30 PL       Peromyscus        leucopus  Rodent
31 PM       Peromyscus     maniculatus  Rodent
32 PP      Chaetodipus    penicillatus  Rodent
33 PU           Pipilo          fuscus    Bird
34 PX      Chaetodipus             sp.  Rodent
35 RF  Reithrodontomys      fulvescens  Rodent
36 RM  Reithrodontomys       megalotis  Rodent
37 RO  Reithrodontomys        montanus  Rodent
38 RX  Reithrodontomys             sp.  Rodent
39 SA       Sylvilagus       audubonii  Rabbit
40 SB         Spizella         breweri    Bird
41 SC       Sceloporus          clarki Reptile
42 SF         Sigmodon     fulviventer  Rodent
43 SH         Sigmodon        hispidus  Rodent
44 SO         Sigmodon    ochrognathus  Rodent
45 SS     Spermophilus       spilosoma  Rodent
46 ST     Spermophilus    tereticaudus  Rodent
47 SU       Sceloporus       undulatus Reptile
48 SX         Sigmodon             sp.  Rodent
49 UL           Lizard             sp. Reptile
50 UP           Pipilo             sp.    Bird
51 UR           Rodent             sp.  Rodent
52 US          Sparrow             sp.    Bird
53 ZL      Zonotrichia      leucophrys    Bird
54 ZM          Zenaida        macroura    Bird
~~~
{:.output}


===

Question
: How does `read.csv` determine the field names?

Answer
: {:.fragment} The `read.csv` command assumes the first row in the file contains
column names. Look at `?read.csv` to see the default `header = TRUE` argument.
What exactly that means is described down in the "Arguments" section.

===

Use the assignment operator "<-" to load data into a variable for
subsequent operations.



~~~r
animals <- read.csv(file = 'data/animals.csv')
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}


===

After reading in the "animals.csv" file, you can explore what types of data are
in each column with the `str` function, short for "structure".



~~~r
> str(animals)
~~~
{:title="Console" .input}


~~~
'data.frame':	35549 obs. of  9 variables:
 $ id             : int  2 3 4 5 6 7 8 9 10 11 ...
 $ month          : int  7 7 7 7 7 7 7 7 7 7 ...
 $ day            : int  16 16 16 16 16 16 16 16 16 16 ...
 $ year           : int  1977 1977 1977 1977 1977 1977 1977 1977 1977 1977 ...
 $ plot_id        : int  3 2 7 3 1 2 1 1 6 5 ...
 $ species_id     : Factor w/ 49 levels "","AB","AH","AS",..: 17 13 13 13 24 23 13 13 24 15 ...
 $ sex            : Factor w/ 3 levels "","F","M": 3 2 3 3 3 2 3 2 2 2 ...
 $ hindfoot_length: int  33 37 36 35 14 NA 37 34 20 53 ...
 $ weight         : int  NA NA NA NA NA NA NA NA NA NA ...
~~~
{:.output}


===

Missing data, as interpreted by the `read.csv` function, is controlled by the
`na.strings` argument. Override the default value of `'NA'` with the empty
string, `''`, to properly interpret the "species_id" and "sex" columns.

You can also specify multiple things to be interpreted as missing values, such
as `na.strings = c("missing", "no data", "< 0.05 mg/L", "XX")`.
{:.notes}



~~~r
animals <- read.csv(file = 'data/animals.csv', na.strings = '')
~~~
{:title="{{ site.data.lesson.handouts[0] }}" .text-document}




~~~r
> str(animals)
~~~
{:title="Console" .input}


~~~
'data.frame':	35549 obs. of  9 variables:
 $ id             : int  2 3 4 5 6 7 8 9 10 11 ...
 $ month          : int  7 7 7 7 7 7 7 7 7 7 ...
 $ day            : int  16 16 16 16 16 16 16 16 16 16 ...
 $ year           : int  1977 1977 1977 1977 1977 1977 1977 1977 1977 1977 ...
 $ plot_id        : int  3 2 7 3 1 2 1 1 6 5 ...
 $ species_id     : Factor w/ 48 levels "AB","AH","AS",..: 16 12 12 12 23 22 12 12 23 14 ...
 $ sex            : Factor w/ 2 levels "F","M": 2 1 2 2 2 1 2 1 1 1 ...
 $ hindfoot_length: int  33 37 36 35 14 NA 37 34 20 53 ...
 $ weight         : int  NA NA NA NA NA NA NA NA NA NA ...
~~~
{:.output}

