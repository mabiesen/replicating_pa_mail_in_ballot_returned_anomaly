# Replicating Results of the Returned-before-mailed-in ballot anomaly in Pennsylvania (as per Greg On The Right)

The purpose of this repository is to replicate the work. of 'Greg on the right' and store the information in. such a way that anyone may replicate the results

No credence was given to the claim until the results were replicated

## METHOD

* Downloaded the csv locally (via browser)
* ran the ruby script located in this repo on the data set.  Script compares mailed vs returned dates.

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

The source data greg references was removed from the pennsylvania website.

However, after some sleuthing, the URL to retrieve data has been discovered to exist at archive.org

The following link is the parent page which exposes this data:

https://web.archive.org/web/20201109204937/https://data.pa.gov/Government-Efficiency-Citizen-Engagement/2020-General-Election-Mail-Ballot-Requests-Departm/mcba-yywm

The following link is the actual link where you can retrieve my data for replication:

https://web.archive.org/web/20201115001813mp_/https://data.pa.gov/api/views/mcba-yywm/rows.csv?accessType=DOWNLOAD
