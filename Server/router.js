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
        let data = await CrawlWeb.getCourses();
        res.json(data);
    }
    catch (e) {
        res.json([]);
    }
});

// 과제 목록
router.post('/assignments', async (req, res)=>{
    let id = req.body.id;
    let pw = req.body.pw;
    let courseId = req.body.classId;
    try {
        await CrawlWeb.login(id, pw);
        let data = await CrawlWeb.getAssignments(courseId);
        res.json(data);
    }
    catch (e) {
        res.json([]);
    }
})

module.exports = router;