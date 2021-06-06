const express = require('express');
const session = require('express-session');
const CrawlWeb = require('./crawl');
const router = express();

CrawlWeb.open();

// 로그인
router.post('/login', async (req, res)=>{
    let id = req.body.id;
    let pw = req.body.pw;
    try {
        await CrawlWeb.login(id, pw);
        res.send('200');
    }
    catch {
        res.send('400');
    }
});

// 강의 목록
router.post('/classes', async (req, res)=>{
    let id = req.body.id;
    let pw = req.body.pw;
    try {
        await CrawlWeb.login(id, pw);
        let data = await CrawlWeb.getCourseList();
        res.json(data);
    }
    catch (e) {
        res.json([]);
    }
});

module.exports = router;