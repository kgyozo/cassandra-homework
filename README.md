# Cassandra Homework 

## Context
We are developing the backend of an invoicing system. The system can receive two types pf messages:

1. HEADER [invoice_id, invoice_date, invoice_address]
1. DETAIL [invoice_id, line_id, article_name, article_price]

The messages can arrive in any order (e.g. a DETAIL message can arrive before the 
corresponding HEADER message arrives).

We store both the header and the detail information in a single table called `invoice`.

## Homework

1. Fix the create script in the `01-create-script.sql` file so that both the 
upsert statements from the `02-upsert-readonly.sql` file and the 
select statements in the `03-query-readonly.sql` can be executed without changes.
1. Fix the queries in the `04-query-fix.sql` file so that they work as expected.

## Installing and Using Cassandra

There are two easy ways to use Cassandra on your computer, detailed under the following chapters.

### Download and unpack
 
Download the tarball from [here](http://cassandra.apache.org/download/), and
unpack it to any folder.

Go to the `bin` folder of the unpacked Cassandra, and execute the following commands.

```bash
# Start cassandra service (if it is not started yet)
cassandra 

# Start the CQL shell
cqlsh
```

### Docker

It is very easy to run cassandra with Docker. The cassandra service is automatically
started within the container, so you just need to start the CQL shell.

```bash
# Pull latest release
docker pull cassandra

# Create a cassandra container named cc
docker run --name cc -d cassandra

# Start a CQL shell within the container
docker exec -it cc cqlsh
```
