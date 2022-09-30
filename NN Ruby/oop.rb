class CanBo
  attr_accessor :hoTen156, :tuoi156, :gioiTinh156, :diaChi156
  def initialize(hoTen156, tuoi156, gioiTinh156, diaChi156)
    @hoTen156 = hoTen156
    @tuoi156 = tuoi156
    @gioiTinh156 = gioiTinh156
    @diaChi156 = diaChi156
  end
end
# Xây dựng các lớp CongNhan, KySu, NhanVien kế thừa từ lớp CanBo.

class CongNhan < CanBo
  attr_accessor :capBac156
  def initialize(hoTen156, tuoi156, gioiTinh156, diaChi156, capBac156)
    super(hoTen156, tuoi156, gioiTinh156, diaChi156)
    @capBac156 = capBac156
  end
  def show
    super()
    "Tên: #{@hoTen156} Tuổi: #{@tuoi156} Giới tính: #{@gioiTinh156} Địa chỉ: #{@diaChi156} Cấp bậc: #{@capBac156}"
  end
end

class KySu < CanBo
  attr_accessor :nganhDaoTao156
  def initialize(hoTen156, tuoi156, gioiTinh156, diaChi156, nganhDaoTao156)
    super(hoTen156, tuoi156, gioiTinh156, diaChi156)
    @nganhDaoTao156 = nganhDaoTao156
  end
  def show
    super()
    "Tên: #{@hoTen156} Tuổi: #{@tuoi156} Giới tính: #{@gioiTinh156} Địa chỉ: #{@diaChi156} Ngành đào tạo: #{@nganhDaoTao156}"
  end
end

class NhanVien < CanBo
  attr_accessor :congViec156
  def initialize(hoTen156, tuoi156, gioiTinh156, diaChi156, congViec156)
    super(hoTen156, tuoi156, gioiTinh156, diaChi156)
    @congViec156 = congViec156
  end
  def show
    super()
    "Tên: #{@hoTen156} Tuổi: #{@tuoi156} Giới tính: #{@gioiTinh156} Địa chỉ: #{@diaChi156} Công việc: #{@congViec156}"
  end
end

class QLCB
  def themMoi(array156)
    puts "Nhập họ tên, tuổi, giới tính, địa chỉ cán bộ"
    hoTen156 = gets
    tuoi156 = gets
    gioiTinh156 = gets
    diaChi156 = gets
    canbo = CanBo.new(hoTen156, tuoi156, gioiTinh156, diaChi156)
    array156.push(canbo)
  end
  def timKiem(array156)
    puts "Nhập từ khóa"
    keywork156 = gets
    for i in array156
      if keywork156 == i.name
        puts "True"
      end
    end
  end
  def hienDanhSach(array156)
    for i in array156
      puts "Tên: #{@i.name} Tuổi: #{@i.tuoi156} Giới tính: #{@i.gioiTinh156} Địa chỉ: #{@i.diaChi156}"
    end
  end
  def menu(array156)
    selection156 = 1
    while selection156 <1 || selection156 >3
      puts "1: Thêm mới cán bộ\n2:Tìm kiếm theo họ tên\n3:Hiện thị thông tin về danh sách các cán bộ\n4:Thoát khỏi chương trình."
      selection156 = gets
      case selection156
      when 1
        themMoi(array156)
      when 2
        timKiem(array156)
      when 3
        hienDanhSach(array156)
      else

      end
    end
  end
end

array156 = []
quanLy = QLCB.new()
quanLy.menu(array156)

