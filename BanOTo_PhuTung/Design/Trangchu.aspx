<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Trangchu.aspx.cs" Inherits="Trangchu" %>

<%@ Register src="UC/ucSlider.ascx" tagname="ucSlider" tagprefix="uc1" %>




<%@ Register src="UC/ucCarList.ascx" tagname="ucCarList" tagprefix="uc2" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left:65px;">
        <uc1:ucSlider ID="ucSlider1" runat="server" />
        <br />
        <uc2:ucCarList ID="ucCarList1" runat="server" />
    </div>
</asp:Content>

