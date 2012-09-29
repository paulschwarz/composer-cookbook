# Composer Cookbook

## Description

Chef cookbook that installs Composer making use of your composer.json file. If you change this file you can either provision again or run `php composer.phar install`.

## Attributes

* `node['composer']['base_path']` - the path where composer will be download to and installed.
