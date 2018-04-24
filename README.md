## 황금알M 

#### 1. Gemfile

```ruby
gem 'httparty'
gem 'nokogiri'
gem 'json'
gem 'protected_attributes'
gem 'bootstrap', '~> 4.0.0'
gem 'rack-cors', :require => 'rack/cors'
gem 'figaro'
```



#### 2. Controller 

- users - 사용자 로그인 처리
- home - 메인 페이지 처리

```
$ rails g controller users
$ rails g controller home
```



#### 3. Users controller

- 로그인 및 회원가입 처리를 위한 세션 저장 및 처리

```ruby
# 세션에 grade란 놈이 비어있는가 ?
if session[:grade].nil? 
  # ...
  # 로그인 처리 코드
  # ...
  # 로그인 시 grade 등급과 error 메세지를 세션에 저장
  session[:grade] = grade
  session[:error] = error
end
```



#### 4. Homes controller

- url 파라미터 얻기

```ruby
# url이 www.test.com?name=값 일때, name의 값을 가져오기
@urlparam = request.query_parameters['name']
```



#### 5. home Views

- 자동완성 기능

```javascript
var options = {
  // 자동완성의 필요한 검색 목록 url 혹은 db url
  url: "http://13.124.230.32/phps/_search_popular?stx",

  getValue: "value",

  list: {
    match: {
    enabled: true
    }
  }
};
console.log(options);
$("#data-json").easyAutocomplete(options);
```



#### 기술 스택

- 프론트앤드 : Html5, css3, JavaScript, Ruby on Rails, Ajax, jQuery
- 백앤드 : Ruby on Rails, AWS EC2, PHP,  MSSQL, Nginx, Apache
- 기타 : Trello, Github, C9, Atom, Bootstrap, Highcharts, dataTables, easy-autocomplete