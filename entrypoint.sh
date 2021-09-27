#!/bin/sh


gem install bundler
bundle install

echo 'Executando testes ...'
echo $@

cucumber -p $@