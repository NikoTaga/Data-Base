#!/bin/bash

mysqldump example > example.sql

mysql sample < example.sql
