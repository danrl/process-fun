all:
	docker build -t process-fun:running    running/
	docker build -t process-fun:waiting    waiting/
	docker build -t process-fun:zombie     zombie/
	docker build -t process-fun:orphaned   orphaned/
	docker build -t process-fun:daemonized daemonized/
