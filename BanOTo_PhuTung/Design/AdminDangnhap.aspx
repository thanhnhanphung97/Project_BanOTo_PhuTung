<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminDangnhap.aspx.cs" Inherits="AdminDangnhap" %>

<%@ Register src="Admin/UC/ucDNAdmin.ascx" tagname="ucDNAdmin" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ucDNAdmin ID="ucDNAdmin1" runat="server" />
</asp:Content>

