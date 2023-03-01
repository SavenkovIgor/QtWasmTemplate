# Copyright © 2016-2023. Savenkov Igor
# SPDX-License-Identifier: GPL-3.0-or-later

cmake_minimum_required (VERSION 3.25.0)

project (QtWasmTemplate
         VERSION 0.1
         DESCRIPTION "Template for Qt/QML projects for WebAssembly. With GitHub Actions CI/CD and github pages."
         HOMEPAGE_URL ""
         LANGUAGES CXX)

find_package (Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable (QtWasmTemplate main.cpp)

set_target_properties (QtWasmTemplate
    PROPERTIES
        AUTOMOC ON
        CXX_STANDARD 20
        CXX_STANDARD_REQUIRED ON)

qt_add_qml_module (QtWasmTemplate
    URI QtTemplateModule
    VERSION 1.0
    QML_FILES main.qml
    RESOURCE_PREFIX "/qt/qml")

target_link_libraries (QtWasmTemplate PRIVATE Qt6::Quick)
