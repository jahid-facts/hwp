
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();
exports.getNewsPages = async (req, res) => {
  const page = await prisma.News_Pages.findMany({
    include:{
      subPages: true
    }
  });
  res.json(page)

}



exports.getSingleNewsPages = async (req, res) => {
  const page = await prisma.News_Pages.findUnique({
    where: {
      id: Number(req.params.id),
    },
  })
  res.json(page)
}

exports.saveNewsPages = async (req, res) => {
    const { title, index} = req.body;
    try {
      const page = await prisma.News_Pages.create({
        data: {
          title,
          index
        },
      });
      res.json(page);
    } catch (error) {
      res.status(500).json({ error: "Database error" });
    }
};


exports.updateNewsPages = async (req, res) => {
  const pageId = Number(req.params.id);
  try {
    const existingNewsPages = await prisma.News_Pages.findUnique({ where: { id: pageId } });

    if (!existingNewsPages) {
      return res.status(404).json({ error: 'NewsPages not found' });
    }
      // Update page with new image
      const updatedNewsPages = await prisma.News_Pages.update({
        where: { id: pageId },
        data: {
          title: req.body.title,
          index: req.body.index,
        },
      });
      res.json(updatedNewsPages);
    

  } catch (error) {
    console.log(error)
    res.status(500).json({ error: 'Internal server error' });
  }
};

exports.deleteNewsPages = async (req, res) => {
  const page = await prisma.News_Pages.delete({
    where: {
      id: Number(req.params.id),
    }
  })
  res.json(page)
}
