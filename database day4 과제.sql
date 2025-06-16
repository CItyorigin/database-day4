-- 1️⃣ 반려동물 주인 테이블
CREATE TABLE PetOwners (
    ownerID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    contact VARCHAR(255)
)

-- 2️⃣ 반려동물 테이블
CREATE TABLE Pets (
    petID INT PRIMARY KEY AUTO_INCREMENT,
    ownerID INT,
    name VARCHAR(100),
    species VARCHAR(50),
    breed VARCHAR(50),
    FOREIGN KEY (ownerID) REFERENCES PetOwners(ownerID)
)

-- 3️⃣ 객실 테이블
CREATE TABLE Rooms (
    roomID INT PRIMARY KEY AUTO_INCREMENT,
    roomNumber VARCHAR(50),
    roomType VARCHAR(50),
    pricePerNight DECIMAL(10,2)
)

-- 4️⃣ 예약 테이블
CREATE TABLE Reservations (
    reservationID INT PRIMARY KEY AUTO_INCREMENT,
    petID INT,
    roomID INT,
    startDate DATE,
    endDate DATE,
    FOREIGN KEY (petID) REFERENCES Pets(petID),
    FOREIGN KEY (roomID) REFERENCES Rooms(roomID)
)

-- 5️⃣ 서비스 테이블
CREATE TABLE Services (
    serviceID INT PRIMARY KEY AUTO_INCREMENT,
    reservationID INT,
    serviceName VARCHAR(100),
    servicePrice DECIMAL(10,2),
    FOREIGN KEY (reservationID) REFERENCES Reservations(reservationID)
)
