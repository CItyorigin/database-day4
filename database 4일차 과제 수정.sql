-- 1️⃣ 주인 정보 테이블
CREATE TABLE pet_owners (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone VARCHAR(255)
);

-- 2️⃣ 반려동물 정보 테이블
CREATE TABLE pets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    owner_id INT,
    name VARCHAR(100),
    kind VARCHAR(50),
    type VARCHAR(50)
);

-- 3️⃣ 방 정보 테이블
CREATE TABLE rooms (
    id INT PRIMARY KEY AUTO_INCREMENT,
    number VARCHAR(50),
    type VARCHAR(50),
    price DECIMAL(10,2)
);

-- 4️⃣ 예약 테이블
CREATE TABLE reservations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pet_id INT,
    room_id INT,
    start DATE,
    end DATE
);

-- 5️⃣ 서비스 테이블
CREATE TABLE services (
    id INT PRIMARY KEY AUTO_INCREMENT,
    reservation_id INT,
    name VARCHAR(100),
    price DECIMAL(10,2)
);
