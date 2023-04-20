OSNAME = ubuntu
OSVER = 20

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

rhel-8: default chisel chipyard astronvim

aws-fpga-ami: default
	echo "not supported yet"
	
ubuntu-onpremise: default

###################
default: ## Install the default packages
	./code/default/default-$(OSNAME)-$(OSVER).sh

###################
chisel: coursier sbt diagrammer verilator

java11:
	./code/java/java11-$(NAME)-$(OSVER)-latest.sh

coursier:
	./code/coursier/coursier-$(OSNAME)-$(OSVER)-latest.sh

sbt: coursier
	./code/sbt/sbt-$(NAME)-$(OSVER)-latest.sh

diagrammer:
	./code/diagrammer/diagrammer-$(NAME)-$(OSVER)-latest.sh

verilator:
	./code/verilator/verilator-$(NAME)-$(OSVER)-latest.sh

####################

nvim: ## Install neovim
	./code/nvim/nvim-$(NAME)-$(OSVER)-latest.sh

rust: ## Install rust
	./code/rust/rust-$(NAME)-$(OSVER)-latest.sh

astronvim: nvim rust ## Install AstroNvim
	./code/astronvim/astronvim-$(NAME)-$(OSVER)-latest.sh
	



####################
conda-install: ## Install conda
	./code/conda/conda-$(NAME)-$(OSVER)-latest.sh

conda-setup: conda-install ## Setup conda
	./code/conda/conda-setup-$(NAME)-$(OSVER)-latest.sh

chipyard: conda-install conda-setup verilator ## Install Chipyard
	./code/chipyard/chipyard-$(NAME)-$(OSVER)-latest.sh
	
	
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



