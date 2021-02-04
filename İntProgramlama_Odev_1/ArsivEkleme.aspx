<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciOzelSayfa.Master" AutoEventWireup="true" CodeBehind="ArsivEkleme.aspx.cs" Inherits="İntProgramlama_Odev_1.ArsivEkleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height:40px;"></div>
    <h2>Arşiv Ekleme</h2>
    <div style="height:40px;"></div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitAdiLabel" runat="server" Text="Açıklama: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="Aciklama" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Açıklama..."></asp:TextBox><br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="KayitAdRequiredFieldValidator" runat="server" ErrorMessage="Boşlukları doldurunuz" ControlToValidate="Aciklama"></asp:RequiredFieldValidator>
        </div>
    </div>


    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitSoyadLabel" runat="server" Text="Ücret: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="Ucret" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Ücret ( ₺ )"></asp:TextBox><br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="Ucret"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group row" style="margin-top:10px;">
        <div class="col-md-2"></div>
        <div class="col-md-3">
            <asp:Button ID="ArsivEkleButton" OnClick="ArsivEkleButton_Click" CssClass="btn btn-success" runat="server"  Text="Ekle" />
        </div>
    </div>
</asp:Content>
