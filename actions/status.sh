#!/bin/bash

echo "Checked status of the service"

if [[ -f "example.txt" ]]; then
  exit 0
fi
exit 1
