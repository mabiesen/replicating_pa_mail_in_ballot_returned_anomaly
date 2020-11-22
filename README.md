# Replicating Results of the Returned-before-mailed-in ballot anomaly in Pennsylvania (as per Greg On The Right)

This repo has been saved to archive.org for future reference:

https://web.archive.org/web/20201122054408/https://github.com/mabiesen/replicating_pa_mail_in_ballot_returned_anomaly/blob/main/script_to_show_pennsylvania_discrepancy.rb

The purpose of this repository is to replicate the work of 'Greg on the right', who discovered that Pennsylvania ballots had a return date that occurred before the ballots mailed in date(as per Pennsylvanias own online, once-publicly-available data). Gregs original Tik-Tok post didnt share the source url, we share this detail in this repository as well as a link to the article where one can view Gregs Tik-Tok.

Why did I get so interested in  this?  1) Tik-Tok removed "Greg on the right"'s video,  2) Pennsylvania tried to remove the source data (its gone but not forgotten! see the archive.org link in the RESOURCES section of this document),  3) Data should always be replicated by a peer, in full transparency, before it is considered truth.

This repository seeks to store the information in such a way that anyone may replicate the results

## METHOD

* Downloaded the csv locally (via browser)
* ran the [ruby script located in this repo](script_to_show_pennsylvania_discrepancy.rb) on the data set.  Script compares mailed vs returned dates.

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

The source data Greg references was removed from the Pennsylvania website.

However, after some sleuthing, the URL to retrieve data has been discovered to exist at archive.org

The following link is the parent page which exposes this data, compliments of archive.org:

https://web.archive.org/web/20201109204937/https://data.pa.gov/Government-Efficiency-Citizen-Engagement/2020-General-Election-Mail-Ballot-Requests-Departm/mcba-yywm

**The following link is the actual link where you can retrieve my data for replication, compliments of archive.org:**

https://web.archive.org/web/20201115001813mp_/https://data.pa.gov/api/views/mcba-yywm/rows.csv?accessType=DOWNLOAD

## QUESTIONS ABOUT THIS REPO 

Q: Why not just store the data from pa.gov?

A: If I store the data in this repository one might accuse me of having manipulated the data.  It is much more secure, for all parties involved, for the user to obtain their own dataset from the link mentioned in the resources section of this document.

Q: What do the different columns of the csv data actually mean?

A: Greg on the right, in his video, shows an explanation  for each column in the dataset.  It was not the purpose of this study to evaluate what the columns mean, the only goal of this repository is to prove that Greg had access to data (now taken away by PA authorities), and that Greg was attempting  his best efforts at analysis by comparing the returned and mailed dates.

I've seen what happened to the Covington kids, I've seen what's happened to those in the media who decide to air Trump-endorsed phenomenon.  This repository is me doing my part to prevent mischaractarization of those who challenge mainstream authority. If it is determined a misunderstanding occurred, so-be-it, nonetheless this kid "Greg On the Right" did his best to uncover faulty practices, I intend to help him keep his good name by showing the data existis and his analysis is replicable.

Q: Greg used Excel, which everyone has.  Why didnt you provide the code as excel capable?

A: As Greg noted in his Tik-Tok video, Excel is limited to  only holding 'x' number of rows.  The Ruby programming language does not encounter this issue, one can read csv to memory without the application freezing or rejecting the data.  Why Ruby? Because I wanted this to be quick, and this is the language I am working with presently.
