const express = require('express');
const session = require('express-session');
const Crawl = require('./crawl');
const router = express();


// 로그인
router.post('/login', (req, res)=>{
    let id = req.body.id;
    let pw = req.body.pw;
    console.log(type(id), id);
    global.crawl = new Crawl();
    global.crawl.init()
    .then(() => {
        return global.crawl.login(id, pw);
    })
    .then((data) => {
        res.send(data);
    })
});

// 강의 목록
router.get('/classes', (req, res)=>{
    global.crawl.getCourseList()
    .then((data)=>{
        res.json(data);
    })
});

module.exports = router;