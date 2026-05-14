#!/usr/bin/env bash

(trap 'kill 0' SIGINT; 
(cd mf-gw && pnpm run start) & 
(cd mf-1 && pnpm start) & 
(cd mf-2 && pnpm start))