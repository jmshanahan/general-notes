### Introduction

General setup guides and observations on typescript.

## Setup a project.

1. Create the project directory
2. npm init -y
3. npm i typescript tsc-watch

tsc-watch uses tsc-w under the hood and once the TS compiler has compiled all changes it will restart the server.

The following appears to be a good initialising script

```
npx tsc --init --moduleResolution node --resolveJsonModule --target es6 --noImplicitAny --sourceMap --lib dom,es2017 --outDir dist
```
