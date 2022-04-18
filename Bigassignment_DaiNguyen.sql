----------Create Database: Bigassignment_DaiNguyen-------------
----1.Tạo các table và insert dữ liệu ----
----Tạo Bảng----
Create Table MHOC(
    Ten_MH varchar (20),
    MAMH VARCHAR (40) Primary Key,
    TINCHI Numeric(10),
    KHOA varchar(20),
) Create Table K_HOC(
    MAKH int Primary Key,
    MAMH VARCHAR (40) CONSTRAINT FK_MAMH Foreign Key (MAMH) references dbo.MHOC(MAMH),
    HOCKY varchar(20),
    NAM DATE,
    GV varchar(20),
) Create Table DKIEN(
    MAMH VARCHAR (40) Foreign Key (MAMH) references dbo.MHOC(MAMH),
    MAMH_TRUOC VARCHAR (40) Primary Key
) Create Table SVIEN(
    TEN varchar(20),
    MASV INT Primary Key,
    NAM numeric (30),
    KHOA varchar (20),
) Create Table KETQUA(
    MASV INT,
    MAKH INT,
    DIEM Numeric,
    Primary Key (MASV, MAKH),
    CONSTRAINT kqua_khoc_FK Foreign Key (MAKH) references dbo.K_HOC (MAKH),
    CONSTRAINT KQUA_SVIEN_FK FOREIGN KEY (MASV) references dbo.SVIEN (MASV)
) ----Insert Bảng----
Use Bigassignment_DaiNguyen
Insert into
    dbo.MHOC(Ten_MH, MAMH, TINCHI, KHOA)
