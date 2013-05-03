#
#Makefile to setup a development environment in my system
#

no_targets__:

list:
	@grep '^[^#[:space:]].*:' Makefile | grep -Ev 'no_targets__:|list:'

all: ub_env, java_env, python_env, ruby_env, ohmyzsh

ubenv:
	echo "> Setting up local ubuntu environment"

	echo "> Installing apt packages"
	sudo sh ubuntu/packages.sh
	echo "> Setting up aliases"
	cat ubuntu/aliases.sh >> ~/.bashrc

java_env:
	echo "> Setting up java workspace"

	echo "> Installing JDK 7" 
	cd java/; sudo sh java_workspace.sh; cd - 
	echo "> =====================Java Workspace Setup completed======================"

python_env:
	echo "Setting up Python workspace"

	sudo sh python/py_workspace.sh
	echo "> Installing required pip modules"
	pip install -r python/requirements.txt
	echo "> =====================Python Workspace Setup completed======================"

ruby_env:

	echo "> Setting up Ruby workspace"
	sudo sh ruby/ruby_workspace.sh
	echo "> Installing Octopress"
	sudo sh ruby/octopress.sh
	echo "> =====================Ruby Workspace Setup completed======================"

go_env:
	echo "> Setting up Go workspace"

	sudo sh Go/golang.sh
	echo "> =====================Go Workspace Setup completed======================"

ohmyzsh:
	echo "> Setting up oh-my-zsh"

	sudo sh zsh/ohmyzsh.sh
