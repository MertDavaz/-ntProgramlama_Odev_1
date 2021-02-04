<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciOzelSayfa.Master" AutoEventWireup="true" CodeBehind="KullaniciHesabim.aspx.cs" Inherits="İntProgramlama_Odev_1.KullaniciHesabim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height:40px;"></div>
    <h2>Bilgilerimi Güncelle</h2>
    <div style="height:40px;"></div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitAdiLabel" runat="server" Text="Ad: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitAdiTextBox" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Ad"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="KayitAdRequiredFieldValidator" runat="server" ErrorMessage="Boşlukları doldurunuz" ControlToValidate="KayitAdiTextBox"></asp:RequiredFieldValidator>
        </div>
    </div>


    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitSoyadLabel" runat="server" Text="Soyad: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitSoyadTextBox" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Soyad"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="KayitSoyadTextBox"></asp:RequiredFieldValidator>
        </div>
    </div>


    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitNickLabel" runat="server" Text="Kullanıcı Adı: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitNickTextBox" AutoCompleteType="Disabled" ReadOnly="true" CssClass="form-control" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
            <br />
        </div>
    </div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KullaniciSifre" runat="server" Text="Şifre:"></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KullaniciSifreTextBox" AutoCompleteType="Disabled" TextMode="Password" CssClass="form-control" runat="server" placeholder="Şifre"></asp:TextBox>
            
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="KullaniciSifreTextBox"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitMailLabel" runat="server" Text="Mail Adresi: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitMailTextBox" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="example@hotmail.com"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="KayitMailTextBox"></asp:RequiredFieldValidator>
        </div>
    </div>


    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitTelLabel" runat="server" Text="Telefon Numarası: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitTelTextBox" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="+90___ ___ __ __"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Boşlukları Doldurunuz" ControlToValidate="KayitTelTextBox"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-md-2">
            <asp:Label ID="KayitCinsiyetLabel" runat="server" Text="Cinsiyet: "></asp:Label>

        </div>
        <div class="col-md-3">
            <asp:TextBox ID="KayitCinsiyetTextBox" AutoCompleteType="Disabled" runat="server" CssClass="form-control" placeholder="Erkek/Kadın (İsteğe Bağlı)"></asp:TextBox>
            <br />
        </div>
    </div>
     <div class="form-group row">
        <div class="col-md-2"></div>
        <div class="col-md-4">
            <asp:Button ID="GuncelleButton" CssClass="btn btn-success" runat="server" OnClick="GuncelleButton_Click" Text="Güncelle" />
            <asp:Label ID="GuncellemeBasarili" CssClass="text-success" Style="margin-left:32px;"  runat="server" Text=""></asp:Label>
        </div></div>
       
    
</asp:Content>
