-- CreateTable
CREATE TABLE `News_Pages` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `index` INTEGER NULL,
    `status` VARCHAR(191) NULL,
    `content` LONGTEXT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `News_Sub_Pages` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `pageId` INTEGER NOT NULL,
    `index` INTEGER NULL,
    `status` VARCHAR(191) NULL,
    `content` LONGTEXT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `News_Sub_Pages` ADD CONSTRAINT `News_Sub_Pages_pageId_fkey` FOREIGN KEY (`pageId`) REFERENCES `News_Pages`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
