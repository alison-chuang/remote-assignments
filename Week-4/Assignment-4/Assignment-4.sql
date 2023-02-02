USE assignment;

CREATE TABLE category(
    `id` integer PRIMARY KEY AUTO_INCREMENT,
    `articleType` NVARCHAR(40) NOT NULL
);

CREATE TABLE article(
    `id` integer PRIMARY KEY AUTO_INCREMENT,
    `authorId` integer NOT NULL,
    `status_` NVARCHAR(20) NOT NULL,
    `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` DATETIME,
    `publishedAt` DATETIME,
    `title` NVARCHAR(90) NOT NULL,
    `content` TEXT,
    `categoryId` integer,
    `metaTitle` NVARCHAR(40),
    `metaDesc` NVARCHAR(130),
    FOREIGN KEY (`authorId`) REFERENCES user (`id`),
    FOREIGN KEY (`categoryId`) REFERENCES category (`id`)
);

CREATE TABLE comment(
    `id` integer PRIMARY KEY AUTO_INCREMENT,
    `articleId` integer NOT NULL,
    `content` TEXT,
    `updatedAt` DATETIME,
    `publishedAt` DATETIME,
    FOREIGN KEY (`articleId`) REFERENCES article (`id`)
);

-- 1. Write an SQL statement to select all articles with their author’s email.
SELECT article.*, user.email FROM article JOIN user ON article.authorId=user.id;

-- 2. Write another SQL statement to select articles from 7th to 12th sorted by id.
SELECT * FROM article ORDER BY id LIMIT 6,6;

