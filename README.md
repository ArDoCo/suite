# ArDoCo Suite
The goal of the ArDoCo project is to connect architecture documentation and models with Traceability Link Recovery (TLR) while identifying missing or deviating elements (inconsistencies).
An element can be any representable item of the model, like a component or a relation.
To do so, we first create trace links and then make use of them and other information to identify inconsistencies.

ArDoCo is actively developed by researchers of the _[Modelling for Continuous Software Engineering (MCSE) group](https://mcse.kastel.kit.edu)_ of _[KASTEL - Institute of Information Security and Dependability](https://kastel.kit.edu)_ at the [KIT](https://www.kit.edu).

The ArDoCo Suite eases the deployment and use of the ArDoCo projects.
It contains the deployment actions.
Further, it provides a Docker image to build and use ArDoCo.

Further information can be found in the [ArDoCo Wiki](https://github.com/ArDoCo/Core/wiki).

## How to use the Docker image
Simply run `docker run -it --rm ghcr.io/ardoco/suite`.
You will find the ArDoCo projects in the `/home/ardoco` directory.

