# vimconf
git init
git add README.md 
git commit -m "first commit"
git config --global user.email "ppkill00@gmail.com"
git config --global user.name "ppkill00"
git commit -m "first commit"
git remote add origin https://github.com/ppkill00/vimconf.git
git push -u origin master
git push/.???!!


1. Git
  1.1 Git이란 무엇인가?

Git은 분산형 버전 관리 시스템 (DVCS, Distributed Version Control System)이며 C언어로 구현되었다. 버전 관리시스템은 당신이 어떤 파일 집합에 대한 히스토리를 생성하고 관리할 수 있도록 도우며 특정 다른 상태(어느 시점)으로 복귀(Revert)할 수 있는 기능을 가지고 있다. 파일 집합은 주로 소스코드들이다. 분산 버전 관리 시스템에서 모든 사용자는 완벽한 복사본을 가지고 있으며 (소스코드에 대한 히스토리를 포함) 버전 관리 명령어들을 각 사용자의 로컬에서 실행할 수 있다. DVCS는 중앙 저장소 사용을 항상 요구하지 않는 장점을 갖는다. 

만약 당신이 소스코드에 수정을 가한다면 그것에 대해 버전 관리 시스템에 마크(mark)하고 (즉 index/staging으로 add) 그러고 난 뒤 저장소로 추가(commit)한다. Git은 당신이 복귀할 수 있는 모든 버전들을 관리하고 있다. Git 은 커밋을 당신의 지역 저장소로 하도록 하며 당신의 Remote 저장소로 동기화 하도록 돕는다. Git은 저장소들을 복사 (clone) (소스코드의 완벽한 히스토리를 포함)하는 기능도 있다. 저장소 실제 주인은 push (remote 저장소로 변경사항 전송) 과 pull (remote 저장소로부터 변경사항 받기) 의 두 명령을 통해 변경사항들을 동기화 한다.

Git은 분기 (Branching)을 지원한다. 즉 당신의 소스코드에 대한 다른 버전들을 당신이 마음대로 생성하여 가질 수 있도록 하는 것이다. 만일 당신이 새로운 특정 부분에 대해 개발을 원한다면 먼저 소스코드에 대한 분기(branch)를 열고 변경사항들을 마크 (즉 소스코드를 개발 혹은 수정하여 staging index 에 기록) 할 수 있다. Git은 모든 버전들을 추적한다.

