// 表单通用验证
function checkEmpty(inputId, tip) {
    const val = document.getElementById(inputId).value.trim();
    if (!val) {
        alert(tip);
        return false;
    }
    return true;
}

// 金额验证
function checkMoney() {
    const m = document.getElementById("money").value;
    if (isNaN(m) || Number(m) <= 0) {
        alert("请输入有效金额！");
        return false;
    }
    return true;
}

// 登录表单验证
function checkLogin() {
    return checkEmpty("username", "用户名不能为空！") &&
        checkEmpty("password", "密码不能为空！");
}

// 记账表单验证
function checkAccountForm() {
    return checkMoney();
}