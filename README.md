# Project RESELT
1. 개발환경
    - [VS Code](https://code.visualstudio.com/):
        - 작업범위: JSP, CSS, Javascript
        - Extensions:
            - 필수: [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss), [PostCSS Language Support](https://marketplace.visualstudio.com/items?itemName=csstools.postcss), [HTML CSS Support](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)
            - 추천: [Git Graph (깃 상태를 그래픽으로 확인)](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph), [Live Share (원격 코드 협업)](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
            - **불가: [Extension Pack for Java 및 dependencies (자동 코드 수정으로 실행 불가능, 불가역적)](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack)**
    - Spring Tool Suite 3
        - 작업범위: Java, Spring, DB, 기타 백엔드
    - 협업툴 (🙏자주 이용 바랍니다🙏): [Gather Town (원격 오피스)](https://app.gather.town/invite?token=kcTp-jMm5i9hr3RX_eeZAISPmPHZ9dv6), [GitHub Projects (칸반보드)](https://github.com/orgs/reseltbitcamp/projects/3/views/1)
    - [Tailwind CSS](https://tailwindcss.com/docs/installation)
        - [Tailwind CSS CLI 설치 및 사용방법](https://github.com/reseltbitcamp/reselt/wiki/TailwindCSS-CLI-%EC%84%A4%EC%B9%98-%EB%B0%8F-%EC%82%AC%EC%9A%A9%EB%B0%A9%EB%B2%95#1-nodejs-%EC%84%A4%EC%B9%98)


2. Branch 관련
  - main 브랜치의 Pull (Merge) 권한은 팀장과 부팀장에게 있다.
  - 각 기능의 개발은 feature 브랜치에서 개발 후, 작동에 이상이 없는 경우 Pull Request를 요청한다.
      - feature 브랜치의 작명은 '{issue#}-{feature이름}-{short-description}'으로 한다. 예) 23-shop-link-fix, 50-hotfix-core
      - feature 브랜치 내의 branching은 자유롭게 한다.
  - 팀장 혹은 부팀장이 코드 리뷰를 마치고 이상이 없을 경우 main 브랜치에 병합한다.
  - 작동 이상여부와 계획된 feature들이 모두 구현되었는지 확인되면 버전업 태그를 추가한다.
      - 명령어: git tag -a v{버전번호} -m "RESELT version {버전번호}" --> git push


3. Commit 규칙
    - Commit 메시지는 "{issue#} {feature이름}: 설명" 예) "23-shop-링크 수정"
