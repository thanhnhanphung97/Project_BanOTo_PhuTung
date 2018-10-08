<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Giohang.aspx.cs" Inherits="Giohang" %>

<%@ Register src="UC/ucGiohang.ascx" tagname="ucGiohang" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ucGiohang ID="ucGiohang1" runat="server" />
</asp:Content>

