<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciOzelSayfa.Master" AutoEventWireup="true" CodeBehind="GirisSonrasiArsiv.aspx.cs" Inherits="İntProgramlama_Odev_1.GirisSonrasiArsiv" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height:40px"></div>
    <h1>İş Bilgileri</h1>
    <asp:LinkButton ID="LinkButton1" CausesValidation="false" PostBackUrl="~/Musteriler.aspx" CssClass="btn btn-success" runat="server">İş Ekle</asp:LinkButton>
     <div style="height:8px"></div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" CssClass="table table-hover table-secondary border" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" DataField="ad" HeaderText="İsim" />
                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" DataField="soyad" HeaderText="Soyisim" />
                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" DataField="tel" HeaderText="Telefon" />
                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" DataField="eposta" HeaderText="E-Posta" />
                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" DataField="adres" HeaderText="Adres" />                
                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" DataField="aciklama" HeaderText="Açıklama" />
                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" DataField="ucret" HeaderText="Ücret Tutarı ( ₺ )" />
                <asp:BoundField ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" DataField="personel" HeaderText="Yetkili Personel" />
                 <asp:TemplateField  HeaderText="Sil"  HeaderStyle-CssClass="text-danger text-center" ItemStyle-CssClass="text-center">
                <ItemTemplate>                 
                    <asp:LinkButton runat="server" CssClass="btn btn-danger text-white" CommandName="DeleteCommand" CommandArgument='<%#Eval("id") %>'>✖</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:GridView>
</asp:Content>
