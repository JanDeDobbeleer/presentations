# Continuous Integration

## PROJECT SETUP

    $ mkdir ucll-java

    $ cd ucll-java

    $ git init (show files with ls and code .)

Let's use a nice docker image to build our source, that way we do not contaminate our OS

    $ docker run -rm -v=$(pwd):/app --workdir=/app gradle:alpine gradle init --type java-application

add the following code to the gradle file

    jar {
        manifest {
            attributes 'Implementation-Title': 'UCLL Java App',
                    'Main-Class': 'App'
        }
    }

    $ ls (show files)

    $ docker run --rm -v=$(pwd):/app --workdir=/app gradle:alpine gradle build

    $ docker run --rm -v=$(pwd):/app --workdir=/app gradle:alpine java -jar /app/build/libs/app.jar

    $ git add .; git commit -m 'Initial commit'

    $ git status

create .gitignore file (gitignore.io)

    $ wget https://www.gitignore.io/api/java%2Cgradle%2Cvisualstudiocode -O .gitignore

Makefile

We don't want to type that long command every time we build or clean, so we're going to fix that with a makefile:

    .PHONY: build

    ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

    build:
        docker run --rm -v=${ROOT_DIR}:/app --workdir=/app gradle:alpine gradle clean build


Test the new functionality with make build.

## TESTING

Run `make build` again, everything turns out to be successful.

Change the Main class and have the function return null instead of the sentence.

Run `make build` and it will fail. Nice.

We can also add code coverage (EXPLAIN) by using Jacoco. Edit build.gradle to include jacoco test results.

    apply plugin: 'jacoco'

    jacocoTestReport {
        reports {
            xml.enabled true
            html.enabled true
        }
    }

    jacocoTestCoverageVerification {
        violationRules {
            rule {
                limit {
                    minimum = 0.5
                }
            }
        }
    }

    check.dependsOn jacocoTestCoverageVerification

We now get an XML report (used for CI later on) and HTML report (to check locally) that contains code coverage results. If we change the rule, we can make the build fail.

VALIDATE

Let’s see if we can add some coala bears, first let's have a look at the bears we have our disposal:

    $ docker run -v=$(pwd):/app --workdir=/app coala/base coala --show-bears --filter-by-language java

Create a new `.coafile` using

    $ docker run -v=$(pwd):/app --workdir=/app coala/base coala --save

Open the file and add the following content:

    [Default]
    files = src/**/*.java
    language = java

    [SPACES]
    bears = SpaceConsistencyBear
    use_spaces = True

Let's adjust the makefile to include coala:

    validate:
        docker run --rm -v=${ROOT_DIR}:/app --workdir=/app coala --ci -V

run coala to display the output

    $ make validate

change the file to have tabs instead of spaces and run coala again

    $ make validate

Add a new lovely configuration for to-do:

    [TODOS]
    bears = KeywordBear

Adjust one source file to include a `//TODO:` comment and run coala again

    $ make validate

If we now try to build when we have something that does not match our conventions, the build will fail.

We can also so static code analysis by using the PMD bear:

    [PMD]
    bears = JavaPMDBear
    check_optimizations = true
    check_naming = false

Have a look at the output now, we can see warning for a few things we can fix to get better code. Nice. Let’s fix them so we can proceed.

## GIT

We now have everything we need to get started. Let's create a remote repository first. Go to GitHub and **create a new repository**. Copy the URL and add a remote:

    $ git remote add origin <URL>

Add all the files we just created and verify:

    $ git add .

    $ git status

Adjust where needed and create your first commit and push to master

    $ git commit –m 'Initial commit'

    $ git push –set-upstream origin master

Check out your newly create GitHub repository!

## CI

We can now create a CI build. Select a platform of choice, we'll go with Travis.

Create a `.travis.yml` file to get started

    $ touch .travis.yml

Edit the file and add the following lines:

    sudo: required

    services:
    - docker

    script: make ci

    after_success:

    - codecov

Commit and push this change. Go to Travis and create a new build for this repository, force push the changes again to see it getting build.

Illustrate the example on circle and explain branching and how to see the feedback in GitHub.