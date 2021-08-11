#!/bin/bash

wget https://github.com/jhead/phantom/releases/download/v$1/phantom-$2

chmod +x /phantom/phantom-$2

command=( "/phantom/phantom-$2 -server ${SERVER}" )

if [[ -v IPV6 ]] && [ "$IPV6" == "1" ]; then
  command+=("-6")
fi

if [[ -v BIND_IP ]]; then
  command+=("-bind ${BIND_IP}")
fi

if [[ -v BIND_PORT ]]; then
  command+=("-bind_port ${BIND_PORT}")
fi

if [[ -v DEBUG ]] && [ "$DEBUG" == "1" ]; then
  command+=("-debug")
fi

if [[ -v REMOVE_PORTS ]] && [ "$REMOVE_PORTS" == "1" ]; then
  command+=("-remove_ports")
fi

if [[ -v TIMEOUT ]]; then
  command+=("-timeout ${TIMEOUT}")
fi

if [[ -v THREADS ]]; then
  command+=("-workers ${THREADS}")
fi


echo "Startin proxy: ${command[@]}"

eval ${command[@]}
