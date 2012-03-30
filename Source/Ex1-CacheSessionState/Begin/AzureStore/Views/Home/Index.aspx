﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MVCAzureStore.Models.IndexViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Azure Store Products
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Products</h1>
    <label for="items">Select a product from the list:</label>
    <% using (Html.BeginForm("Add", "Home")) { %>
        <select name="selectedItem" class="product-list" id="items" size="4">
        <% foreach (string product in Model.Products) { %>
            <option value="<%: product%>"><%: product%></option>
        <% } %>
        </select>
        <a href="javascript:document.forms[0].submit();">Add item to cart</a>
    <% } %>

    
</asp:Content>
