# dsMiscellaneous

[![License](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.html)

## Introduction

Miscellaneous development tools for use in DataSHIELD. DataSHIELD is a platform for privacy preserving analysis.

https://github.com/datashield


## Files

`installer_unix.sh`  Installer in UNIX (shell script)

`installation_steps_workflow.md` Installation steps for DataSHIELD

`datashield_installer_basic.R` R installation script to install R packages for DataSHIELD

`baby_steps.R` First coding project in DataSHIELD

`teaching_resources.md` Teaching resources using DataSHIELD

`opal_instructions.txt` Instructions for setting up and using Opal server (data warehouse)


## Installation

Install Ubuntu

   * https://ubuntu.com/download/desktop

Run `installer_unix.sh`

```
chmod 7555 installer_unix.sh

./installer_unix.sh

```

Run the following from the terminal

```r

R --no-save < datashield_installer_basic.R

```

Go to Firefox, and type localhost:7575 to go to R Studio server


## Instructions for using DataSHIELD as a developer


* opal_instructions.txt

	* instructions for uploading data dictionary, data and creating tables in Opal server

	* Opal javascript code
	
		* https://opaldoc.obiba.org/en/latest/magma-user-guide/value/value.html
	

* Other resources about DataSHIELD and Opal

     * Opal

                * https://opaldoc.obiba.org/en/latest/cookbook/index.html

	* Installation of virtual machines and DataSHIELD
	
		* https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/931069953/Installation+Training+Hub-+DataSHIELD+v6


    * Virtual Box VM download

             * https://www.virtualbox.org/wiki/Downloads 

    * Ubuntu ISO image

             * https://ubuntu.com/download/desktop

    * Installation of development VM

             * https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/1658093595/RStudio+Server+based+Development+VM

	* Installation for development environment
	
		* https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/12943461/Getting+started
		
	* Testing and development
	
		* https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/735314034/Writing+some+tests
		
	* Git tips and tricks
	
		* https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/1006633032/GitHub+Bring+edits+from+another+repository+to+your+own
		
	* Developer tips and tricks
	
		* https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/702218241/Developer+Tricks+and+Tips
		
        	* https://isglobal-brge.github.io/resource_bookdown/package-info.html#example-of-datashield-package-development
		
	* Setting up Opal server and loading data
	
		* https://gitlab.inesctec.pt/wp4-recap/wp4_workshop/-/wikis/opal
	
	* Creating your own VM

                * https://data2knowledge.atlassian.net/wiki/spaces/DSDEV/pages/367656962/Vagrant 
	
	* DataSHIELD repository
	
		* https://github.com/datashield	

                * https://opaldoc.obiba.org/en/latest/cookbook/index.html
	

	* Demo servers
	
		* https://opal-demo.obiba.org/

		* username: administrator    password: password	

		* https://datashield-demo.obiba.org/


## Contact

Soumya Banerjee

sb2333@cam.ac.uk


## Citation

If you find this helpful, please cite the following DOI

10.5281/zenodo.5772830

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5772831.svg)](https://doi.org/10.5281/zenodo.5772831)

