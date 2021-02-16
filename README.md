PP-Module for Server Virtualization 
============
[![Build Status](https://travis-ci.com/commoncriteria/servervirtualization.svg?branch=master)](https://github.com/commoncriteria/virtualization/actions) 
[![GitHub issues Open](https://img.shields.io/github/issues/commoncriteria/servervirtualization.svg?maxAge=2592000)](https://github.com/commoncriteria/servervirtualization/issues) 
![license](https://img.shields.io/badge/license-Unlicensed-blue.svg)

This repository hosts the draft version of the Extended Package for Server Virtualization based on the 
[Essential Security Requirements (ESR)](https://commoncriteria.github.io/pp/servervirtualization/servervirtualization-esr.html) for this technology class of 
products. This repository is used to facilitate collaboration and development on the draft document. 
See the [release](#Release-Version) section if you are looking for the officially released version for evaluations. 
A list of products that have passed evaluation against this Protection Profile can be found [here](https://www.niap-ccevs.org/Profile/Info.cfm?id=410).

## Draft Version

* [PP-Module for Server Virtualization](https://commoncriteria.github.io/servervirtualization/servervirtualization-release.html) (html)
* [PP-Module for Server Virtualization](https://commoncriteria.github.io/servervirtualization/servervirtualization-release.pdf) (pdf)
* [Supporting Documents for Server Virtualization](https://commoncriteria.github.io/clientvirtualization/clientvirtualization-sd.html) (html)
* [Supporting Documents for Server Virtualization](https://commoncriteria.github.io/clientvirtualization/clientvirtualization-sd.pdf) (PDF)



## Release Version
* [Extended Package for Server Virtualization](https://www.niap-ccevs.org/Profile/Info.cfm?id=410)

## Contributing

If you are interested in contributing directly to future versions the this Protection Profile, please consider joining the NIAP technical community.
* [How to join the NIAP Technical Community (Mailing list and updates)](https://www.niap-ccevs.org/NIAP_Evolution/tech_communities.cfm)

## Feedback

Questions, comments, and fixes can be submitted to the [repository issue tracker](https://github.com/commoncriteria/servervirtualization/issues)


## Quickstart
To clone this project along with its _transforms_ submodule run:

````
  git clone --recursive git@github.com:commoncriteria/servervirtualization.git
````
To pull updates from the upstream _transforms_ submodule and commit them run:
````
 git submodule update --remote transforms
 git add transforms
 git commit
````

### Development Info
[Help working with Transforms Submodule](https://github.com/commoncriteria/transforms/wiki/Working-with-Transforms-as-a-Submodule)

## Repository Content
* input - Contains the 'meat' of the project. It's the input content (in XML form) that gets transformed to readable html.
* output - The output directory where the html is placed after transformation.
* output/images - The directory where images are stored
* transforms - Points to the transform subproject which is really a repository for resources shared amongst many Common Criteria projects.

## Links 
* [National Information Assurance Partnership (NIAP)](https://www.niap-ccevs.org/)
* [Common Criteria Portal](https://www.commoncriteriaportal.org/)

## License

See [License](./LICENSE)
