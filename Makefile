help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


all: default chipyard ide conda chipyard ## 전체 설치

rocky-onpremise: default ssh xrdp chisel chipyard astronvim

rocky-aws:       default          chisel chipyard astronvim

###################
default: ## 기본 패키지 설치
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
ide: nvim astronvim

# NVIM
nvim: 
	./code/nvim/nvim-rhel-8-latest.sh

rust:
	./code/rust/rust-rhel-8-latest.sh

astronvim: nvim rust
	./code/astronvim/astronvim-rhel-8-latest.sh
	



####################
conda: conda-install conda-setup

conda-install:
	./code/conda/conda-rhel-8-latest.sh

conda-setup: conda-install
	./code/conda/conda-setup-rhel-8-latest.sh

chipyard: conda-install conda-setup verilator
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



