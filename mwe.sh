#!/usr/bin/env bash

echo "echo -n \"newlinetest\" > testnewline";
echo -n "newlinetest" > testnewline;
echo ""

echo "echo \"/\$(cat testnewline)/\"";
echo "/$(cat testnewline)/"
echo ""

echo "cargo run";
cargo run;