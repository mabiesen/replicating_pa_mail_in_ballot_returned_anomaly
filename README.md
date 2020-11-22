# Replicating Results of the Returned-before-mailed-in ballot anomaly in Pennsylvania (as per Greg On The Right)

The purpose of this repository is to replicate the work of 'Greg on the right', who discovered that Pennsylvania ballots had a return date that occurred before the ballots mailed in date(as per Pennsylvanias own online, once-publicly-available data). Gregs original Tik-Tok post didnt share the source url, we share this detail in this repository as well as a link to the article where one can view gregs tik tok.

Why did I get so interested in  this?  1) tik tok removed "greg on the right"'s video,  2) Pennsylvania tried to remove the source data (its gone but not forgotten! see the archive.org link in the RESOURCES section of this document)

This repository seeks to store the information in such a way that anyone may replicate the results

## METHOD

* Downloaded the csv locally (via browser)
* ran the ruby script located in this repo on the data set.  Script compares mailed vs returned dates.

## REPLICATING RESULTS

The intention is for the user to retrieve their own data from the link provided in the RESOURCES section of this page

The user must have a working ruby setup (I dont think version matters at all).

The user must run the ruby script titled 'script_to_show_pennsylvania_discrepancy.rb' in this repository

When prompted by the script, the  user must provide the path  to the csv data that they  downloaded locally.

Please review the script for innacuracies, I aim to be more transparent than our voting process.

## CONCLUSION

"Greg on the right"'s results have been replicated, insofar as the data he used is the data I used.

Here is the output of my script:
```
THESE ARE THE REULTS
Count of ballots returned before mailed-in date:  23305
Count of ballots returned on mailed-in date: 34916
TOTAL COUNT ballots returned on-or-before-mailed-in-date: 58221
```

## RESOURCES

The article which sparked my inquiry may be found here:

https://web.archive.org/web/20201121213002/https://www.thegatewaypundit.com/2020/11/breaking-video-young-internet-sleuth-reveals-evidence-showing-23k-pa-ballots-filled-returned-ever-mailed-voters/

The source data greg references was removed from the Pennsylvania website.

However, after some sleuthing, the URL to retrieve data has been discovered to exist at archive.org

The following link is the parent page which exposes this data, compliments of archive.org:

https://web.archive.org/web/20201109204937/https://data.pa.gov/Government-Efficiency-Citizen-Engagement/2020-General-Election-Mail-Ballot-Requests-Departm/mcba-yywm

The following link is the actual link where you can retrieve my data for replication, compliments of archive.org:

https://web.archive.org/web/20201115001813mp_/https://data.pa.gov/api/views/mcba-yywm/rows.csv?accessType=DOWNLOAD
