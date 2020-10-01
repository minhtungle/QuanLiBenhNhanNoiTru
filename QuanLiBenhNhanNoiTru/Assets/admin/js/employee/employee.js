//Load Data in Table when documents is ready  

//Load Data function  
function loadData() {
    $.ajax({
        url: "/HoSoChuaDuyet/List",
        type: "GET",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            var html = '';
            $.each(result, function (key, item) {
                html += '<tr>';
                html += '<td><a href="#" onclick="return getbyID(' + item.ID + ')">Sửa </a > | <a href="#" onclick="Delele(' + item.ID + ')">Xóa</a></td > ';
                html += '<td>' + item.ID + '</td>';
                html += '<td>' + item.MaBN + '</td>';
                html += '<td>' + item.TenBN + '</td>';
                html += '<td>' + item.Tuoi + '</td>';
                html += '<td><span class="label label-success">Đang nằm</span></td>';
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

//Add Data Function   
function Add() {
    var res = validate();
    if (res == false) {
        return false;
    }
    var empObj = {
        MaBN: $('#MaBN').val(),
        TenBN: $('#TenBN').val(),
        Tuoi: $('#Tuoi').val(),
        NgaySinh: $('#NgaySinh').val(),
        DiaChi: $('#DiaChi').val(),
        NgayVao: $('#NgayVao').val(),
        //NgayRa: $('#NgayRa').val(),
        DayNha: $('#DayNha').val(),
        TenKhoa: $('#TenKhoa').val(),
        TenPhong: $('#TenPhong').val(),
        TrangThai: true,
        BenhAn: $('#BenhAn').val()
    };
    $.ajax({
        url: "/HoSoChuaDuyet/Add",
        data: JSON.stringify(empObj),
        type: "POST",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            loadData();
            $('#myModal').modal('hide');
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
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
        url: "/HoSoChuaDuyet/GetByID/" + EmpID,
        typr: "GET",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        success: function (result) {
            $('#ID').val(result.ID);
            $('#MaBN').val(result.MaBN);
            $('#TenBN').val(result.TenBN);
            $('#Tuoi').val(result.Tuoi);
            $('#NgaySinh').val(result.NgaySinh);
            $('#DiaChi').val(result.DiaChi);
            $('#NgayVao').val(Date.parse(result.NgayVao));
          
            $('#DayNha').val(result.DayNha);
            $('#TenKhoa').val(result.TenKhoa);
            $('#TenPhong').val(result.TenPhong);

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
    //thiếu ID
    var empObj = {
        ID: $('#ID').val(),
        MaBN: $('#MaBN').val(),
        TenBN: $('#TenBN').val(),
        Tuoi: $('#Tuoi').val(),
        NgaySinh: $('#NgaySinh').val(),
        DiaChi: $('#DiaChi').val(),
        NgayVao: $('#NgayVao').val(),
        NgayRa: $('#NgayRa').val(),
        DayNha: $('#DayNha').val(),
        TenKhoa: $('#TenKhoa').val(),
        TenKhoa: $('#TenPhong').val(),
        BenhAn: $('#BenhAn').val()
    };
    $.ajax({
        url: "/HoSoChuaDuyet/Update",
        data: JSON.stringify(empObj),
        type: "POST",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
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
    $('#NgayRa').css('border-color', 'lightgrey');
    $('#DayNha').css('border-color', 'lightgrey');
    $('#TenKhoa').css('border-color', 'lightgrey');
    $('#TenPhong').css('border-color', 'lightgrey');
}
//Valdidation using jquery  
function validate() {
    var isValid = true;
    if ($('#MaBN').val().trim() == "") {
        $('#MaBN').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#MaBN').css('border-color', 'lightgrey');
    }
    //
    if ($('#TenBN').val().trim() == "") {
        $('#TenBN').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#TenBN').css('border-color', 'lightgrey');
    }
    //
    if ($('#Tuoi').val().trim() == "") {
        $('#Tuoi').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#Tuoi').css('border-color', 'lightgrey');
    }
    //
    if ($('#NgaySinh').val().trim() == "") {
        $('#NgaySinh').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#NgaySinh').css('border-color', 'lightgrey');
    }
    //
    if ($('#NgaySinh').val().trim() == "") {
        $('#NgaySinh').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#NgaySinh').css('border-color', 'lightgrey');
    }
    //
    if ($('#DiaChi').val().trim() == "") {
        $('#DiaChi').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#DiaChi').css('border-color', 'lightgrey');
    }
    //
    if ($('#NgayVao').val().trim() == "") {
        $('#NgayVao').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#NgayVao').css('border-color', 'lightgrey');
    }
    //
    //if ($('#NgayRa').val().trim() == "") {
    //    $('#NgayRa').css('border-color', 'Red');
    //    isValid = false;
    //}
    //else {
    //    $('#NgayRa').css('border-color', 'lightgrey');
    //}
    //
    //if ($('#DayNha').val().trim() == "") {
    //    $('#DayNha').css('border-color', 'Red');
    //    isValid = false;
    //}
    //else {
    //    $('#DayNha').css('border-color', 'lightgrey');
    //}
    ////
    //if ($('#TenKhoa').val().trim() == "") {
    //    $('#TenKhoa').css('border-color', 'Red');
    //    isValid = false;
    //}
    //else {
    //    $('#TenKhoa').css('border-color', 'lightgrey');
    //}
    ////
    //if ($('#TenPhong').val().trim() == "") {
    //    $('#TenPhong').css('border-color', 'Red');
    //    isValid = false;
    //}
    //else {
    //    $('#TenPhong').css('border-color', 'lightgrey');
    //}
    //
    if ($('#BenhAn').val().trim() == "") {    
        $('#BenhAn').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#BenhAn').css('border-color', 'lightgrey');
    }
    return isValid;
}