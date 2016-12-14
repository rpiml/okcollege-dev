<img src="https://cloud.githubusercontent.com/assets/1910070/19412182/26d80642-92de-11e6-83bf-039eaec7fac1.png"/>

# OkCollege Development Repository

Development repository for the okcollege predictive AI high school counselor project.

## Developing

### Prerequisites

* `git`
* `docker`
* [`docker-compose`](https://docs.docker.com/compose/install/)


### Running the project

1. Clone this repository (we'll call the directory `okcollege`)
2. Run `git submodule init` then `git submodule update --recursive`
3. Init installs with `./bin/okcollege-init` (only re-run on submodule update)
4. Start the server with `./bin/okcollege`
