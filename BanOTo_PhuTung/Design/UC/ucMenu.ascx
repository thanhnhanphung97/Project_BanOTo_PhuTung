<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMenu.ascx.cs" Inherits="UC_ucMenu" %>

<div id="menu">
    	<div id="sub-menu">
        	<ul>
            	<li><a href="../Trangchu.aspx"><b>Trang chủ</b></a></li>
                <li><a href="#"><b>Giới thiệu</b></a></li>
                <li>
                	<a href="#"><b>Sản phẩm</b></a>
                	<ul class="child-menu">
                    	<li><a href="../AllCar.aspx"><b>Xe Ô Tô</b></a></li>
                        <li><a href="../AccessaryFull.aspx"><b>Phụ Tùng</b></a></li>
                    </ul>
        		</li>
                <li><a href="#"><b>Liên hệ</b></a></li>
            </ul>
        </div>
        <div id ="search">
              <input type="text" size="36" name="tsearch" placeholder="Hãy nhập tên xe cần tìm ..." />
              <input type="submit" value="Tìm kiếm" title="Tìm kiếm" >
    	</div>
    </div>
<div class="clear"></div>