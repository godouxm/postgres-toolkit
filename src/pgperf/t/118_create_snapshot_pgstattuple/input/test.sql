CREATE TABLE t1 ( uid INTEGER PRIMARY KEY, uname TEXT NOT NULL );
INSERT INTO t1 VALUES ( 101, 'Park Gyu-Ri' );
INSERT INTO t1 VALUES ( 102, 'Han Seung-Yeon' );
INSERT INTO t1 VALUES ( 103, 'Nicole' );
INSERT INTO t1 VALUES ( 104, 'Koo Ha-Ra' );
INSERT INTO t1 VALUES ( 105, 'Kang Ji-Young' );

SELECT pgperf.create_snapshot_pgstattuple(0);
SELECT count(*) FROM pgperf.snapshot_pgstattuple WHERE schemaname <> 'pgperf';

SELECT pgperf.create_snapshot_pgstattuple(1);
SELECT count(*) FROM pgperf.snapshot_pgstattuple WHERE schemaname <> 'pgperf';

SELECT pgperf.create_snapshot_pgstattuple(2);
SELECT count(*) FROM pgperf.snapshot_pgstattuple WHERE schemaname <> 'pgperf';

SELECT pgperf.delete_snapshot_pgstattuple(1);
SELECT count(*) FROM pgperf.snapshot_pgstattuple WHERE schemaname <> 'pgperf';

SELECT pgperf.delete_snapshot_pgstattuple(2);
SELECT count(*) FROM pgperf.snapshot_pgstattuple WHERE schemaname <> 'pgperf';

SELECT pgperf.delete_snapshot_pgstattuple(0);
SELECT count(*) FROM pgperf.snapshot_pgstattuple WHERE schemaname <> 'pgperf';

DROP TABLE t1;
