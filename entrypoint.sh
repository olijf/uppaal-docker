#!/bin/sh

sudo chown -R uppaal:uppaal /home/uppaal/persistent
exec "$@"
