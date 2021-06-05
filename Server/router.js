const express = require('express');
const session = require('express-session');
const crawl = require('./crawl');
const router = express();


// 로그인
router.post('/login', (req, res)=>{
    let id = req.body.id;
    let pw = req.body.pw;

    crawl.Login(id, pw, req.session).then((data)=>{
        res.send(data);
    })
});

// 강의 목록
router.get('/lectures', (req, res)=>{
    let id = req.body.id;
    let pw = req.body.id;

    crawl.getCourseList(req.session['driver']).then((data)=>{
        res.json(data);
    })
});

module.exports = router;