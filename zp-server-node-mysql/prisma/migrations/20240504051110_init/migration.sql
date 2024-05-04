/*
  Warnings:

  - Added the required column `latitude` to the `BitNews` table without a default value. This is not possible if the table is not empty.
  - Added the required column `longitude` to the `BitNews` table without a default value. This is not possible if the table is not empty.
  - Added the required column `latitude` to the `Recent_Activity` table without a default value. This is not possible if the table is not empty.
  - Added the required column `longitude` to the `Recent_Activity` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Recent_Activity` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `bitnews` ADD COLUMN `latitude` VARCHAR(191) NOT NULL,
    ADD COLUMN `longitude` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `recent_activity` ADD COLUMN `latitude` VARCHAR(191) NOT NULL,
    ADD COLUMN `longitude` VARCHAR(191) NOT NULL,
    ADD COLUMN `userId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Recent_Activity` ADD CONSTRAINT `Recent_Activity_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
