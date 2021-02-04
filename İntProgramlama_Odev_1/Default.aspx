 <%@ Page Title="Ana Sayfa" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="İntProgramlama_Odev_1._Default" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 60px;"></div>

    <div class="jumbotron">
        <div class="text-center">
            <h1>Siz de İşlerinizi Kolayca Takip Etmek İster misiniz?</h1>
        </div>
        <hr />
        <div style="height: 35px;"></div>
        <div class="text-center">
            <p class="lead">Davaz Bilişim'in sunmuş olduğu Kolay İş Takip programı ile pratik ve düzenli bir şekilde işlerinizi takip edebilirsiniz.</p>
        </div>
        <div style="height: 20px;"></div>
        <div class="text-center">
            <p><a href="~/Contact.aspx" runat="server" class="btn btn-warning btn-lg">Bize Ulaşın &raquo;</a></p>
        </div>
        <div style="height: 20px;"></div>
    </div>

    <div class="text-center row">
        <div class="col"></div>
        <div class="col-md-3 ">
            <svg xmlns="http://www.w3.org/2000/svg" style="color:#099221; margin-bottom:20px;" height="75" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
                <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
                <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z" />
            </svg>
            
            <h2>Kolay İş Takip Programı</h2>
            <p>
                Davaz Bilişim'in sunmuş olduğu kolay İş Takip Programı işlerinizi büyük ölçüde hafifletmenize yardımcı olur.
                    Sizlere kolaylığın yanında bilgilerinizin güvenli tutulmasını da garanti eder.
            </p>
            <p>
                    <a class="btn btn-outline-success" runat="server" href="~/Contact">Daha fazla &raquo;</a>
                </p> 
        </div>
        <div class="col-md-3">
            <i class="fas fa-user-secret" style="color:gray; font-size: 75px; margin-bottom:20px;"></i>
            <h2>Casus Yazılımlara Karşı Koruma Garantisi</h2>
            <p>
                Davaz Bilişim'in sunmuş olduğu kolay İş Takip Programı işlerinizi büyük ölçüde hafifletmenize yardımcı olur.
                    Sizlere kolaylığın yanında bilgilerinizin güvenli tutulmasını da garanti eder.
            </p>
               <p>
                    <a class="btn btn-outline-secondary" href="https://mertdavaz.com.tr/hakkimizda/">Daha fazla &raquo;</a>
                </p>
        </div>

        <div class="col-md-3">
            <svg xmlns="http://www.w3.org/2000/svg" height="75" fill="currentColor" style="color:#0d6efd; margin-bottom:20px;" class="bi bi-shield-check" viewBox="0 0 16 16">
                <path d="M5.338 1.59a61.44 61.44 0 0 0-2.837.856.481.481 0 0 0-.328.39c-.554 4.157.726 7.19 2.253 9.188a10.725 10.725 0 0 0 2.287 2.233c.346.244.652.42.893.533.12.057.218.095.293.118a.55.55 0 0 0 .101.025.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067c-.53 0-1.552.223-2.662.524zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z" />
                <path d="M10.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z" />
            </svg>
            <h2>Davaz Bilişim Kalitesi</h2>
            <p>
                Davaz Bilişim sektörün en önde gelen şirketlerinden biridir.
                Davaz Bilişim olarak 26 şehir de ofisimiz olmakla beraber tüm Türkiye’ye 2014 senesinden beri hizmet vermekteyiz.
            </p>
            <p>
                <a class="btn btn-outline-primary" href="https://www.mertdavaz.com.tr">Daha fazla &raquo;</a>
            </p>

        </div>
        <div class="col"></div>
    </div>


</asp:Content>
