#!/bin/sh


gem install bundler
bundle install

echo 'Executando testes ...'

cucumber -p json_report