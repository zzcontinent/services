JOB_NAME=ipsniffer
SERVICE_DIR=/usr/lib/systemd/system/$(JOB_NAME)/
SERVICE_ETC_LS_FILE=/etc/systemd/system/$(JOB_NAME).service
FILES=$(shell ls | grep -v makefile)

all:
	@echo "use make install for install service"
	@echo "use make uninstall for uninstall service"

install:
	@echo "install..."
	for name in $(FILES); \
	do \
		install -Dm755 $$name $(SERVICE_DIR)$$name; \
	done
	systemctl enable $(SERVICE_DIR)$(JOB_NAME).service
	systemctl daemon-reload

uninstall:
	@echo "uninstall..."
	systemctl stop $(JOB_NAME).service
	systemctl disable $(JOB_NAME).service
	for name in $(FILES); \
	do \
	rm -i -f $(SERVICE_DIR)$$name; \
	done
	rm -i -f $(SERVICE_ETC_LS_FILE) 
