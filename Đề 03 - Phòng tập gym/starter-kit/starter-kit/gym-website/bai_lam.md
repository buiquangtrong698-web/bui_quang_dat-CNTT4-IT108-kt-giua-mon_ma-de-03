# BÀI LÀM – HACKATHON 01

- **Mã đề:** 03
- **Họ tên:** bùi quang đạt
- **Lớp:** CNTT4
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
1.pwd
2.ls
3.Move-Item .\lich_tap.txt docs
    Move-Item .\logo_phong_gym.PNG .\media
4.Copy-Item .\media\logo_phong_gym.PNG .\backu
5.Remove-Item .\temp_103.tmp
6.cd .\logs
     Get-Content .\member.log
     cd ..



```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/15/2026   8:06 AM                backup
d-----        10/15/2026   7:59 AM                data
d-----        10/15/2026   8:04 AM                docs
d-----        10/15/2026   7:59 AM                logs
d-----        10/15/2026   8:05 AM                media
------        10/12/2026   1:39 AM             68 .env
-a----        10/15/2026   8:11 AM           2416 bai_lam.md
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/12/2026   1:39 AM           6194 logo_phong_gym.PNG


    Directory: C:\Users\dat\Đề 03 - Phòng tập gym\starter-kit\starter-kit\gym-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/12/2026   1:39 AM           6089 dang_ky_thang 11.xlsx


    Directory: C:\Users\dat\Đề 03 - Phòng tập gym\starter-kit\starter-kit\gym-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/12/2026   1:39 AM             75 lich_tap.txt


    Directory: C:\Users\dat\Đề 03 - Phòng tập gym\starter-kit\starter-kit\gym-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/12/2026   1:39 AM           1085 member.log


    Directory: C:\Users\dat\Đề 03 - Phòng tập gym\starter-kit\starter-kit\gym-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/12/2026   1:39 AM           6194 logo_phong_gym.PNG
```text


```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
Get-Content .\logs\member.log | Select-String "ERROR" >logs/daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2025-11-28 07:26:18 [ERROR] Khong tim thay trang /lich-tap (404)
2025-11-28 07:29:18 [ERROR] Het thoi gian cho (timeout)

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\auto_report.ps1

```

### Kết quả hiển thị

```text
Dang loc log...
Hoan thanh!

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
 (Get-Content .\logs\member.log | Select-String "ERROR").count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
7
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
1."=== TONG HOP LOG ===" > logs/tong_hop.txt
2.Get-Content .\logs\member.log | Select-String "WARNING" >>logs/tong_hop.txt
3.Get-Content .\logs\member.log | Select-String "ERROR" >>logs/tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===

2025-11-28 07:14:18 [WARNING] Phong tap dong nguoi
2025-11-28 07:56:18 [WARNING] Phong tap dong nguoi
2025-11-28 07:59:18 [WARNING] The tu sap het han



2025-11-28 07:26:18 [ERROR] Khong tim thay trang /lich-tap (404)
2025-11-28 07:29:18 [ERROR] Het thoi gian cho (timeout)
2025-11-28 07:32:18 [ERROR] Khong tim thay trang /lich-tap (404)
2025-11-28 07:35:18 [ERROR] Het thoi gian cho (timeout)
2025-11-28 07:38:18 [ERROR] Het thoi gian cho (timeout)
2025-11-28 07:47:18 [ERROR] Khong doc duoc the tu hoi vien
2025-11-28 08:05:18 [ERROR] Khong tim thay trang /lich-tap (404)


```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/dang_ky_thang_11.xlsx`, không cần ghi vào đây.
