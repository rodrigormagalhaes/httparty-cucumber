#!/bin/sh


gem install bundler
bundle install

echo 'Executando testes ...'

cucumber --format pretty --format json --out=report.json