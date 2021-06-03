const express = require('express');
const crawl = require('./crawl');
const router = express();


// 로그인
router.post('/login', (req, res)=>{
    let id = req.body['id'];
    let pw = req.body['pw'];

    crawl.Login(id, pw).then((data)=>{
        res.send(data);
    })
});

// 강의 목록
router.post('/lectures', (req, res)=>{
    let id = req.body['id'];
    let pw = req.body['pw'];

    crawl.getCourseList(id, pw).then((data)=>{
        res.json(data);
    })
});

// router.post('/lectures', (req, res)=>{
//     let id = req.body['id'];
//     let pw = req.body['pw'];

//     crawl.getCourseList(id, pw).then((data)=>{
//         res.json(data);
//     });
// })

module.exports = router;