# Bai5
## Đề bài
![z6529191888169_f8fdccc75e45828d96dfc76129249ac3](https://github.com/user-attachments/assets/41f0c683-f00a-413a-b7ca-8fc77be5a23e)
#
#
#
## TẠO BẢNG PHIM
![image](https://github.com/user-attachments/assets/41a70841-c771-42ab-8c77-23e4b167b542)
## TẠO BẢNG VÉ
![image](https://github.com/user-attachments/assets/0ae5d58f-67b6-4760-9a30-6b2882a872e6)
## TẠO BẢNG GHẾ
![image](https://github.com/user-attachments/assets/c8006e61-ffd3-409b-8cb8-efd1b2f34326)
## TẠO BẢNG BÌNH LUẬN
![image](https://github.com/user-attachments/assets/766a8840-1efd-437d-8415-ccf0d77d46f2)
## TẠO BẢNG ĐẶT VÉ
![image](https://github.com/user-attachments/assets/11b1fa3f-bf05-4dac-8191-1ee9957e0792)
## TẠO BẢNG KHUYẾN MẠI
![image](https://github.com/user-attachments/assets/f908600a-79c3-433d-a004-5383dc60e67c)
## TẠO BẢNG PHÂN QUYỀN
![image](https://github.com/user-attachments/assets/a212cd52-91dd-4599-bad4-fcce3c1d5120)
## TẠO BẢNG PHÒNG
![image](https://github.com/user-attachments/assets/33536100-9b6d-49ea-ad74-aea4e1795b05)
## TẠO BẢNG RẠP
![image](https://github.com/user-attachments/assets/4fae4517-62cf-47ca-b54d-86e0d413c75e)
## TẠO BẢNG XUẤT CHIẾU 
![image](https://github.com/user-attachments/assets/b0775676-7105-4625-9b71-a19af6ebf7a5)
### Các khóa ngoại liên kết cho các bảng
![image](https://github.com/user-attachments/assets/ef6d519b-35c6-435c-b238-158eb3a9c745)
![image](https://github.com/user-attachments/assets/0a171629-3479-4fce-88e1-4de49cafbbb7)
![image](https://github.com/user-attachments/assets/8e36fac1-5c3e-4662-a84e-4e0a018e2036)
![image](https://github.com/user-attachments/assets/02fabd78-c385-4741-9fa2-a17912fe6f7b)
![image](https://github.com/user-attachments/assets/f9fa1267-ff22-4b2e-80b7-f36b177003d1)
## SƠ ĐỒ LIÊN KẾT THỰC THỂ
![image](https://github.com/user-attachments/assets/1f8f9ff7-e0d2-4e28-90d2-e85e78ab5c0a)
## Trigger cảnh báo tình trạng vé
####
## Tạo trigger có tên trg_Canhbaotrangthaive kích hoạt khi có insert vào bảng vé
![image](https://github.com/user-attachments/assets/8a245692-c07e-4290-90f4-4e788f995779)
#
## Khai báo các biến:
- @MaXC : mã xuất chiếu của vé mới
- @TenPhim, @TenPhong: tên phim và tên phòng
- @SoVeDaBan: Tổng số vé đã bán cho @MaXC
- @TongVeToiDa: Số vé tối đa( giả sử cố định là 50 vé)
- @TrangThai: Thông báo cảnh báo vé
![image](https://github.com/user-attachments/assets/6f69a89f-be74-47e5-a783-e340c1cfea74)
#
## Lấy mã xuất chiếu từ bảng inserted ( bảng tạm chứa dòng vừa được thêm)
## Max(MaXC) dùng trong trường hợp có nhiều dòng đc insert cùng lúc - nhưng chỉ lấy 1.
## Đếm tổng số vé đã được bán cho xuất chiếu @MaXC
![image](https://github.com/user-attachments/assets/c936c654-f856-42f1-8327-a682473c1b08)
#
## Truy vấn thông tin liên quan đến xuất chiếu
- TenPhim: Từ bảng Phim
- Tenphong: từ bảng Phong
- Dựa trên MaXC từ bảng XuatChieu
![image](https://github.com/user-attachments/assets/2eeed7a6-d4e5-4702-8c62-31db1154e609)
#
## Xác định tình trạng vé:
- Nếu số vé bán >= tổng vé tối đa : -> hết vé
- Nếu số vé đã bán còn cácch 5 vé vé nữa là đầy -> gần hết vé
- ngược lại -> còn vé
- ![image](https://github.com/user-attachments/assets/89b6e645-c08b-451f-970d-d19c6e4ff66d)
#
## Chèn bản gi mới vào bảng log, ghi nhận:
- Xuất chiếu , tên phim, tên phòng
- Thời gian ghi log
- Số vé đã bán/ tối đa
- Trạng thái
![image](https://github.com/user-attachments/assets/0866b963-4065-47fc-b542-62813784a9fe)

## Code hoàn chỉnh
![image](https://github.com/user-attachments/assets/63530889-5f41-42db-a841-d0c134fc152b)

## Kiểm tra kết quả
![image](https://github.com/user-attachments/assets/e518b2f8-5275-4b70-909a-d388a90257a1)


























