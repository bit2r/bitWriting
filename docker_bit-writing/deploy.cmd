@echo off 
call build_docker.cmd 
call push_docker.cmd 
call run_docker_remote.cmd 
