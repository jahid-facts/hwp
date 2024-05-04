/*
  Warnings:

  - You are about to drop the column `content` on the `news_pages` table. All the data in the column will be lost.
  - You are about to drop the column `status` on the `news_pages_post` table. All the data in the column will be lost.
  - You are about to drop the column `content` on the `news_sub_pages` table. All the data in the column will be lost.
  - You are about to drop the column `status` on the `news_sub_pages_post` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `news_pages` DROP COLUMN `content`;

-- AlterTable
ALTER TABLE `news_pages_post` DROP COLUMN `status`,
    ADD COLUMN `file` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `news_sub_pages` DROP COLUMN `content`;

-- AlterTable
ALTER TABLE `news_sub_pages_post` DROP COLUMN `status`,
    ADD COLUMN `file` VARCHAR(191) NULL;
