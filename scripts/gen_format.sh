#!/bin/bash

clang-format --style=$@ --dump-config > .clang-format
