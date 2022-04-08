/* Generated Code (IMPORT) */
/* Source File: ASECSAS4.5.csv */
/* Source Path: /home/u45414622/sasuser.v94 */
/* Code generated on: 4/8/22, 11:33 AM */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/home/u45414622/sasuser.v94/ASECSAS4.5.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


Proc means;

proc univariate normal plot data=work.import;

proc freq data=work.import order=freq;
tables poverty*stateabbr/CHISQ;

proc freq data=work.import order=freq;
tables poverty*Metro/CHISQ;

Proc Corr data=work.import pearson spearman;

PROC LOGISTIC data=work.import plots(maxpoints=none)=all descending;
class poverty / param=ref;
model poverty = numberinhousehold incomescale totalincome minor;
	title 'Logistic on Poverty and predictive variables'


%web_open_table(WORK.IMPORT);