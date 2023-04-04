all: default Chisel IDE

###################
default:
	./code/default/default-rhel-8.sh

ssh:
	./code/default/ssh.sh
	
xrdp: 
	./code/default/xrdp.sh


###################
Chisel: java coursier sbt diagrammer

java:
	./code/java/java11-rhel-8-latest.sh

coursier:
	./code/coursier/coursier-rhel-8-latest.sh

sbt:
	./code/sbt/sbt-rhel-8-latest.sh

diagrammer:
	./code/diagrammer/rhel-8-latest.sh


####################
IDE: nvim astronvim

# NVIM
nvim: 
	./code/nvim/nvim-rhel-8-latest.sh

astronvim:
	./code/astronvim/astronvim-rhel-8-latest.sh


####################
Chipyard: verilator conda chipyard

verilator:
	./code/verilator/verilator-rhel-8-latest.sh

conda:
	./code/conda/conda-rhel-8-latest.sh

chipyard:
	./code/chipyard/chipyard-rhel-8-latest.sh


