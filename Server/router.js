const express = require('express');
const session = require('express-session');
const Crawl = require('./crawl');
const router = express();


// 로그인
router.post('/login', (req, res)=>{
    let id = req.body.id;
    let pw = req.body.pw;
    console.log(typeof(id), id);
    req.session[id] = new Crawl();
    req.session[id].init()
    .then(() => {
        return req.session[id].login(id, pw);
    })
    .then((data) => {
        res.send(data);
    })
    .catch((e) => {
        console.log(e);
        res.send('400');
    })
});

// 강의 목록
router.post('/classes', (req, res)=>{
    let id = req.body.id;
    req.session[id].getCourseList()
    .then((data)=>{
        res.json(data);
    })
});

module.exports = router;