const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

exports.getMegaMenuItems = async (req, res) => {
  try {
    const menuItems = await prisma.megaMenu.findMany({
      where: {
        parent_id: null, // Fetch only top-level menu items
      },
      include: {
        children: {
          include: {
            children: true, // Include all children recursively
          },
          orderBy: {
            index: "asc",
          },
        },
      },
      orderBy: {
        index: "asc",
      },
    });
    res.json(menuItems);
  } catch (error) {
    console.error("Error fetching megamenu:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// get all mega menu items

exports.getMegaMenu = async (req, res) => {
  try {
    const menuItems = await prisma.megaMenu.findMany({
      include: {
        parent: true, // Include parent data directly
      },
      orderBy: {
        index: "asc",
      },
    });
    res.json(menuItems);
  } catch (error) {
    console.error("Error fetching megamenu:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// add mega menu items
exports.addMegaMenu = async (req, res) => {
  try {
    const menuItem = await prisma.megaMenu.create({
      data: req.body,
    });
    res.json(menuItem);
  } catch (error) {
    console.error("Error adding megamenu:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// find by id and return

exports.getMegaMenuById = async (req, res) => {
  try {
    const menuItem = await prisma.megaMenu.findUnique({
      where: {
        id: Number(req.params.id),
      },
    });
    res.json(menuItem);
  } catch (error) {
    console.error("Error fetching megamenu:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// find and updated

exports.updateMegaMenu = async (req, res) => {
  try {
    const menuItem = await prisma.megaMenu.update({
      where: {
        id: Number(req.params.id),
      },
      data: req.body,
    });
    res.json(menuItem);
  } catch (error) {
    console.error("Error updating megamenu:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

// delete

exports.deleteMegaMenu = async (req, res) => {
  try {
    const menuItem = await prisma.megaMenu.delete({
      where: {
        id: Number(req.params.id),
      },
    });
    res.json(menuItem);
  } catch (error) {
    console.error("Error deleting megamenu:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};
