OSNAME = ubuntu
OSVER = 20

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

rhel-8: default chisel chipyard astronvim

aws-fpga-ami: default
	echo "not supported yet"
	
ubuntu-onpremise: default chisel chipyard astronvim

###################
default: ## Install the default packages
	bash ./code/default/default-$(OSNAME)-$(OSVER).sh

###################
chisel: java11 coursier sbt diagrammer verilator firtool

java11:
	bash ./code/java/java11-$(OSNAME)-$(OSVER)-latest.sh

coursier:
	bash ./code/coursier/coursier-$(OSNAME)-$(OSVER)-latest.sh

sbt: coursier
	bash ./code/sbt/sbt-$(OSNAME)-$(OSVER)-latest.sh

diagrammer:
	bash ./code/diagrammer/diagrammer-$(OSNAME)-$(OSVER)-latest.sh

firtool:
	bash ./code/firtool/firtool-$(OSNAME)-$(OSVER)-latest.sh

verilator:
	./code/verilator/verilator-$(OSNAME)-$(OSVER)-latest.sh

####################

nvim: ## Install neovim
	bash ./code/nvim/nvim-$(OSNAME)-$(OSVER)-latest.sh

rust: ## Install rust
	bash ./code/rust/rust-$(OSNAME)-$(OSVER)-latest.sh

astronvim: nvim ## Install AstroNvim
	bash ./code/astronvim/astronvim-$(OSNAME)-$(OSVER)-latest.sh
	



####################
conda-install: ## Install conda
	bash ./code/conda/conda-$(OSNAME)-$(OSVER)-latest.sh

conda-setup: conda-install ## Setup conda
	bash ./code/conda/conda-setup-$(OSNAME)-$(OSVER)-latest.sh

chipyard: conda-install conda-setup verilator firtool ## Install Chipyard
	bash ./code/chipyard/chipyard-$(OSNAME)-$(OSVER)-latest.sh
	
	
###################

gui:  ## Install the GUI on a CLI-only system
	bash ./code/gui/gui-rhel-8.sh

ssh:  ## Install and enable the SSH service
	bash ./code/default/ssh.sh
	
xrdp: ## Install and enable the xrdp service
	bash ./code/default/xrdp.sh

bash: ## Select the desired shell (bash, zsh)
	bash ./code/shell/bash-rhel-8-latest.sh

zsh:  ## Select the desired shell (bash, zsh)
	bash ./code/shell/zsh-rhel-8-latest.sh



