# Сбоник примеров использования SPM

Не претендует на полноту с точки зрения демонстрации SPM, но в нем собраны примеры из доклада

## ThornyPath

Иллюстрация состояния проекта Taxi в разные моменты времени. Зависимости из Cocoapods закоммичены, но в некоторых случая для запуска необходимо будет вызвать скрипт.
``./SPMSupport/generate.sh Debug``

## DependenciesFromCocoapods

Пример того, как можно подклчать зависимости из Cocoapods, используя паттерн Adapter

## DependenciesFromSPM

Пример подклчения зависимостей через SPM, используя локальный пакет, добавленный в Workspace. Можно попробовать команду
``swift package update --dry-run``

## ExamplePackage

Просто пример Swift пакета

## ModuleNotFound

Иллюстрация проблемы, рассмотреной в докладе. Ошибка **Module Not Found**, возникающая в //Compatibility Header//

## ObjcSPM

Модуль из Objective-С кода

## WarningsAsErrorsExample

Пример того, как можно сделать **Warnings As Errors**.

## WhatISPackageManager

Добавление зависимости из SPM, по примеру Apple
