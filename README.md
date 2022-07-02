# Project RESELT
## 간단한 규칙
1. 개발환경
    - VS Code:
        - 작업범위: JSP, CSS, Javascript
        - Extensions:
            - 필수: [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss), [PostCSS Language Support](https://marketplace.visualstudio.com/items?itemName=csstools.postcss), [HTML CSS Support](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)
            - 추천: [Git Graph (깃 상태를 그래픽으로 확인)](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph), [Live Share (원격 코드 협업)](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
            - **불가: [Extension Pack for Java 및 dependencies (자동 코드 수정으로 실행 불가능, 불가역적)](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack)**
    - Spring Tool Suite 3
        - 작업범위: Java, Spring, DB, 기타 백엔드


2. Branch 관련
    - main과 develop 브랜치의 Pull (Merge) 권한은 팀장과 부팀장에게 있다.
    - 각 기능의 개발은 feature 브랜치에서 개발 후, 작동에 이상이 없는 경우 Pull Request를 요청한다.
        - feature 브랜치의 작명은 'feature/기능명'으로 한다. 예) feature/login, feature/shop
        - 최상위 feature 브랜치의 branch source는 반드시 develop 브랜치로 한다.
        - feature 브랜치 내의 branching은 자유롭게 한다.
        - 브랜치 추가 방법:
            1. GitHub 저장소 Code 탭에서 브랜치 버튼('main'으로 표기) 클릭 후 'View all branches' 클릭
            2. 상단 우측 'New branch'으로 표기된 초록색 버튼 클릭
            3. Branch name 지정 후 Branch source를 develop 혹은 그 이하의 branch로 선택
            4. Create branch 버튼 클릭
            5. 로컬 저장소에서 git pull 실행
    - 팀장 혹은 부팀장이 코드 리뷰를 마치고 이상이 없을 경우 develop 브랜치에 병합한다.
    - 작동 이상여부와 계획된 feature들이 모두 구현되었는지 확인 후 main 브랜치에 병합한다.
        - main 브랜치에 병합 후 버전업 태그를 추가한다.
            - 명령어: git tag -a v{버전번호} -m "RESELT version {버전번호}" --> git push


3. Commit 규칙
    - 준비중


4. 코드 작성 규칙
    - 준비중 
