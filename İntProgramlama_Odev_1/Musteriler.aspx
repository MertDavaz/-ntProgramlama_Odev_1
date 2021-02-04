<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciOzelSayfa.Master" AutoEventWireup="true" CodeBehind="Musteriler.aspx.cs" Inherits="İntProgramlama_Odev_1.Musteriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div style="height:40px"></div>
    <h1>Müşteriler</h1>
    <div style="margin-bottom:8px">
        <div class="col">
            <p>İş eklemek için müşteri seçiniz...</p>
        </div>
        <div class="col">
            <asp:LinkButton ID="LinkButton1" CausesValidation="false" PostBackUrl="~/MusteriEkleme.aspx" CssClass="btn btn-success" runat="server">Müşteri Ekle</asp:LinkButton>
        </div>
    </div>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" CssClass="table table-hover table-secondary border" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="Ekle" HeaderStyle-CssClass="text-success text-center" ItemStyle-CssClass="text-center">
                <ItemTemplate>        
                    <asp:LinkButton runat="server" CssClass="btn btn-success" CommandName="AddCommand" CommandArgument='<%#Eval("id") %>'>➤</asp:LinkButton>                  
                </ItemTemplate>
            </asp:TemplateField>         
            <asp:BoundField ItemStyle-CssClass="text-center"  DataField="ad" HeaderText="İsim"  HeaderStyle-CssClass="text-center" />
            <asp:BoundField ItemStyle-CssClass="text-center"  DataField="soyad" HeaderText="Soyisim"  HeaderStyle-CssClass="text-center" />
            <asp:BoundField ItemStyle-CssClass="text-center"  DataField="tel" HeaderText="Telefon"  HeaderStyle-CssClass="text-center" />
            <asp:BoundField ItemStyle-CssClass="text-center"  DataField="eposta" HeaderText="E-Posta"  HeaderStyle-CssClass="text-center" />
            <asp:BoundField ItemStyle-CssClass="text-center"  DataField="adres" HeaderText="Adres"  HeaderStyle-CssClass="text-center" />          
            <asp:TemplateField HeaderText="Sil" HeaderStyle-CssClass="text-danger text-center" ItemStyle-CssClass="text-center">
                <ItemTemplate>        
                    <asp:LinkButton runat="server" CssClass="btn btn-danger text-white" CommandName="DeleteCommand" CommandArgument='<%#Eval("id") %>'>✖</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
