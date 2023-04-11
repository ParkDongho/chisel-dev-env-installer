help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


rhel-8: default chisel chipyard astronvim

aws-fpga-ami:
	echo "not supported yet"
	
ubuntu-onpremise:
	echo "not supported yet"

###################
default: ## Install the default packages
	./code/default/default-rhel-8.sh


###################
chisel: coursier sbt diagrammer verilator

java11:
	./code/java/java11-rhel-8-latest.sh

coursier:
	./code/coursier/coursier-rhel-8-latest.sh

sbt: coursier
	./code/sbt/sbt-rhel-8-latest.sh

diagrammer:
	./code/diagrammer/diagrammer-rhel-8-latest.sh

verilator:
	./code/verilator/verilator-rhel-8-latest.sh

####################

nvim: ## Install neovim
	./code/nvim/nvim-rhel-8-latest.sh

rust: ## Install rust
	./code/rust/rust-rhel-8-latest.sh

astronvim: nvim rust ## Install AstroNvim
	./code/astronvim/astronvim-rhel-8-latest.sh
	



####################
conda-install: ## Install conda
	./code/conda/conda-rhel-8-latest.sh

conda-setup: conda-install ## Setup conda
	./code/conda/conda-setup-rhel-8-latest.sh

chipyard: conda-install conda-setup verilator ## Install Chipyard
	./code/chipyard/chipyard-rhel-8-latest.sh
	
	
###################

gui:  ## Install the GUI on a CLI-only system
	./code/gui/gui-rhel-8.sh

ssh:  ## Install and enable the SSH service
	./code/default/ssh.sh
	
xrdp: ## Install and enable the xrdp service
	./code/default/xrdp.sh

bash: ## Select the desired shell (bash, zsh)
	./code/shell/bash-rhel-8-latest.sh

zsh:  ## Select the desired shell (bash, zsh)
	./code/shell/zsh-rhel-8-latest.sh