values
    ('Toan Roi Rac', 'M1', '5', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.MHOC(Ten_MH, MAMH, TINCHI, KHOA)
values
    ('Co So Du Lieu', 'M2', '4', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.MHOC(Ten_MH, MAMH, TINCHI, KHOA)
values
    ('Cau Truc Du Lieu', 'M3', '4', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.MHOC(Ten_MH, MAMH, TINCHI, KHOA)
values
    ('Phan Tich Du Lieu', 'M4', '6', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.MHOC(Ten_MH, MAMH, TINCHI, KHOA)
values
    ('Cach Nhap Du Lieu', 'M5', '3', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.MHOC(Ten_MH, MAMH, TINCHI, KHOA)
values
    ('Toan Nang Cao', 'M6', '4', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.K_HOC(MAKH, MAMH, HOCKY, NAM, GV)
values
    ('102', 'M2', '2', '2015', 'Dang B') Use Bigassignment_DaiNguyen
Insert into
    dbo.K_HOC(MAKH, MAMH, HOCKY, NAM, GV)
values
    ('135', 'M1', '1', '2015', 'Tran Van A') Use Bigassignment_DaiNguyen
Insert into
    dbo.K_HOC(MAKH, MAMH, HOCKY, NAM, GV)
values
    ('104', 'M3', '3', '2015', 'Tran Thi Luu') Use Bigassignment_DaiNguyen
Insert into
    dbo.K_HOC(MAKH, MAMH, HOCKY, NAM, GV)
values
    ('103', 'M4', '4', '2015', 'Mai Hoang Lam') Use Bigassignment_DaiNguyen
Insert into
    dbo.K_HOC(MAKH, MAMH, HOCKY, NAM, GV)
values
    ('105', 'M5', '5', '2015', 'Huynh Dai Nguyen') Use Bigassignment_DaiNguyen
Insert into
    dbo.K_HOC(MAKH, MAMH, HOCKY, NAM, GV)
values
    ('106', 'M6', '6', '2015', 'Dang Vo Tram') Use Bigassignment_DaiNguyen
Insert into
    dbo.DKIEN (MAMH, MAMH_TRUOC)
values
    ('M2', 'M1') Use Bigassignment_DaiNguyen
Insert into
    dbo.DKIEN(MAMH, MAMH_TRUOC)
values
    ('M3', 'M2') Use Bigassignment_DaiNguyen
Insert into
    dbo.DKIEN(MAMH, MAMH_TRUOC)
values
    ('M4', 'M3') Use Bigassignment_DaiNguyen
Insert into
    dbo.DKIEN(MAMH, MAMH_TRUOC)
values
    ('M5', 'M4') Use Bigassignment_DaiNguyen
Insert into
    dbo.DKIEN(MAMH, MAMH_TRUOC)
values
    ('M6', 'M5') Use Bigassignment_DaiNguyen
Insert into
    dbo.SVIEN(TEN, MASV, NAM, KHOA)
values
    ('Loc', '7', '2', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.SVIEN(TEN, MASV, NAM, KHOA)
values
    ('Trang', '8', '2', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.SVIEN(TEN, MASV, NAM, KHOA)
values
    ('Nguyen', '9', '3', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.SVIEN(TEN, MASV, NAM, KHOA)
values
    ('Sam', '6', '2', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.SVIEN(TEN, MASV, NAM, KHOA)
values
    ('Loan', '10', '3', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.SVIEN(TEN, MASV, NAM, KHOA)
values
    ('Phuong', '2', '3', 'CNTT') Use Bigassignment_DaiNguyen
Insert into
    dbo.KETQUA(MASV, MAKH, DIEM)
values
    ('8', '102', '8') Use Bigassignment_DaiNguyen
Insert into
    dbo.KETQUA(MASV, MAKH, DIEM)
values
    ('8', '135', '10') Use Bigassignment_DaiNguyen
Insert into
    dbo.KETQUA(MASV, MAKH, DIEM)
values
    ('2', '106', '6') Use Bigassignment_DaiNguyen
Insert into
    dbo.KETQUA(MASV, MAKH, DIEM)
values
    ('9', '103', '10') Use Bigassignment_DaiNguyen
Insert into
    dbo.KETQUA(MASV, MAKH, DIEM)
values
    ('6', '104', '5') Use Bigassignment_DaiNguyen
Insert into
    dbo.KETQUA(MASV, MAKH, DIEM)
values
    ('7', '105', '9') ----2.Thêm vào bộ dữ liệu vào bảng SVIEN ( 'NAM', '25', '2', 'CNTT' )----
    Use Bigassignment_DaiNguyen
Insert into
    dbo.SVIEN(TEN, MASV, NAM, KHOA)
values
    ('Nam', '25', '2', 'CNTT') ----3.Thêm vào bộ dữ liệu vào bảng KETQUA (25,135,9)----
    Use Bigassignment_DaiNguyen
Insert into
    dbo.KETQUA(MASV, MAKH, DIEM)
values
    ('25', '135', '9') ----4.In ra tên các sinh viên----
    use Bigassignment_DaiNguyen
select
    TEN
from
    SVIEN
Order BY
    TEN DESC
select
    @ @ROWCOUNT as ROW_COUNT ----5.In ra tên môn học và số tín chỉ----
    use Bigassignment_DaiNguyen
select
    TEN_MH,
    TINCHI
from
    MHOC
select
    @ @ROWCOUNT as ROW_COUNT ----6.Cho biết kết quả học tập của sinh viên có mã số 8----
    use Bigassignment_DaiNguyen
Select
    MASV,
    DIEM
From
    KETQUA
Where
    MASV = '8' ----7.Cho biết các mã số môn học phải học trước môn có mã số ‘M2’----
    use Bigassignment_DaiNguyen
Select
    MAMH_TRUOC
From
    DKIEN
Where
    MAMH = 'M2' ----8.Cho biết các mã số môn học phải học sau môn có mã số ‘M2’----
    use Bigassignment_DaiNguyen
Select
    MAMH
From
    DKIEN
Where
    MAMH_TRUOC = 'M2' ----9.Cho biết tên sinh viên và các môn học mà sinh viên đó tham gia với kết quả cuối khoá trên 7----
    use Bigassignment_DaiNguyen
SELECT
    SVIEN.Ten,
    K_HOC.MAKH,
    K_HOC.MAMH,
    KETQUA.DIEM
FROM
    KETQUA
    INNER JOIN SVIEN ON SVIEN.MASV = KETQUA.MASV
    INNER JOIN K_HOC ON KETQUA.MAKH = K_HOC.MAKH
Where
    KETQUA.DIEM > '7'
ORDER BY
    KETQUA.DIEM DESC ----10.Cho biết tên sinh viên thuộc về khoa có phụ trách môn học “toán rời rạc"----
    use Bigassignment_DaiNguyen
SELECT
    SVIEN.TEN,
    MHOC.TEN_MH,
    MHOC.KHOA
FROM
    SVIEN
    INNER JOIN MHOC ON SVIEN.KHOA = MHOC.KHOA
WHERE
    MHOC.TEN_MH = 'Toan Roi Rac'
Order By
    MHOC.TEN_MH DESC ----11.Cho biết tên các môn học phải học trước môn “cơ sở dữ liệu “ ----
    Use Bigassignment_DaiNguyen
Select
    MHOC.TEN_MH,
    DKIEN.MAMH_TRUOC
From
    DKIEN
    INNER JOIN MHOC ON MHOC.MAMH = DKIEN.MAMH
Where
    MHOC.TEN_MH = 'co so du lieu' ----12.Cho tên các môn học phải học liền sau môn “cơ sở dữ liệu “ ----
Select
    MHOC.TEN_MH,
    DKIEN.MAMH_TRUOC
From
    DKIEN
    Inner JOIN MHOC ON MHOC.TEN_MH = DKIEN.MAMH_TRUOC
Where
    MHOC.TEN_MH = 'co so du lieu' ----13.Cho biết tên sinh viên và điểm trung bình của sinh viên đó trong từng học kỳ của từng niên học ----
SELECT
    SVIEN.TEN,
    AVG(KETQUA.DIEM) AS AVGAGE,
    K_HOC.HOCKY,
    K_HOC.NAM
FROM
    KETQUA
    INNER JOIN SVIEN ON SVIEN.MASV = KETQUA.MASV
    INNER JOIN K_HOC ON K_HOC.MAKH = KETQUA.MAKH
GROUP BY
    SVIEN.TEN,
    K_HOC.HOCKY,
    K_HOC.NAM
Order by
    AVG(KETQUA.DIEM) DESC ----14.Cho biết tên sinh viên đạt điểm cao nhất ----
SELECT
    SVIEN.TEN,
    AVG(KETQUA.DIEM) AS AVGAGE
FROM
    KETQUA
    INNER JOIN SVIEN ON SVIEN.MASV = KETQUA.MASV
GROUP BY
    SVIEN.TEN
Order by
    AVG(KETQUA.DIEM) DESC