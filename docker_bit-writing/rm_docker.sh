# 같은 포트 사용으로 동시 실행이 안되게 두개 다 멈춤 
docker stop $(docker ps -q --filter ancestor='r2bit/bit-writing')
docker image rm 'r2bit/bit-writing' 