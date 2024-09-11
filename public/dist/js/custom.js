function creat_link_product() {
    var res = $("#name").val();
    res = res.toLowerCase();
    res = res.replace(/ /gi, '-');
    $("#permalink").val(res);
}