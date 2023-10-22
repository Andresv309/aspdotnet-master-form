<%@ Page Title="Repositorio" Language="C#" MasterPageFile="~/Views/Layouts/Main.Master" AutoEventWireup="true" CodeBehind="Repository.aspx.cs" Inherits="master_form.Views.Pages.Repository" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

  <form runat="server">
    <section ID="fileUploadSectionLoad" runat="server">
      <span>Sube tu archivo acá</span>
      <asp:FileUpload ID="fileUpload" runat="server" accept="text/plain"></asp:FileUpload>
      <asp:Button ID="fileUploadButton" runat="server" Text="Subir Archivo" OnClick="fileUploadButton_Click" />
    </section>

    <section ID="fileUploadSectionEdition" runat="server">

      <asp:Button ID="fileUploadSectionClose" runat="server" Text="Close" OnClick="fileUploadSectionClose_Click" />

      <asp:Label ID="fileName" runat="server" Text=""></asp:Label>


      <asp:Label ID="fileStatus" runat="server" Text=""></asp:Label>
      <asp:TextBox ID="fileData" runat="server" TextMode="MultiLine" class="resize-none h-28 w-96 overflow-y-scroll overflow-x-auto" ></asp:TextBox>

      <asp:Button ID="fileDownloadNewData" runat="server" Text="Descargar Archivo" OnClick="fileDownloadNewData_Click" />

    </section>

  </form> 


</asp:Content>
