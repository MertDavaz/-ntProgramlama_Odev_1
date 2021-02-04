<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciOzelSayfa.Master" AutoEventWireup="true" CodeBehind="MusteriEkleme.aspx.cs" Inherits="İntProgramlama_Odev_1.MusteriEkleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div style="height:40px;"></div>
    <h2>Müşteri Ekleme</h2>
    <div style="height:40px;"></div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitAdiLabel" runat="server" Text="Ad: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="MusteriAdi" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Ad"></asp:TextBox><br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="KayitAdRequiredFieldValidator" runat="server" ErrorMessage="Boşlukları doldurunuz" ControlToValidate="MusteriAdi"></asp:RequiredFieldValidator>
        </div>
    </div>


    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitSoyadLabel" runat="server" Text="Soyad: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="MusteriSoyadi" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Soyad"></asp:TextBox><br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="MusteriSoyadi"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitMailLabel" runat="server" Text="Mail Adresi: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="MusteriEposta" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="example@hotmail.com"></asp:TextBox><br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="MusteriEposta"></asp:RequiredFieldValidator>
        </div>
    </div>


    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitTelLabel" runat="server" Text="Telefon Numarası: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="MusteriTel" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="+90___ ___ __ __"></asp:TextBox><br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="MusteriTel"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="Adres" runat="server" Text="Adres: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="MusteriAdres" AutoCompleteType="Disabled" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>

    <div class="form-group row" style="margin-top:10px;">
        <div class="col-md-2"></div>
        <div class="col-md-3">
            <asp:Button ID="MusteriEkleButton" OnClick="MusteriEkleButton_Click" CssClass="btn btn-success" runat="server"  Text="Ekle" />
        </div>
    </div>
   <div class="form-group row">
        <div class="col-md-2"></div>
        <div class="col-md-3  text-center">
            <asp:Label ID="KayitBasarisiz" CssClass="text-success" runat="server" Text=""></asp:Label>
        </div>
    </div>



</asp:Content>
