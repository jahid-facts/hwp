const path = require("path");
const user = require("../models/users.model");
const { PrismaClient } = require("@prisma/client");
const multer = require("multer");
const fs = require("fs");

const prisma = new PrismaClient();
exports.getNewsPagesPost = async (req, res) => {
  const page = await prisma.News_Pages_Post.findMany({
    include: {
      page: true,
    },
  });
  res.json(page);
};

exports.getSingleNewsPagesPost = async (req, res) => {
  const page = await prisma.News_Pages_Post.findUnique({
    where: {
      id: Number(req.params.id),
    },
  });
  res.json(page);
};

// find all articles in the pageId

exports.getNewsPagesPostByPageId = async (req, res) => {
  const page = await prisma.News_Pages_Post.findMany({
    where: {
      pageId: Number(req.params.id),
    },
  });
  res.json(page);
};


// file upload
var Storage = multer.diskStorage({
  destination: function (req, file, cv) {
    cv(null, "./public/uploads/");
  },
  filename: function (req, file, cv) {
    cv(null, Date.now() + "_" + file.originalname);
  },
});

const upload = multer({
  storage: Storage,
}).single("file");

exports.saveNewsPagesPost = async (req, res) => {
  upload(req, res, async function (err) {
    if (err instanceof multer.MulterError) {
      return res.status(400).json({ error: "File upload error" });
    } else if (err) {
      return res.status(500).json({ error: "Internal server error" });
    }

    const { content, title, index, pageId } = req.body;
    // index is should bec convert string to number
    const indexInt = Number(index);
    const pageIdInt = Number(pageId);

    const file = req?.file?.filename ? req?.file?.filename : null;
    try {
      const notice = await prisma.News_Pages_Post.create({
        data: {
          content,
          title,
          file,
          index: indexInt,
          pageId: pageIdInt,
        },
      });
      res.json(notice);
    } catch (error) {
      console.log(error);
      res.status(500).json({ error: "Database error" });
    }
  });
};
exports.updateNewsPagesPost = async (req, res) => {
  const noticeId = Number(req.params.id);
  try {
    const existingNotice = await prisma.News_Pages_Post.findUnique({
      where: { id: noticeId },
    });

    if (!existingNotice) {
      return res.status(404).json({ error: "Notice not found" });
    }

    upload(req, res, async function (err) {
      if (err instanceof multer.MulterError) {
        return res.status(400).json({ error: "File upload error" });
      } else if (err) {
        return res.status(500).json({ error: "Internal server error" });
      }
      const file = req?.file;
      const previousImagePath = path.join(
        "public",
        "uploads",
        existingNotice.file
      );
      if (file) {
        fs.unlinkSync(previousImagePath);
      }

      // Update notice with new image
    const { content, title, index, pageId } = req.body;
    const indexInt = Number(index);
    const pageIdInt = Number(pageId);
      const updatedNotice = await prisma.News_Pages_Post.update({
        where: { id: noticeId },
        data: {
          content,
          title,
          file: file ? file.filename : existingNotice.file,
          index: indexInt,
          pageId: pageIdInt,
        },
      });
      res.json(updatedNotice);
    });
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Internal server error" });
  }
};
exports.deleteNewsPagesPost = async (req, res) => {
  const notice = await prisma.News_Pages_Post.delete({
    where: {
      id: Number(req.params.id),
    },
  });
  if (notice.file) {
    const previousImagePath = path.join("public", "uploads", notice.file);
    if (previousImagePath) {
      fs.unlinkSync(previousImagePath);
    }
  }

  res.json(notice);
};
