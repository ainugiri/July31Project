//COPYJOB  JOB  (ACCT),'COPY DATASET',CLASS=A,MSGCLASS=X,
//             NOTIFY=&SYSUID
//*
//STEP1     EXEC PGM=IEBGENER
//SYSPRINT  DD  SYSOUT=A
//SYSIN     DD  SAMPLE
//SYSUT1    DD  DSN=SOURCE.DATASET.NAME,DISP=SHR
//SYSUT2    DD  DSN=TARGET.DATASET.NAME,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(TRK,(5,5)), 
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=800)
//*
//* This is a simple JCL job to copy a dataset from SOURCE to TARGET
//*
//* SOURCE.DATASET.NAME - the dataset to be copied
//* TARGET.DATASET.NAME - the target dataset
//*
//* DISP=SHR specifies that the source dataset is shared and should not be modified
//* DISP=(NEW,CATLG,DELETE) specifies that a new dataset is created, cataloged upon success,
//* and deleted if the job fails
//*
//* UNIT=SYSDA specifies the device type for the target dataset
//* SPACE=(TRK,(5,5)) allocates space for the dataset in tracks
//* DCB - Data Control Block specifies the record format and length
//* RECFM=FB indicates fixed-block format
//* LRECL=80 indicates a logical record length of 80 bytes
//* BLKSIZE=800 indicates a block size of 800 bytes
