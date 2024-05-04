const express = require("express");
const {
  getNewsPagesPost,
  getSingleNewsPagesPost,
  updateNewsPagesPost,
  deleteNewsPagesPost,
  saveNewsPagesPost,
  getNewsPagesPostByPageId,
} = require("../controllers/newsPagePostController");
const router = express.Router();

router.get("/news-pages-post", getNewsPagesPost);
router.get("/news-pages-post-by-pageId/:id", getNewsPagesPostByPageId);
router.get("/news-pages-post/:id", getSingleNewsPagesPost);
router.put("/update-news-pages-post/:id", updateNewsPagesPost);
router.delete("/delete-news-pages-post/:id", deleteNewsPagesPost);
router.post("/save-news-pages-post", saveNewsPagesPost);

module.exports = router;