Git은 명령어 콘솔로도 사용될 수 있다. 본 튜토리얼에서는 콘솔 명령어 위주로 설명한다. GUI기반 툴이 필요하다면 EGit (http://www.vogella.de/articles/EGit/article.html) 을 사용해 보길 바란다. 

  1.2 중요 용어 정리

Repository - 저장소
저장소는 히스토리, 시간/태그(Tag)/분기(Branch)에 따른 다른 버전들을 가지고 있다. Git에서 저장소를 다른곳으로 복사하더라도 다시 완벽한 저장소가 된다. 저장소는 작업하고 있는 복사본으로 수정본들을 얼마든지 검색할 수 있도록 한다.

Branches - 분기 와 Tags - 태그
Git 저장서는 모든 분기들과 태그(tags)들을 가지고 있다. 분기들중 하나는 master라고 불리는 기본 분기이다. 사용자는 작업에 필요한 어떤 한 버전의 분기를 이 기본분기로 체크아웃(Checkout)한다.  이것을 작업 카피 (Working Copy)라고 한다.

Commit - 커밋
소스 수정사항들은 저장소로 커밋할 수 있다. 이것은 지난 시간까지 추적된 것에 대한 새로운 리비전(Revision)을 만드는 것이다. 각 커밋은 저자와 커밋한 내용(어떻게 수정을 했는지, 누가 커밋 했는지)을 저장한다.

URL
Git에서 URL은 저장소의 위치이다.

Revision - 리비전
소스코드의 버전을 가리킨다. Git은 SHA1 ids으로 리비전을 구분한다. SHA1 ids는 160비트 으로 긴 편이고 16진수로 표현된다. 가장 최신버전은 HEAD로 불리는 주소로 표현되며 이전 버전은 HEAD~1으로 계속 그런 방식으로 버전이름을 가리킬 수 있다.

  1.3 Staging Index

(저자 왈 : Staging은 임시적인 공간, 혹은 단계를 가리킴)
Git 은 당신이 변경사항들을 명확하게 표기하길 요구하고 저장에 적절하게 수정사항들이 표기되길 원한다. 예를들어 당신이 새로운 파일을 다음 변경사항에 적용하고 싶으면 소위 'staging index'에 그 파일들을 'add file' 명령을 이용해 넣으면 된다. Staging index는 변경사항들에 대한 완벽한 스냅샷이다.

2. 설치

우분투에서는 "sudo apt-get install git-core"
윈도우에서는 http://code.google.com/p/msysgit/ 에서 참고

3. 셋업 (Setup)

Git은 ".gitconfig" 파일에 전역 환경설정내용을 저장하고 있다. 이 파일은 사용자의 홈 디렉토리에 있으며 사용자와 비밀번호 혹은 소스코드 글자색상등을 수정할 수 있다.

  3.1 사용자 설정 (User Configuration)

사용자와 사용자 이메일을 Git을 위해 설정하는 것은 다음 명령어를 통해 진행될 수 있다.

# Git에서 사용될 사용자 설정하기
# 당신의 이름으로 설정하면 된다.
git config --global user.name "Lars Vogel"
 
# 이메일 주소도 당신의 것으로 설정하면 된다.
git config --global user.email "Lars.Vogel@gmail.com"
 
# Set default so that always all changes are pushed to the repository (이건 무슨말인지 잘 모르겠음)
git config --global push.default "matching"
 

그리고 Git 설정사항을 확인하기 위해서는 

git config --list
 

  3.2 컬러 하이라이트

콘솔모드에서 글자 하이라이트 설정하는 명령어

git config --global color.status auto
git config --global color.branch auto
 

  3.3 특정 파일 (커밋) 무시하기

Git에게 ".gitignore"파일을 통해 무시하고 싶은 디렉토리를  알려줄 수 있다. 혹은 파일의 패턴을 알려줄 수 있다. 에를들어 git에게 "bin" 폴더를 무시하고 싶다고 알려주고 싶다면 ".gitignore"파일에 다음과 같이 쓰면 된다.
    
bin
 

4. Git 시작하기

다음 내용들은 Git 을 가지고 일을 하는 방법에 대한 가이드이다. 몇개의 파일들을 생성하게 될 것이고 지역 Git 저장소를 생성한 후 당신의 파일을 커밋하게 될 것이다. 이후에는 저장소를 클론한 뒤 push, pull 하여 저장소간 변경사항들을 동기화 하는 방법을 알아보게 될 것이다. 명령어 창을 열고 다음 명령들을 입력해보길 바란다. 명령어 윗줄에 적은 코멘트들은 명령어를 기입하는 이유로 적힌 내용들이다.

  4.1 내용 생성하기 (Create Content)

버전 관리를 받고 싶은 컨텐츠를 생성한다.
    
# 홈 디렉토리로 이동하기
cd ~/
 
# 저장소 폴더 생성하기
mkdir ~/repo01.git
 
# 저장소 폴더로 이동하기
cd repo01.git
 
# 폴더 생성하기
mkdir datafiles
 
# 파일 생성하기
touch test01
touch test02
touch test03
touch datafiles/data.txt
 
# 첫번째 파일에 몇가지 텍스트 기입하기
ls >test01
 

  4.2 저장소 생성하고 커밋하기

모든 Git 저장소는 .git 폴더에 저장되어 있으며 .git 폴더는 당신이 생성한 git 저장소 폴더안에 있다. .git 폴더는 저장소의 환결설정 정보와 저장소의 완벽한 히스토리 정보를 담고 있다. 다음은 Git 저장소를 생성하는 명령어와 파일들을 저장소의 인덱스어 추가하고 변경사항을 커밋하는 과정을 나타낸다.
    
# 지역 Git 저장소 초기화 하기 (즉 저장소 만들기)
git init
 
# 모든 파일을 저장소로 추가하기
git add .
 
# 지역 저장소로 커밋하기 (첫번째 리비전 만들기)
git commit -m "Initial commit"
 
# 로그 파일 보기
git log
 

  4.3 diff 명령으로 차이점 확인 뒤, 차이점 커밋하기

먼저 파일에 변경 가한 뒤, 차이가 생긴 부분들을 한눈에 보고, 이를 저장소로 커밋하기
    
# 파일 변경하기
echo "This is a change" > test01
echo "and this is another change" > test02
 
# 변경사항들을 diff명령으로 확인하기 
git diff
 
# 변경사항 커밋하기, -a는 수정된 파일들에 대해서만 커밋함
# 하지만 새로운 파일은 자동으로 추가하지 않음
git commit -a -m "These are new changes"
 

  4.4 Status, Diff 와 커밋 Log

다음 명령들은 현재 상태(status)와 커밋 리스트를 보기 위한 것이다.
     
# 파일에 변경 가하기
echo "This is a new change" > test01
echo "and this is another new change" > test02
 
 
// 현재 저장소 상태 확인하기 (파일의 변경/생성/삭제을 나타냄)
git status
 
// 마지막에 커밋한 내용과의 차이점 확인하기
git diff
 
// 커밋하기 (-a 명령은 수정된 파일이 커밋되도록 하는 것)
// -a 명령 없이 커밋하려면 사전에 git add test01, git add test02 해야함
git commit -a -m "More changes - typo in the commit message"
 
// 커밋 히스토리 확인하기
git log
 
// 변경사항 GUI로 확인하기
gitk --all
 

  4.5 커밋 메세지 수정하기 - git amend

위 예제에서 커밋 메세지가 틀렸었다. --amend 파라미터를 이용해 마지막 커밋 메세지를 바꿀 수 있다.
    
git commit --amend -m "More changes - now correct"
 

  4.6 파일 삭제

만일 버전관리를 받던 파일을 삭제했을 경우 "git add ."명령은 staging index에서 파일 제거를 할 수 없다. -A 옵션을 사용하여 "git add -A ."을 할경우 파일 제거가 적용된다. 혹은 커밋 명령어에서 -a옵션을 주면 된다. "git commit -a -m ..." (-a옵션 권장)

    
# 파일을 생성하고 버전관리를 받도록 한다.
touch nonsense.txt
git add . && git commit -m "a new file has been created"
 
# 파일을 제거한다.
rm nonsense.txt
 
# 일반적인 커밋을 시도해본다 -> 실패한다.
git add . && git commit -m "a new file has been created"
 
# -a 옵션을 사용하여 커밋을 해본다.
git commit -a -m"File nosense.txt is now removed"
 
# 또는 대신 staging index에서 제거된 파일을 적용하려면 git add -A . 을 이용하여도 된다.
git add -A . 
git commit -m "File nosense.txt is now removed"
 

  4.7 Remote (Bare) Git 저장소 설정하기

이제 Remote Git 저장소를 생성한다. Git 은 원격 저장소를 네트워크나 로컬이나 상관없이 저장하는 것을 가능하게 한다. 단순하게 설명하기 위해서 로컬 원격 git 저장소를 시도해본다. 일반적인 git 저장소는 원격 git 저장소와 다르다. 일반적인 git 저장소는 소스코드와 git 저장소를 가지고 있다. 이 폴더에서 바로 당신은 아무 작업이나 할 수 있으며, 저장소는 소스코드의 Working Copy를 가지고 있기 때문이다.  원격 저장소는 작업 복사본(Working copy)을 가지고 있지 않다. 저장소 파일만 가지고 있다. 이러한 저장소를 생성하기 위해선 "--bare" 플래그를 사용한다.
    
# 저장소로 이동
cd ~/repo01.git
# 
git clone --bare . ../remote-repository.git
 
# 복사된 파일들이 같은지 확인 (.git 폴더에 있는 파일)
ls ~//remote-repository.git
  

  4.8 다른 저장소로 변경내용 Push 하기

먼저 첫번째 저장소에서 파일에 변경을 가한 뒤에,  원격 저장소로 변경내용 Push 하기

    
# 첫번째 저장소로 이동해서 변경을 가해보자
cd ~/repo01
 
# 다음과 같이 두 파일의 내용을 변경한다.
echo "Hello, hello. Turn your radio on" > test01
echo "Bye, bye. Turn your radio off" > test02
 
# 수정된 파일에 대해 커밋을 하려면 -a 옵션을 이용해 commit 을 실행한다.
# 단, 새로 추가된 파일에 대해서는 자동으로 커밋해주진 않는다.
git commit -a -m "Some changes"
 
# 자, 원격 저장소로 푸쉬해보자.
git push ../remote-repository.git



  4.9 Add Remote

원격 저장소로 Push 하는 경우 URL을 전부 써야하는 불편이 있다. 이 주소를 줄여서 사용할 방법이 있으며 "git remote add 별명 url" 형식으로 줄인다. 별명 중에서 "origin"은 특별한 이름으로, 만일 저장소를 clone하여 사용할 경우 자동으로 해당 저장소를 origin으로 별명을 지정하여 사용되는 키워드이다. origin은 원번 저장소를 가리키는 말이고 작업을 최초로 시작하게 된 곳을 가리키게 된다. 다음과 같이 저장소를 최초로 생성해 사용하는 경우에는 origin이 없으며  한번 등록하게 되면 계속 사용 가능하다.

    
# ../remote-repository.git 저장소를 origin으로 추가한다.
git remote add origin ../remote-repository.git 
 
# 자 현 저장소(working copy)에 수정을 가한다.
echo "I added a remote repo" > test02
 
# Staging index 로 commit 한다.
git commit -a -m "This is a test for the new remote origin"
 
# origin으로 push 한다. 만일 git push 만 입력할 경우 자동으로 origin으로 보내게 된다.
git push origin
 

  4.10 저장소 clone하기

당신의 저장소를 새로운 폴더로 checkout 하는 방법.
(Checkout a new version of your repository into a new directory)

    
# 홈 폴더로 이동한 뒤에
cd ~
 
# 새로운 저장소 폴더를 만들자.
mkdir repo02.git 
 
# 새로운 저장소 폴더로 이동한 뒤에
cd ~/repo02.git
 
# 원격(origin) 저장소로 부터 체크아웃 받자.
git clone ../remote-repository.git .
 

  4.11 변경내용 Push 및 Pull 하기

Pull 은 최신 변경 내용을 다른 저장소로 보내는 작업이다. 새로운 저장소에서 변경된 파일들이 있을경우 push 명령을 통해 변경내용을 원격 저장소로 보낼수 있으며 pull 명령을 통해 이러한 변경사항들을 첫번째 저장소로 끌어올 수 있다.  

  두번째 저장소 (내용 변경됨, 최신버전) -> Push  -> 원격 저장소 (최신버전)
  첫번째 저장소 (구버전->최신버전) <- Pull <- 원격저장소 (최신버전)

    
# 홈 폴더로 이동
cd ~
 
# 두번째 저장소로 이동한다
cd ~/repo02.git
# 변경을 가한다.
echo "A change" > test01
# 커밋
git commit -a -m "A change"
# 원격 저장소로 커밋한다.
# origin은 clone 명령어를 사용했기 때문에 이미 등록되어 있다.
git push origin
# 첫번째 저장소로 이동한다. 그리고 변경내용을 pull 한다.
cd ~/repo01.git
git pull ../remote-repository.git/
# 최신 내용이 적용되었는지 파일 내용 확인
less test01
 

5. Revert Changes (변경사항 Revert-되돌리기)

만약  working copy에서 파일들을 새로 생성했는데 이 파일들을 커밋하고 싶지 않다면 다음과 같이 하면 된다. (아직 변경 내용을 staging 영역으로 올리지 않았을 경우입니다. - git clean )

   
# 파일 생성하기
touch test04
echo "this is trash" > test04
 
# dry-run 해보기 (즉 변경사항 취소하면 무슨 파일에 영향이 오는지 보기)
# -n 옵션이 dry-run 입니다.
git clean -n
 
# 자 이제 지웁시다.
git clean -f
 

예전에 커밋된 버전들중에서 구버전으로 체크아웃 할 수 있습니다. 
git log 명령을 치면 commit 이름이 암호문처럼 길게 나온게 있는데 그 커밋 이름을 쓰면 됩니다.
(되돌아 갈때 Conflict 가 발생할 수도 있는데, 이런경우 파일에 /HEAD 부분(최신버전)과 구버전을 구분하여 파일을 남겨둔다. - 변역자 경험임, 경험이 부족해서인지 이부분 난해하게 느껴집니다.)
(참! 특정 버전으로 checkout 하게 되면 원래의 working copy는 HEAD 버전으로 그대로 남아있구요, 이름이 없는 Branch로 들어가서 구버전을 테스트할 수 있는 상태로 됩니다. git branch 해보면 되요. 여기서 수정,커밋도 됩니다. 본래로 돌아가려면 git checkout master라고 해도 되네요.)
  
# 첫번째 저장소로 가본다.
cd ~/repo01.git 
# 커밋 로그를 확인하면, commit 다음에 영문숫자 암호코드가 있는데 이것이 커밋 이름입니다. 다른 이름도 있는데요, 최신버전은 HEAD, 그 바로 아래 버전은 HEAD~1 입니다.
git log
 
# 자 구버전 중에서 하나를 골라 체크아웃 하면, 구버전으로 돌아갑니다. 
git checkout commit_name
 

만약 Staging index로 변경내용을 적용하지 (add 하지) 않았다면 바로 변경내용을 버릴 수 있다. 
   
# 몇가지 멍청한 실수를 저질렀다고 치자.
echo "stupid change" > test01
 
# Staging Index으로 커밋하지 않았을 경우에는 checkout 받으면 이전 버전으로 돌아갈 수 있다. 
git checkout test01
 
# 잘 돌아갔는지 내용을 확인해 보자.
cat test01
 
# 또 실수를 저질렀다고 치자.
echo "another stupid change" > test01
 
# 이번엔 Staging Index로 변경내용을 적용했다. (add, commit 명령어는 staging 영역을 건드림)
git add test01
 
# Staging Index의 test01을 원래대로 복원한다.
git reset HEAD test01
 
# Staging Index로 부터 본래 파일을 Working Copy로 checkout함으로써 실수한 내용을 원래의 내용으로 최종 복원한다. (크아아악 복잡해)
git checkout test01
  

Revert 명령으로 커밋을 되돌릴 수(Revert) 있다.
   
#Revert a commit
git revert commit_name



 (ex) git revert HEAD     // 또 실행할 경우 바로 이전 commit과 최신 커밋을 계속 반복하며 복원함
  - git reset --hard HEAD // 무조건 HEAD로 복원 (working copy, staging index 모두)

만약 파일을 Index에 추가하였는데 커밋을 하고 싶지 않다면 index에서 없앨 수 있다.
   
// 파일을 생성
touch incorrect.txt
// 실수로 파일을 첨부함
git add .
// 이 파일만 commit에서 제외하고 싶을 때
git reset incorrect.txt
// 자 이제 편히 지우세요.
rm incorrect.txt
 

6. Tagging in Git (태그 사용하기)

Git은 히스토리에 존재하는 특정 버전에 대해 태그를 사용할 수 있는 옵션이 있다. 따라서 좀더 편하게 원하는 예전 소스들을 참고할 수 있게된다. 대부분 일반적으로는 공개적으로 릴리스된 버전들에 대해 태그를 주로 달아 쓴다.

다음 명령을 통해 현재 사용중인 태그를 확인할 수 있다.
  
git tag
 

새로운 태그는 다음과 같이 생성한다.
  
git tag -a version1.6 -m 'version 1.6'
 

만약 태그와 관련된 소스를 사용하고 싶을 경우 다음과 같이 체크아웃 한다.
 
git checkout <tag_name>
  

7. 분기 및 합치기 (Branches and Merging)
  7.1 분기 (Branches)

Git은 분기를 생성할 수 있다. 예를들면 소스코드의 독립적인 카피를 만드는 것이다. 각 분기 독립적으로 소스를 수정할 수 있다. 기본 분기는 master이다. git은 분기를 거의 시간을 들이지 않고 아주 빠르게 분기를 생성할 수 있다. 따라서 개발자들은 별 부담 느끼지 않고 마음대로 분기를 만들어 개발할 수 있게 된다.

다음 명령어는 현재 로컬 저장소의 분기 목록을 보여준다. 활성화된 분기는 * 마크가 붙어있다.
    
git branch 
 

만약 모든 분기를 보고 싶다면 (원격 분기 포함) 다음 명령어를 사용한다.
   
git branch -a
 

새로운 분기는 다음과 같이 생성한다.
    
# Syntax: git branch <name> <hash>
# hash 코드는 커밋 이름이다. 만일 과거 커밋중에서 테스트해보고 싶은 자료가 있다면 분기로 만들 수 있는데, 옵션이므로 꼭 사용할 필요는 없다.
# Switch to your new branch
git branch testing
git checkout testing
 
# 분기 testing에서 파일에 수정을 가해본 후 커밋을 한다.
echo "Cool new feature in this branch" > test01
git commit -a -m "new feature"
 
# 마스터 분기로 이동한다.
git checkout master
 
# 마스터 분기에서 수정사항이 적용되었는지 확인해본다. (안됨)
cat test01
 

  7.2 합치기 (Merging)

Merge는 두 분기의 차이를 결합하는 명령어이다. Merge는 3가지 방법으로 두 분기의 최신 커밋 HEAD를 결합한다. 결과적으로 새로운 HEAD를 갖게 된다. 특정 분기로부터 현재 활성화된 분기로 변경사항을 다음 명령을 통해 결합할 수 있다.
  
# Syntax: git merge <branch-name.
git merge testing
  

만약 merge conflict 가 발생할 경우, git은 conflict 가 발생한 파일의 위치에 직접 표시를 해두어 프로그래머가 수동적으로 충돌난 소스를 수정할 수 있도록 돕는다. 수정이 끝난 후 프로그래머는 staging index로 파일을 추가하거나 commit할 수 있게 된다.

  7.3 분기 삭제하기 

더 이상 필요하지 않은 분기를 삭제하려면 다음 명령을 사용한다.
    
#Delete branch testing
git branch -d testing
# Check if branch has been deleted
git branch
 

8. Merge Conflict 해결하기

Git은 merge conflicts 를 해결하는 방법을 제공한다. 다음 명령어들을 통해 일부러 conflict를 발생시켜보자.
   
# 첫번째 저장소로 이동
cd ~/repo01.git
 
# 파일을 만들고 내용을 수정한다.
touch mergeconflict.txt
echo "Change in the first repo" > mergeconflict.txt
 
# Stage로 추가한 뒤 commit한다.
git add . && git commit -a -m "Will create merge conflict repo1"
 
# 두번째 저장소로 이동한다.
cd ~/repo02.git
 
# 같은 파일을 만들고 내용을 수정한다.
touch mergeconflict.txt
echo "Change in the second repo" > mergeconflict.txt
 
# Stage로 추가한뒤 commit한다.
git add . && git commit -a -m "Will create merge conflict repo2"
 
# master 저장소로 push한다.
git push
 
# 첫번째 저장소로 이동한다.
cd ~/repo01.git
 
# Push를 시도해본다. -> 거절 에러가 발생한다.
git push
 
# 변경사항을 master로 받는다.
git pull origin master  
 

위 마지막 명령어를 통해 최신 소스를 가져오면서 Git은 conflict가 발생한 파일의 소스 위치를 표시(mark)해 놓았다. 다음과 같다.
  
<<<<<<< HEAD
Change in the first repo
=======
Change in the second repo
>>>>>>> b29196692f5ebfd10d8a9ca1911c8b08127c85f8



윗 부분은 현재 저장소에 있던 본래 소스이고, 아랫부분은 원격 저장소에 있던 자료이다. 자 이제부터 수동적으로 수정할 수 있고, 수정후에는 변경내용을 새롭게 커밋할 수 있게 된다. 또는 ' git mergetool '을 사용해도 된다. 이 툴은 두개의 vim 창으로 각 소스를 보여주어 좀 더 쉽게 충돌난 소스를 수정할 수 있도록 돕는다.
   
# 수동적으로 파일을 수정하거나 아니면 다음 결합툴을 사용할 수 있다.
git mergetool
# conflict 가 발생한 파일들을 순차적으로 보여주어, 새로운 파일에 어떤 내용을 넣을지 순차적으로 수정할 수 있게 한다.
 
# 모든 내용을 수동적으로 수정한 뒤, 새로운 내용을 다시 커밋한다.
git commit -m "merged changes"
 

9. Rebase 
  9.1 같은 분기에서 커밋들을 Rebase하기

Rebase는 다수의 커밋들을 하나의 커밋으로 만드는 명령어이다. 자, 필요없는 커밋들을 많이 해보자.
    
# 새로운 파일을 만든다.
touch rebase.txt
 
# Git에 추가한 뒤 커밋한다.
git add . && git commit -m "rebase.txt added to index"
 
# 별 필요없는 텍스트를 추가한 뒤 커밋하는 것을 반복한다.
echo "content" >> rebase.txt
git commit -am "added content"
echo " more content" >> rebase.txt
git commit -am "added more content"
echo " more content" >> rebase.txt
git commit -am "added more content"
echo " more content" >> rebase.txt
git commit -am "added more content"
echo " more content" >> rebase.txt
git commit -am "added more content"
echo " more content" >> rebase.txt
git commit -am "added more content"
 
# 커밋된 내용을 확인
git log



자 이제 rebase.txt에 대한 커밋들을 합쳐보자. 
   
git rebase -i HEAD~7



에디터는 커밋 메세지를 변경할 수 있게 한다. 
(번역자:혹시 숫자를 너무 크게 쓰면 다른 소스랑 겹쳐서 에러가나는 바람에 rebase가 안될 수도 있다. 이때는 git rebase -abort 를 해주자. commit한 수를 세어서 숫자를 입력하길 바란다. 아니면 log에서 맨처음은 1로 보고 차근차근 세길 바란다. rebase후에는 git log를 해도 커밋 메세지는 그대로 남아있다. 아무래도 히스토리 내에서 결합이 이루어지는 것 같다.)

  9.2 Rebase Branches

Git을 이용해 두개의 분기를 rebase할 수 있다. merge 명령이 두 분기를 합친것처럼 rebase는 한 분기의 변경사항을 이용하여 패치(patch)를 만들고 다른 분기에 이를 적용한다. 결과는 merge와 같지만 commit 히스토리가 좀더 깔끔하다. 즉 다른분기의 커밋 메세지가 master의 히스토리 최상단에 그대로 뜸으로써 연속성을 갖는다.
  
# 분기 생성 
git branch testing
# 새로운 분기로 이동
git checkout experiment
# 소스 변경
echo "This will be rebased to master" > test01
# 변경내용 커밋
git commit -a -m "New feature in branch"
# Master로 rebase하기
git rebase master
 
   

10. 패치 생성 및 적용하기

다음을 통해 분기를 생성한 뒤 수정된 내용의 패치를 만들고 master에 적용하는 법을 테스트 해보자.
    
# 새로운 분기 생성
git branch mybranch
 
# 이동
git checkout mybranch
 
# 변경
touch test05
# Change some content in an existing file
echo "New content for test01" >test01
 
# 커밋
git add .
git commit -a -m "First commit in the branch"
 
# 패치 생성하기 --> git format-patch master  (여러개가 생길 수 있다)
git format-patch origin/master
# 0001-First-commit-in-the-branch.patch 패치가 생성되었다.
 
# master 분기로 이동한다.
git checkout master
 
# 패치를 적용한다.
git apply 0001-First-commit-in-the-branch.patch
 
# 패치를 지운다.
rm 00*
 
# master 분기에서 이제 일반적인 commit이 가능하다.
git add .
git commit -a -m "Applied patch"
 
   

* 역자 : git add .은 모든 파일이 staging index에 포함되기 때문에 조심해서 쓰는게 좋다. (git add 파일명 을 쓰거나 아니면 필요없는 파일은 지우거나 다른 곳으로 옮긴다.)

11. 별명 지정하기 (Alias)

특정 명령어에 대한 별명을 사용할 수 있다. 예를들어 git add-commit 명령어를 git add .-A 와 git commit -m 명령어로 결합하여 정의할 수 있다. 정의 후에는 "git add-commit "message"" 로 사용하면 된다.

  
git config --global alias.add-commit '!git add . -A && git commit -m'



12. 파일 또는 폴더 추적 멈추기 (Untrack)

간혹 저장소에 포함하지 말아야할 파일이나 폴더가 생길때가 있다. 만약 .gitignore 파일에 제외 파일/폴더 이름들을 기입하면 git은 기입 시점부터 track을 멈춘다. 이건 파일을 지우지는 않는다. 따라서 최신버전은 그대로 유지된다. Untrack 하려면 다음 명령어를 사용한다.
   
# .metadata 폴더를 untrack 하려는 경우
git rm -r --cached .metadata
# test.txt 파일을 untrack 하려는 경우
git rm --cached test.txt

파일은 지워지지 않는다. 이전 커밋 히스토리 까지는 파일이 여전히 남아있다. 만일 히스토리상에서 사라지길 원한다면 "git filter-branch"를 살펴보길 바란다. 이 명령어는 커밋 히스토리를 수정하기 위해 사용되는 것이다.

13. 원격 저장소
  13.1 원격 저장소 클론하기 (Clone)

Git은 원격 명령을 실행할 수 있다. 전송 프로토콜 타입을 지정할 수도 있다. Native(기본 제공 프로토콜)은 git protocol이다.
git clone git://dev.eclipse.org/org.eclipse.jface/org.eclipse.jface.snippets.git
   

대신 HTTP 프로토콜로 같은 저장소를 클론할 수도 있다.
   
git clone http://dev.eclipse.org/git/org.eclipse.jface/org.eclipse.jface.snippets.git
 

  13.2 원격 저장소 추가하기
(이미 나온내용이지만 번역한다.) 원격 저장소를 커밋하면 기본 저장소는 자동으로 origin을 생성하여 push 명령을 통해 다시 수정내용을 적용할 수 있도록 해준다. 그리고 더 많은 원격 저장소를 "git remote add name 원격저장소주소"로 늘릴 수 있다. 예를들어 만약 위 git 프로토콜 주소로 클론을 했을 경우, 다음과 같이 http 주소를 추가할 수 있다.
 
// Add the http protocol 
git remote add githttp http://dev.eclipse.org/git/org.eclipse.jface/org.eclipse.jface.snippets.git



  13.3 원격 명령어 (http / proxy)

http 프로토콜을 사용해 git 저장소를 복제하는것이 가능하다. 만약 방화벽이 http를 제외한 다른것을 모두 막는 경우, http를 이용한 복제가 매우 유용해진다. 예를들어 다음 명령어를 통해 이클립스 프로젝트를 http와 proxy를 통해 복제할 수 있다. 

환경변수를 이용하는 방법
  
// Linux
export http_proxy=http://proxy:8080
// On Windows
// set http_proxy=http://proxy:8080 
git clone http://dev.eclipse.org/git/org.eclipse.jface/org.eclipse.jface.snippets.git
// push back to the origin using https
git push origin
   

git config를 이용하는 방법
   
// Set proxy for git globally
 git config --global http.proxy http://proxy:8080
// To check the proxy settings
git config --get http.proxy
// Just in case you need to you can also revoke the proxy settings
git config --global --unset http.proxy
 


14. 기타 유용한 명령어들

일상 작업에서 유용할만한 기타 명령어들이다.

git blame filename 
- 누가 생성하고 수정했는지 나타냄

git checkout -b mybranch master~1 
- 새로운 분기를 master와 똑같도록 생성하지만 마지막 커밋 바로 이전의 내용이다.

15. git 서버 설치하기

지금까지 설명한바에 의하면 서버는 굳이 필요 없다. 단순히 로컬 파일 시스템에서 사용하거나 공용 git privder (Github)를 사용하면 된다. 하지만 간혹 편리성을 위해 사설 서버가 필요할 수 있다. ubuntu에서 설치하는 방법을 설명한다. 매우 쉽다.

먼저 SSH가 설치되어 있는지 확실히 해둔다.
 
apt-get install ssh
  

Git을 설치한다. (설치 하지 않았을 경우)
    
sudo apt-get install git-core
 

Git 사용자로 로그인 한뒤 bare repository (원격 저장소 - working copy가 없음) 을 만든다.
   
# login to server
# to test use localhost
ssh git@IP_ADDRESS_OF_SERVER
 
# Create repository
mkdir example.git
cd example.git
git --bare init
 
  

이제부터 원격 저장소로 커밋할 수 있다.
 
mkdir gitexample
cd gitexample
git init
touch README
git add README
git commit -m 'first commit'
git remote add origin git@IP_ADDRESS_OF_SERVER:example.git
git push origin master
  

16. GitHub

지금까지 해온 작업은 서버와 연관은 없었다. 서버를 사용하려면 프리 호스팅 서버를 이용할 수 있다. 
GitHub는 ssh key를 필요로 한다. ssh키를 생성하려면 우분투에서 키생성하는 방법을 검색해 보길 바란다. (http://help.github.com/linux-set-up-git/) 윈도우에서는 msysgit 을 사용하면 된다. (http://help.github.com/msysgit-key-setup/)

GitHub에서 계정을 생성하고 저장소를 만들기 바란다. 저장소 생성뒤 GitHub에서 프로젝트를 업로드 하기 위한 명령어들을 알려준다. 이 명령어를 따라서 프로젝트를 업로드하길 바란다.

17. Git을 위한 GUI Tool

Git에는 자체 GUI 툴이 있다. 히스토리를 보여주는 gitk 와 git 명령어들을 사용할 수 있는 git gui이다. 
윈도우에서는 TortoisGit(http://code.google.com/p/tortoisegit/) 이 있다. 이것은 TortoisSVN(http://tortoisesvn.tigris.org/ 과 비슷하다. 
이클립스용 툴도 있다. (http://www.vogella.de/articles/EGit/article.html)


투토리얼 저자를 후원하시려면 (http://book.git-scm.com/3_git_tag.html, http://bit.ly/oiFUXT)

