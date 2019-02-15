# Gitdoccciazu
Ran
ng build --prod
The resulting dist folder has a subfolder gitdoccciazu, which contains the files including index.html

## Docker
From the above we need the following lines in Dockerfile
## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*
##  From 'builder' stage copy over the artifacts in dist folder to default nginx public folder
COPY ./dist/gitdoccciazu /usr/share/nginx/html

since the container is built using nginx:alpine

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 7.2.3.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).

 