const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();
exports.countAllModel = async (req, res) => {
  try {
    const photoGallery = await prisma.image_Gallery_Category.count();
    const videoGallery = await prisma.Video_Gallery.count();
    const Recent_Activity = await prisma.Recent_Activity.count();

    res.status(200).json({
      photoGallery,
      videoGallery,
      Recent_Activity,
    });
  } catch (error) {
    res.status(500).json(error);
  }
};
