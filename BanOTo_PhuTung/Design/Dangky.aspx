<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<%@ Register src="UC/ucDangKy.ascx" tagname="ucDangKy" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ucDangKy ID="ucDangKy1" runat="server" />
</asp:Content>

