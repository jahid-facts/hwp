/*
  Warnings:

  - Added the required column `content` to the `MegaMenu` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `megamenu` ADD COLUMN `content` LONGTEXT NOT NULL;
