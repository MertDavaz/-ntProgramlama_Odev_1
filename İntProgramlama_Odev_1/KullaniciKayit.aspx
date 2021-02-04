<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KullaniciKayit.aspx.cs" Inherits="İntProgramlama_Odev_1.KullaniciKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 40px;"></div>
    <h2>Kayıt Ol</h2>
    <div style="height: 40px;"></div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitAdiLabel" runat="server" Text="Ad: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitAdiTextBox" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Ad"></asp:TextBox><br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="KayitAdRequiredFieldValidator" runat="server" ErrorMessage="Boşlukları doldurunuz" ControlToValidate="KayitAdiTextBox"></asp:RequiredFieldValidator>
        </div>
    </div>


    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitSoyadLabel" runat="server" Text="Soyad: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitSoyadTextBox" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Soyad"></asp:TextBox><br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="KayitSoyadTextBox"></asp:RequiredFieldValidator>
        </div>
    </div>


    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitNickLabel" runat="server" Text="Kullanıcı Adı: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitNickTextBox" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı"></asp:TextBox><br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="KayitNickTextBox"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KullaniciSifre" runat="server" Text="Şifre:"></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KullaniciSifreTextBox" AutoCompleteType="Disabled" TextMode="Password" CssClass="form-control" runat="server" placeholder="Şifre"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="KullaniciSifreTextBox"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitMailLabel" runat="server" Text="Mail Adresi: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitMailTextBox" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="example@hotmail.com"></asp:TextBox><br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="KayitMailTextBox"></asp:RequiredFieldValidator>
        </div>
    </div>


    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitTelLabel" runat="server" Text="Telefon Numarası: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitTelTextBox" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="+90___ ___ __ __"></asp:TextBox><br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="KayitTelTextBox"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitCinsiyetLabel" runat="server" Text="Cinsiyet: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitCinsiyetTextBox" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Erkek/Kadın (İsteğe Bağlı)"></asp:TextBox>
        </div>
    </div>

    <div class="form-group row" style="margin-top: 10px;">
        <div class="col-md-2"></div>
        <div class="col-md-3">
            <asp:Button ID="KayitOlButton" CssClass="btn btn-danger" runat="server" OnClick="KayitOlButton_Click" Text="Kayıt Ol" />
            <div class="float-right">
                <asp:Label ID="KayitBasariliLabel" CssClass="text-success" runat="server" Text=""></asp:Label>
            </div>

        </div>
    </div>


</asp:Content>
