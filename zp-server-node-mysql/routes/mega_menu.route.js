const express = require("express");
const {
  addMegaMenu,
  getMegaMenuById,
  updateMegaMenu,
  deleteMegaMenu,
  getMegaMenu,
  getMegaMenuItems,
} = require("../controllers/megaMenuController");
const router = express.Router();

router.get("/mega-menu-items", getMegaMenuItems);
router.get("/mega-menu", getMegaMenu);
router.post("/mega-menu", addMegaMenu);
router.get("/mega-menu/:id", getMegaMenuById);
router.put("/mega-menu/:id", updateMegaMenu);
router.delete("/mega-menu/:id", deleteMegaMenu);

module.exports = router;
