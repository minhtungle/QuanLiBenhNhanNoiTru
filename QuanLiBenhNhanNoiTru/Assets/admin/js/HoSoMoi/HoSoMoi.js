function loadData_From_HSM() {
    $.ajax({
        url: "/HoSoMoi/ListHoSoChuaDuyet",
        type: "GET",
        //contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            var html = '';
            if (result.length != 0) {
                $.each(result, function (key, item) {
                    html += '<tr>';
                    html += '<td><a href="#" onclick="return getbyID(' + item.ID + ')">Xem</a></td>'
                    html += '<td hidden>' + item.ID + '</td>';
                    html += '<td>' + item.MaBN + '</td>';
                    html += '<td>' + item.TenBN + '</td>';
                    html += '<td>' + item.Tuoi + '</td>';
                    html += '<td style = "background-color: green; color: white;">Đang nằm</td>';
                    html += '<td>' + item.BenhAn + '</td>';
                    html += '</tr>';
                });
                $('.tbody').html(html);
            } else {
                $('#btn_Duyet').text("Không có hồ sơ").addClass('btn-danger').attr('disabled', 'disabled');
            } 
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
};
function Add() {
    var ans = confirm("Bạn chấp nhận duyệt hồ sơ ?");
    if (ans) {
        $.ajax({
            url: "/HoSoMoi/Add",
            type: "POST",
            contentType: "application/json;charset=UTF-8",
            dataType: "json",
            success: function () {
                location.reload();
            },
            error: function (errormessage) {
                alert(errormessage.responseText);
            }
        });
    }
}

//Function for getting the Data Based upon Employee ID  
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
        url: "/HoSoMoi/GetByID/" + EmpID,
        type: "GET",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        success: function (result) {
            var toa = '';var khoa = '';var phong = '';

            $('#ID').val(result.ID);
            $('#MaBN').val(result.MaBN);
            $('#TenBN').val(result.TenBN);
            $('#Tuoi').val(result.Tuoi);
            $('#NgaySinh').val(result.NgaySinh);
            $('#DiaChi').val(result.DiaChi);
            $('#NgayVao').val(result.NgayVao);

            $('#DayNha').val('Dãy nhà : ' + result.DayNha);
            $('#TenKhoa').val('Tên khoa : ' +result.TenKhoa);
            $('#TenPhong').val('Tên phòng : ' +result.TenPhong);   

            $('#BenhAn').attr('src', '~/assets/Upload/ '+ result.BenhAn +'');

            $('#myModal').modal('show');
        },
        error: function (errormessage) {
            alert("Lỗi");
        }
    });
    //return false;
}