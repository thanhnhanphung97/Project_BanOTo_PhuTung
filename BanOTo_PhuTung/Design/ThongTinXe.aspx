<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThongTinXe.aspx.cs" Inherits="ThongTinXe" %>

<%@ Register src="UC/ucTTXe.ascx" tagname="ucTTXe" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ucTTXe ID="ucTTXe1" runat="server" />
</asp:Content>

