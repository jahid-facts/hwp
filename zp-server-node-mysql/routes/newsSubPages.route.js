const express = require("express");
const {
  getNewsSubPages,
  saveNewsSubPages,
  getSingleNewsSubPages,
  updateNewsSubPages,
  deleteNewsSubPages,
} = require("../controllers/newsSubPageController");
const router = express.Router();

router.get("/news-media-sub-pages", getNewsSubPages);
router.get("/news-media-sub-pages/:id", getSingleNewsSubPages);
router.put("/update-news-media-sub-pages/:id", updateNewsSubPages);
router.delete("/delete-news-media-sub-pages/:id", deleteNewsSubPages);
router.post("/save-news-media-sub-pages", saveNewsSubPages);

module.exports = router;
