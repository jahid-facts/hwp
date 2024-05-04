const express = require('express');
const { getNewsPages,saveNewsPages,getSingleNewsPages,updateNewsPages,deleteNewsPages } = require('../controllers/newsPageController');
const router = express.Router();

router.get('/news-pages-media', getNewsPages);
router.get('/news-pages-media/:id', getSingleNewsPages);
router.put('/update-news-pages-media/:id', updateNewsPages);
router.delete('/delete-news-pages-media/:id', deleteNewsPages);
router.post('/save-news-pages-media', saveNewsPages);

module.exports = router;