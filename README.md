## A modded version of Percona Server 5.7 that includes sysbench for testing.
> Replication is automaticly setup and ready to go on startup.



## Usage

```
make up

When you are ready to use and test with sysbench run:
make start_sysbench

When done
make down_all
```