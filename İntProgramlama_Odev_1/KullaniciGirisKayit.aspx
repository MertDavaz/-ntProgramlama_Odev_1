<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KullaniciGirisKayit.aspx.cs" Inherits="İntProgramlama_Odev_1.KullaniciGirisKayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height:40px;"></div>
    <h2>Giriş Yap</h2>
    <div style="height:40px;"></div>
    <form class="dropdown-menu p-4">

        <div class="form-group row">
            <div class="col-md-2">
                <asp:Label ID="KullaniciAdiMail" runat="server" Text="Kullanıcı Adı / Mail : "></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox ID="KullaniciAdiMailTextBox" AutoCompleteType="Disabled" CssClass="form-control" runat="server" placeholder="Kullanıcı Adı / Mail"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="text-danger" ID="MailRequiredFieldValidator" runat="server" ErrorMessage="Kullanıcı Adı / Mail Hatalı" ControlToValidate="KullaniciAdiMailTextBox"></asp:RequiredFieldValidator>
            </div>

        </div>
        <div class="form-group row">
            <div class="col-md-2">
                <asp:Label ID="KullaniciSifre" runat="server" Text="Şifre:"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox ID="KullaniciSifreTextBox" AutoCompleteType="Disabled" TextMode="Password" CssClass="form-control" runat="server" placeholder="Şifre"></asp:TextBox>   
                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Hatalı Şifre" ControlToValidate="KullaniciSifreTextBox"></asp:RequiredFieldValidator>
            </div>

        </div>
        <div class="form-group row">
            <div class="col-md-2"></div>
            <div class="col-md-3">
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="CheckBoxLabel"  runat="server" Text="Beni Hatırla"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-md-2"></div>
            <div class="col-md-3">
                <asp:Button ID="GirisButton" CssClass="btn btn-primary" runat="server" CausesValidation="true" OnClick="GirisButton_Click" Text="Giriş Yap" />
                <asp:LinkButton ID="KayitOlLinkButton" CssClass="btn btn-danger" PostBackUrl="~/KullaniciKayit.aspx" runat="server" CausesValidation="false">Kayıt Ol</asp:LinkButton>
            </div>
        </div>

    </form>
    <div class="form-group row">
        <div class="col-md-2"></div>
        <div class="col-md-3">
            <asp:Label ID="UyariLabel" CssClass="text-danger" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
