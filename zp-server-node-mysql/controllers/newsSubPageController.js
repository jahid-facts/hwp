const path = require("path");
const user = require("../models/users.model");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();
exports.getNewsSubPages = async (req, res) => {
  const page = await prisma.News_Sub_Pages.findMany({
    include: {
      page: true,
    },
  });
  res.json(page);
};

exports.getSingleNewsSubPages = async (req, res) => {
  const page = await prisma.News_Sub_Pages.findUnique({
    where: {
      id: Number(req.params.id),
    },
  });
  res.json(page);
};

exports.saveNewsSubPages = async (req, res) => {
  const { title, pageId, index } = req.body;
  try {
    const page = await prisma.News_Sub_Pages.create({
      data: {
        title,
        pageId,
        index,
      },
    });
    res.json(page);
  } catch (error) {
    res.status(500).json({ error: "Database error" });
  }
};

exports.updateNewsSubPages = async (req, res) => {
  const pageId = Number(req.params.id);
  try {
    const existingNewsSubPages = await prisma.News_Sub_Pages.findUnique({
      where: { id: pageId },
    });

    if (!existingNewsSubPages) {
      return res.status(404).json({ error: "NewsSubPages not found" });
    }
    // Update page with new image
    const updatedNewsSubPages = await prisma.News_Sub_Pages.update({
      where: { id: pageId },
      data: {
        title: req.body.title,
        pageId: req.body.pageId,
        index: req.body.index,
      },
    });
    res.json(updatedNewsSubPages);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Internal server error" });
  }
};

exports.deleteNewsSubPages = async (req, res) => {
  const page = await prisma.News_Sub_Pages.delete({
    where: {
      id: Number(req.params.id),
    },
  });
  res.json(page);
};
