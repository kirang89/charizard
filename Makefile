#
#Makefile to setup a development environment in my system
#

no_targets__:

list:
	@grep '^[^#[:space:]].*:' Makefile | grep -Ev 'no_targets__:|list:'

all: install-local, install-java, install-python, install-ruby, install-ohmyzsh

install-local:
	echo "> Setting up local ubuntu environment"

	echo "> Installing apt packages"
	sudo sh local/installer.sh
	echo "> Setting up aliases"
	cat local/aliases.sh >> ~/.bashrc

install-java:
	echo "> Setting up java workspace"

	echo "> Installing JDK 7" 
	cd java/; sudo sh java_workspace.sh; cd - 
	echo "> =====================Java Workspace Setup completed======================"

install-python:
	echo "Setting up Python workspace"

	sudo sh python/py_workspace.sh
	echo "> Installing required pip modules"
	pip install -r python/requirements.txt
	echo "> =====================Python Workspace Setup completed======================"

install-ruby:

	echo "> Setting up Ruby workspace"
	sudo sh ruby/ruby_workspace.sh
	echo "> Installing Octopress"
	sudo sh ruby/octopress.sh
	echo "> =====================Ruby Workspace Setup completed======================"

install-go:
	echo "> Setting up Go workspace"

	sudo sh Go/golang.sh
	echo "> =====================Go Workspace Setup completed======================"

install-ohmyzsh:
	echo "> Setting up oh-my-zsh"

	sudo sh zsh/ohmyzsh.sh
