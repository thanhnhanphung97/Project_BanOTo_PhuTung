<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="NhaSanXuat.aspx.cs" Inherits="NhaSanXuat" %>

<%@ Register src="Admin/UC/ucNSX.ascx" tagname="ucNSX" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ucNSX ID="ucNSX1" runat="server" />
</asp:Content>

