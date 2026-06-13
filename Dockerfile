# 1. 기반이 될 베이스 이미지 설정 (가벼운 리눅스 기반의 Node.js 20 환경)
FROM node:20-alpine

# 2. 컨테이너 내부에서 작업할 폴더 지정
WORKDIR /app

# 3. 라이브러리 설치를 위해 설정 파일들을 먼저 복사
COPY package*.json ./

# 4. 설정 파일에 적힌 라이브러리(express) 설치 명령어 실행
RUN npm install

# 5. 현재 내 가상머신 폴더에 있는 나머지 소스 코드(app.js 등)를 컨테이너로 복사
COPY . .

# 6. 컨테이너가 외부와 통신할 때 사용할 포트 개방 지정
EXPOSE 8080

# 7. 컨테이너가 켜질 때 최종적으로 웹 서버를 실행할 명령어
CMD ["npm", "start"]