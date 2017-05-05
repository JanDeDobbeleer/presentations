<h2 style="text-align: center;">slido.com</h2>

<h2 style="text-align: center;">&#35; 1337</h2>

---

<h2 style="text-align: center;">getting started with continuous integration</h2>

---

<!-- .slide: data-background-image="data-background-image="img/wat.gif"" -->

---

### what

> continuous integration (CI) is a development practice that requires developers to integrate code into a shared repository several times a day. Each check-in is then verified by an automated build, allowing teams to detect problems early.

term coined by Grady Booch in 1994

---

### shared repository

<ul>
    <li>version control system</li> <!-- .element: class="fragment" data-fragment-index="1" -->
    <li>currently: [GIT](https://git-scm.com/)</li> <!-- .element: class="fragment" data-fragment-index="2" -->
    <li>deep knowledge of these tools is required if we want to optimize our developer workflow</li> <!-- .element: class="fragment" data-fragment-index="3" -->
</ul>

---

### tooling

<ul>
    <li>[github](https://github.com) (free for public repo’s)</li> <!-- .element: class="fragment" data-fragment-index="1" -->
    <li>[bitbucket](https://bitbucket.org/) (free)</li> <!-- .element: class="fragment" data-fragment-index="2" -->
    <li>[visual studio team services](https://www.visualstudio.com/team-services/) (free)</li> <!-- .element: class="fragment" data-fragment-index="3" -->
    <li>[gitlab](https://gitlab.com) (free)</li> <!-- .element: class="fragment" data-fragment-index="4" -->
</ul>

---

### verified

linting tools, used to look for errors and style issues in your code, can optionally also fix them

<ul>
    <li>[coala](https://coala.io)</li> <!-- .element: class="fragment" data-fragment-index="1" -->
    <li>[checkstyle](http://checkstyle.sourceforge.net/)</li> <!-- .element: class="fragment" data-fragment-index="2" -->
</ul>

---

### verified

static code analysis, find issues in your code before they go live 

<ul>
    <li>[PMD](https://pmd.github.io/)</li> <!-- .element: class="fragment" data-fragment-index="1" -->
    <li>[findbugs](http://findbugs.sourceforge.net/)</li> <!-- .element: class="fragment" data-fragment-index="2" -->
    <li>[sonarqube](https://www.sonarqube.org/)</li> <!-- .element: class="fragment" data-fragment-index="3" -->
</ul>

---

### verified

run tests on code and artifacts

- unit tests (TDD, BDD) <!-- .element: class="fragment" data-fragment-index="1" -->
- functional tests (Selenium) <!-- .element: class="fragment" data-fragment-index="2" -->
- integration tests <!-- .element: class="fragment" data-fragment-index="3" -->

---

### verified

possible pitfalls

- complex tooling (maintenance++) <!-- .element: class="fragment" data-fragment-index="1" -->
- wrong tooling <!-- .element: class="fragment" data-fragment-index="2" -->
- only happy flows are tested <!-- .element: class="fragment" data-fragment-index="3" -->

---

### automated build

- each checkin (commit) is built automatically using a build automation tool <!-- .element: class="fragment" data-fragment-index="1" -->
- build tools: MSBuild, Gradle, Maven, make, Ant, Psake,…) <!-- .element: class="fragment" data-fragment-index="2" -->

---

### automated build

possible pitfalls

- waiting time <!-- .element: class="fragment" data-fragment-index="1" -->
- context switch for developers <!-- .element: class="fragment" data-fragment-index="2" -->
- build bottleneck <!-- .element: class="fragment" data-fragment-index="3" -->
- complex build (hard to maintain) <!-- .element: class="fragment" data-fragment-index="4" -->

---

### automated build

on premise tools

<ul>
    <li>[jenkins](https://jenkins.io/) (free)</li> <!-- .element: class="fragment" data-fragment-index="1" -->
    <li>[teamcity](https://www.jetbrains.com/teamcity/) (free for open source)</li> <!-- .element: class="fragment" data-fragment-index="2" -->
    <li>[bamboo](https://www.atlassian.com/software/bamboo) (free for open source)</li> <!-- .element: class="fragment" data-fragment-index="3" -->
    <li>[gocd](https://www.gocd.io/) (free)</li> <!-- .element: class="fragment" data-fragment-index="4" -->
    <li>[gitlab](https://gitlab.com) (free)</li> <!-- .element: class="fragment" data-fragment-index="5" -->
</ul>

---

### automated build

cloud based tools

<ul>
<li>[travis](https://travis-ci.org/) (free)</li> <!-- .element: class="fragment" data-fragment-index="1" -->
<li>[circle ci](https://circleci.com/) (free for 1 container)</li> <!-- .element: class="fragment" data-fragment-index="2" -->
<li>[visual studio team services](https://www.visualstudio.com/team-services/) (free)</li>  <!-- .element: class="fragment" data-fragment-index="3" -->
<li>[appveyor](https://www.appveyor.com/) (free for open source)</li>  <!-- .element: class="fragment" data-fragment-index="4" -->
<li>[gitlab](https://gitlab.com) (free)</li>  <!-- .element: class="fragment" data-fragment-index="5" -->
</ul>

---

# demo time

