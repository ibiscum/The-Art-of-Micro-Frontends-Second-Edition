#!/usr/bin/env bash

(trap 'kill 0' SIGINT; 
(cd red && pnpm run start) & 
(cd blue && pnpm run start) & 
(cd green && pnpm run start) & 
(cd gateway && pnpm run start))
