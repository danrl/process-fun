all:
	docker build -t ps-running    running/
	docker build -t ps-waiting    waiting/
	docker build -t ps-zombie     zombie/
	docker build -t ps-orphaned   orphaned/
	docker build -t ps-daemonized daemonized/
