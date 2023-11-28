#!/usr/bin/env bash

list="
        cpu-cycles
        instructions
        stalled-cycles-backend
        stalled-cycles-frontend
        branch-misses
        L1-dcache-loads
        L1-dcache-load-misses
        L1-dcache-stores
        L1-dcache-store-misses
        L1-dcache-prefetches
        L1-dcache-prefetch-misses
        L1-icache-loads
        L1-icache-load-misses
        L1-icache-prefetches
        L1-icache-prefetch-misses
        LLC-loads
        LLC-load-misses
        LLC-stores
        LLC-store-misses
        LLC-prefetch-misses
        dTLB-loads
        dTLB-load-misses
        dTLB-stores
        dTLB-store-misses
        dTLB-prefetches
        dTLB-prefetch-misses
        iTLB-loads
        iTLB-load-misses
        branch-loads
        branch-load-misses
"
list=$(echo ${list} | sed -e 's/ /,/g')

perf stat -a -e \
     ${list} \
     $1
