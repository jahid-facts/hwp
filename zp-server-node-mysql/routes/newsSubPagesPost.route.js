const express = require("express");
const {
  getNewsSubPagesPost,
  getSingleNewsSubPagesPost,
  updateNewsSubPagesPost,
  deleteNewsSubPagesPost,
  saveNewsSubPagesPost,
  getNewsPagesSubPostByPageId,
} = require("../controllers/newsSubPagePostController");
const router = express.Router();

router.get("/news-sub-pages-post-by-pageId/:id", getNewsPagesSubPostByPageId);
router.get("/news-sub-pages-post", getNewsSubPagesPost);
router.get("/news-sub-pages-post/:id", getSingleNewsSubPagesPost);
router.put("/update-news-sub-pages-post/:id", updateNewsSubPagesPost);
router.delete("/delete-news-sub-pages-post/:id", deleteNewsSubPagesPost);
router.post("/save-news-sub-pages-post", saveNewsSubPagesPost);

module.exports = router;
