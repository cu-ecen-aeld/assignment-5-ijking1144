#!/bin/sh

case "$1" in
	start)
		echo "starting server"
		start-stop-daemon -S -n aesdsocket -a /usr/bin/simpleserver -- -d
		;;
	stop)
		echo "stopping server"
		start-stop-daemon -K -n aesdsocket -s TERM
		;;
	*)
		echo "Usage: $0 {start|stop}"
	exit 1
esac
exit 0
