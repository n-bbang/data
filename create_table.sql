DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
    userId INT AUTO_INCREMENT PRIMARY KEY,			-- 유저 id
    loginId VARCHAR(32) NOT NULL UNIQUE,			-- 계정 id
    passwd VARCHAR(32) NOT NULL,				-- 계정 비밀번호
    name VARCHAR(15) NOT NULL,					-- 이름
    nickname VARCHAR(15) UNIQUE,				-- 닉네임
    gender BOOLEAN NOT NULL,					-- 성별
    phoneNumber VARCHAR(32) NOT NULL UNIQUE,			-- 전화번호
    account VARCHAR(32) UNIQUE					-- 계좌번호
);

DROP TABLE IF EXISTS Platforms;
CREATE TABLE Platforms (
    platformId INT AUTO_INCREMENT PRIMARY KEY,		-- 플랫폼 id
    platfromName VARCHAR(32) NOT NULL UNIQUE,  		-- 플랫폼 이름 (ex Netflix, ...)
    imagePath VARCHAR(32)               		-- 플랫폼 이미지 path
);

DROP TABLE IF EXISTS UserInformations;
CREATE TABLE UserInformations (
    userId INT NOT NULL,			-- 방 참가 유저 id
    roomId INT NOT NULL,        		-- 참가한 방 id
    paied Boolean NOT NULL DEFAULT False 	-- 돈 지불 여부
);

DROP TABLE IF EXISTS RoomInformations;
CREATE TABLE RoomInformations (
    roomId INT PRIMARY KEY,     	-- 방 id
    platformId INT NOT NULL,    	-- 플랫폼 id
    bossUserId INT NOT NULL,    	-- 방장 Id
    roomName VARCHAR(32),		-- 방 이름
    totalPrice INT,            		-- 총 가격
    personalPrice INT,			-- 인당 지불 가격
    maxUser INT NOT NULL,       	-- 최대 인원
    recentPayment DATETIME      	-- 최근 결제일
);
