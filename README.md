# Scibox

Vagrant box aimed at bootstraping the work with scientific computation packages
like [jupyter](http://jupyter.org/) and [julia](http://julialang.org/). 

Currently it is in pre-alpha stage.

## Getting Started

First of all you will need to [install vagrant](https://www.vagrantup.com/docs/installation/). 

Then:

```bash
cd ~
git clone https://github.com/infiRD/Scibox.git
cd Scibox
vagrant up && vagrant ssh
```

If you want to upgrade linux distribution in the box, run following:

```bash
UPGRADE=true vagrant up && vagrant reload && vagrant ssh
```

After proper startup, jupyter notebook should be available on [http://localhost:8888](http://localhost:8888)

You can find security token required by jupyter by executing inside Scibox:

```bash
jupyter notebook list
```

## Based on

* [Ubuntu 16.04.1 LTS (Xenial Xerus)](http://releases.ubuntu.com/16.04/) - Linux distro
* [VAGRANT](https://www.vagrantup.com/) - VM manager
* [conda](https://github.com/conda/conda) - Conda package manager
* [jupyter/notebook](https://github.com/jupyter/notebook) - jupyter notebooks
* [JupyterLab](https://github.com/jupyter/notebook) - JupyterLab computational environment
* [julia](https://github.com/JuliaLang/julia) - Julia language

## Versioning
We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/infiRD/Scibox/tags)

## Authors

* **Martin Zamba** - *Initial work* - [infiRD](https://github.com/infiRD)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Contributing

Contributions to scibox are welcome. Just fork the GitHub repository and send a pull request
