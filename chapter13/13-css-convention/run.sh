#!/usr/bin/env bash

cd mf-blue || exit
pnpm i
cd ..
cd mf-red || exit
pnpm i
npx pilet debug ../mf-red/src/index.tsx ../mf-blue/src/index.tsx
