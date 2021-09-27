#!/bin/sh

cd /httparty-cucumber

gem install bundler
bundler update --bundler
bundle install

echo 'Executando testes ...'
echo $@

cucumber -p $@