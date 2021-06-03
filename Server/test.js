// http 모듈 require 설정
const http = require('http');


// http 모듈 서버 생성
// http 요청시 response 실행 function 동작 방식은 아직 잘 모르겠음
var sever = http.createServer(function(request, response){
    response.writeHead(200,{'Content-Type':'text/html'});
    response.end('Hello node.js!!');
});


sever.listen(8080,function(){
    console.log('Server is running...');
})