@echo off 
echo === apply docker image and run to remote server === 
ssh r2bit@r2bit.ddns.net -p 3333 'bitWriting/docker_bit-writing/update_docker.sh'
pause