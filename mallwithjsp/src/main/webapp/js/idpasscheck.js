function loginNullCheck()
{
    if (document.frm.userid.value.length === 0)
    {
        alert("아이디를 입력하세요.");
        return false;
    }
    if (document.frm.userpass.value.length === 0)
    {
        alert("비밀번호를 입력하세요.");
        return false;
    }
    return true;
}