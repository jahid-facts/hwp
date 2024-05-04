/*
  Warnings:

  - You are about to drop the `latestgggg_news` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `page_visit` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `latestgggg_news`;

-- DropTable
DROP TABLE `page_visit`;

-- CreateTable
CREATE TABLE `MegaMenu` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `parent_id` INTEGER NULL,
    `name` VARCHAR(191) NOT NULL,
    `link` VARCHAR(191) NULL,
    `color` VARCHAR(191) NULL,
    `grid_col` INTEGER NULL,
    `index` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `MegaMenu` ADD CONSTRAINT `MegaMenu_parent_id_fkey` FOREIGN KEY (`parent_id`) REFERENCES `MegaMenu`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
