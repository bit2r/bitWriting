# bitWriting

 ## 도커 

기반 docker 이미지 생성과 실제 웹앱을 생성 배포할 수 있는 두가지 도커를 만들었습니다. 

### docker_bit-shiny 

`shinyAce`와 `보고서` 출력을 생성할 수 있는 기본 패키지 및 `latex`및 폰트를 설치하여 

shinyAce를 기반 개발을 할 수 있는 기본 환경입니다. 

기본 이미지라 자주 갱신할 일은 없습니다.  

`joygram/bit-shiny` 로 배포합니다. 

```
build_docker.[cmd,sh] : 도커 이미지를 생성합니다.
push_docker.[cmd,sh] : 도커 이미지를 배포합니다. 
```



### docker_bit-writing 

실제 개발한 웹앱을 이미지하고 배포하는 도커 입니다. `납품`의 용도로 사용하게 됩니다. 

`joygram/bit-writing`으로 배포합니다. 

``` 
build_docker.[cmd,sh] : 도커 이미지를 생성합니다.
push_docker.[cmd,sh] : 도커 이미지를 배포합니다. 
run_docker.[cmd,sh] : 배포된 이미지를 다운받고 실행합니다. 
```

`Dockerfile`은 docker_local에 있는 파일을 함께 사용합니다. 



현재는 app아래 있는 것을 이미지로 생성하고 배포하도록 구성되어 있습니다. 

현재는 `joygram` 계정에 private 저장소에 등록하도록 하였으나 

후에 별도 계정을 docker hub에 생성후 변경하면 되도록 하였습니다. 



### docker_local

로컬머신에 도커를 생성하고 실행하여 테스트 할 수 있도록 구성하였습니다.

`bit-writing`의 이미지를 생성합니다. 

 ```
 build_docker.[cmd,sh] : 도커 이미지를 생성합니다.
 run_docker.[cmd,sh] : 로컬 도커를 실행합니다. 
 ```



## app

