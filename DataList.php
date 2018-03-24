<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/3/21
 * Time: 15:07
 */
$page = isset($_POST['page']) ? $_POST['page'] : 1;//传过来的页码
//form 表单数组形式
$formData = isset($_POST['formData']) ? $_POST['formData'] :'';
//request 搜索关键字
$key = $formData[0];
//request checkbox 以‘，’分割的字符串
$country = $formData[1];
$pageSize = 5;//每页显示的数目
$offsize = ($page -1 ) * $pageSize;
//1.连接数据库
$con = mysql_connect("localhost","root","admin");
if (!$con)
{
    die('Could not connect: ' . mysql_error());
}
mysql_select_db('amzkit',$con);
mysql_query('set names utf8');
$where = '1=1';
if(!empty($key)){
    $where .= " and VpnName LIKE '%{$key}%'";
}
if(!empty($country)){
    $where .= " and Country in ('{$country}')";
}
$sql = "select * from akvpn WHERE $where limit {$offsize},{$pageSize}";
$sql1 = "select * from akvpn WHERE $where";
$result = mysql_query($sql);
$result1 = mysql_query($sql1);
$total = mysql_num_rows($result1);
$totalPage = ceil($total/$pageSize);
$arr['total'] = $total;
$arr['pageSize'] = $pageSize;
$arr['totalPage'] = $totalPage;
while($row = mysql_fetch_array($result,MYSQL_ASSOC))
{
    $arr['list'][] = array(
        'VpnName' => $row['VpnName'],
        'VpnServer' => $row['VpnServer'],
        'VpnUser' => $row['VpnUser'],
        'Country' => $row['Country'],
    );
}
echo json_encode($arr);
mysql_close($con);
/**
 * 判断提交的方式是否为ajax
 * @return bool
 */
function isAjax(){
    if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){
        return true;
    }else{
        return false;
    }
}

?>