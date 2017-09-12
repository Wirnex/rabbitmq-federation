#!/bin/bash

rabbitmq-server -setcookie $(head -n 1 /.erlang.cookie)
