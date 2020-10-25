// Gọi view hồ sơ
function loadData() {
    $.ajax({
        url: "/HoSoChuaDuyet/ListHoSoChuaDuyet",
        type: "GET",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            var html = '';
            $.each(result, function (key, item) {
                html += '<tr>';
                html += '<td><a href="#" onclick="return getbyID(' + item.ID + ')">Xem</a > | <a href="#" onclick="Delele(' + item.ID + ')">Xóa</a></td > ';
                html += '<td hidden>' + item.ID + '</td>';
                html += '<td>' + item.MaBN + '</td>';
                html += '<td>' + item.TenBN + '</td>';
                html += '<td>' + item.Tuoi + '</td>';
                html += '<td style = "background-color: green; color: white;">Đang nằm</td>';
                html += '<td>' + item.BenhAn + '</td>';
                html += '</tr>';
            });
            $('.tbody').html(html);
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
};
// Gọi thành phần combobox
$(document).ready(function () {
    $('#DayNha').change(function () {
        var daynha = $('#DayNha option:selected').text();
        var html = '';
        var count = 0;
        $.ajax({
            url: "/HoSoChuaDuyet/GetKhoa",
            data: { daynha: daynha },
            type: "POST",
            success: function (result) {
                $.each(result, function (key, item) {
                    count++;
                    html += '<option value="' + count + '">' + item + '</option>';
                });
                $('#TenKhoa').html(html);
            },
            error: function (errormessage) {
                alert('Lỗi');
            }
        });
    });
    $('#TenKhoa').change(function () {
        var tenkhoa = $('#TenKhoa option:selected').text();
        var html = '';
        var count = 0;
        $.ajax({
            url: "/HoSoChuaDuyet/GetPhong",
            data: { tenkhoa: tenkhoa },
            type: "POST",
            success: function (result) {
                $.each(result, function (key, item) {
                    count++;
                    html += '<option value="' + count + '" >' + item + '</option>';
                });
                $('#TenPhong').html(html);
            },
            error: function (errormessage) {
                alert('Lỗi');
            }
        });
    });
});
// Thêm hồ sơ
function Add() {
    var res = validate();
    if (res == false) {
        return false;
    }
    var formdata = new FormData();

    if (document.getElementById("BenhAn").files.length > 0 && document.getElementById("BenhAn").value != '') {
        formdata.append("FileAnh", document.getElementById("BenhAn").files[0]);
    }

    formdata.append("MaBN", $('#MaBN').val());
    formdata.append("TenBN", $('#TenBN').val());
    formdata.append("Tuoi", $('#Tuoi').val());
    formdata.append("NgaySinh", $('#NgaySinh').val());
    formdata.append("DiaChi", $('#DiaChi').val());
    formdata.append("NgayVao", $('#NgayVao').val());
    formdata.append("DayNha", $('#DayNha option:selected').text());
    formdata.append("TenKhoa", $('#TenKhoa option:selected').text());
    formdata.append("TenPhong", $('#TenPhong option:selected').text());
    $.ajax({
        url: "/HoSoChuaDuyet/Add",
        data: formdata,
        type: "POST",
        contentType: false,
        processData: false,
        success: function (result) {
            loadData();
            $('#myModal').modal('hide');
        },
        error: function (errormessage) {
            alert('Lỗi');
        }
    });
}
// Ép kiểu string sang date
function toDate(dateStr) {
    var parts = dateStr.split("-");
    return new Date(parts[2], parts[1] - 1, parts[0]);
}
//Gọi hồ sơ theo ID
function getbyID(EmpID) {
    $('#MaBN').css('border-color', 'lightgrey');
    $('#TenBN').css('border-color', 'lightgrey');
    $('#Tuoi').css('border-color', 'lightgrey');
    $('#NgaySinh').css('border-color', 'lightgrey');
    $('#DiaChi').css('border-color', 'lightgrey');
    $('#NgayVao').css('border-color', 'lightgrey');

    $('#DayNha').css('border-color', 'lightgrey');
    $('#TenKhoa').css('border-color', 'lightgrey');
    $('#TenPhong').css('border-color', 'lightgrey');

    $.ajax({
        url: "/HoSoChuaDuyet/GetByID/" + EmpID,
        type: "GET",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        success: function (result) {
            var ngaySinh = toDate(result.NgaySinh);
            var ngayVao = toDate(result.NgayVao);

            $('#ID').val(result.ID);
            $('#MaBN').val(result.MaBN);
            $('#TenBN').val(result.TenBN);
            $('#Tuoi').val(result.Tuoi);


            $('#NgaySinh').val(ngaySinh);
            $('#DiaChi').val(result.DiaChi);
            $('#NgayVao').val(ngayVao);

            $('#DayNha option:selected').text(result.DayNha);
            $('#TenKhoa option:selected').text(result.TenKhoa);
            $('#TenPhong option:selected').text(result.TenPhong);

            $('#myModal').modal('show');
            $('#btnUpdate').show();
            $('#btnAdd').hide();
        },
        error: function (errormessage) {
            alert("Lỗi");
        }
    });
    //return false;
}

//function for updating employee's record  
function Update() {
    var res = validate();
    if (res == false) {
        return false;
    }
    var formdata = new FormData();

    if (document.getElementById("BenhAn").files.length > 0 && document.getElementById("BenhAn").value != '') {
        formdata.append("FileAnh", document.getElementById("BenhAn").files[0]);
    }
    formdata.append("ID", $('#ID').val());
    formdata.append("MaBN", $('#MaBN').val());
    formdata.append("TenBN", $('#TenBN').val());
    formdata.append("Tuoi", $('#Tuoi').val());
    formdata.append("NgaySinh", $('#NgaySinh').val());
    formdata.append("DiaChi", $('#DiaChi').val());
    formdata.append("NgayVao", $('#NgayVao').val());
    formdata.append("DayNha", $('#DayNha option:selected').text());
    formdata.append("TenKhoa", $('#TenKhoa option:selected').text());
    formdata.append("TenPhong", $('#TenPhong option:selected').text());
    $.ajax({
        url: "/HoSoChuaDuyet/Update",
        data: formdata,
        type: "POST",
        contentType: false,
        processData: false,
        success: function (result) {
            loadData();
            $('#myModal').modal('hide');
            $('#ID').val("");
            $('#MaBN').val("");
            $('#TenBN').val("");
            $('#Tuoi').val("");
            $('#NgaySinh').val("");
            $('#DiaChi').val("");
            $('#NgayVao').val("");

            $('#DayNha').val("");
            $('#TenKhoa').val("");
            $('#TenPhong').val("");
            $('#BenhAn').val("");
        },
        error: function (errormessage) {
            alert("Lỗi ");
        }
    });
}

//function for deleting employee's record  
function Delele(ID) {
    var ans = confirm("Bạn muốn xóa hồ sơ ?");
    if (ans) {
        $.ajax({
            url: "/HoSoChuaDuyet/Delete/" + ID,
            type: "POST",
            contentType: "application/json;charset=UTF-8",
            dataType: "json",
            success: function (result) {
                loadData();
            },
            error: function (errormessage) {
                alert(errormessage.responseText);
            }
        });
    }
}

//Function for clearing the textboxes  
function clearTextBox() {
    $('#MaBN').val();
    $('#TenBN').val();
    $('#Tuoi').val();
    $('#NgaySinh').val();
    $('#DiaChi').val();
    $('#NgayVao').val()
    $('#DayNha').val();
    $('#TenKhoa').val();
    $('#TenPhong').val();

    $('#btnUpdate').hide();
    $('#btnAdd').show();

    $('#MaBN').css('border-color', 'lightgrey');
    $('#TenBN').css('border-color', 'lightgrey');
    $('#Tuoi').css('border-color', 'lightgrey');
    $('#NgaySinh').css('border-color', 'lightgrey');
    $('#DiaChi').css('border-color', 'lightgrey');
}
// Kiểm tra điều kiện không null của các trường
function validate() {
    var isValid = true;
    // Mã bệnh nhân
    if ($('#MaBN').val().trim() == "") {
        $('#MaBN').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#MaBN').css('border-color', 'hsl(89, 43%, 51%)');
    }
    // Tên bệnh nhân
    if ($('#TenBN').val().trim() == "") {
        $('#TenBN').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#TenBN').css('border-color', 'hsl(89, 43%, 51%)');
    }
    // Tuổi
    if ($('#Tuoi').val().trim() == "") {
        $('#Tuoi').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#Tuoi').css('border-color', 'hsl(89, 43%, 51%)');
    }
    // Ngày sinh
    if ($('#NgaySinh').val().trim() == "") {
        $('#NgaySinh').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#NgaySinh').css('border-color', 'hsl(89, 43%, 51%)');
    }
    // Ngày vào
    if ($('#NgayVao').val().trim() == "") {
        $('#NgayVao').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#NgayVao').css('border-color', 'hsl(89, 43%, 51%)');
    }
    // Địa chỉ
    if ($('#DiaChi').val().trim() == "") {
        $('#DiaChi').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#DiaChi').css('border-color', 'hsl(89, 43%, 51%)');
    }
    // Tòa nhà
    if ($('#DayNha option:selected').text().trim() == "Chọn tòa nhà") {
        $('#DayNha').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#DayNha').css('border-color', 'hsl(89, 43%, 51%)');
    }
    // Tên khoa
    if ($('#TenKhoa option:selected').text().trim() == "Chọn khoa nằm") {
        $('#TenKhoa').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#TenKhoa').css('border-color', 'hsl(89, 43%, 51%)');
    }
    // Tên phòng
    if ($('#TenPhong option:selected').text().trim() == "Chọn phòng nằm") {
        $('#TenPhong').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#TenPhong').css('border-color', 'hsl(89, 43%, 51%)');
    }
    // Bệnh án
    if ($('#BenhAn').val().trim() == "") {
        $('#message-input').text('Chưa upload ảnh hồ sơ').css('color','red');
        isValid = false;
    }
    else {
        $('#BenhAn').css('border-color', 'hsl(89, 43%, 51%)  ');
    }
    return isValid;
}
