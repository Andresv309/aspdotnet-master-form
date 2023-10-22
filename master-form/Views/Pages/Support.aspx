<%@ Page Title="Soporte" Language="C#" MasterPageFile="~/Views/Layouts/Main.Master" AutoEventWireup="true" CodeBehind="Support.aspx.cs" Inherits="master_form.Views.Pages.Support" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

  <form runat="server" class="flex flex-col gap-2">
    
    <div>
      <label>Nombre</label>
      <asp:TextBox ID="formPersonName" runat="server" TextMode="SingleLine"></asp:TextBox>
    </div>

    <div>
      <label>Email</label>
      <asp:TextBox ID="formPersonEmail" runat="server" TextMode="Email"></asp:TextBox>
    </div>

    <div>
      <label>Teléfono</label>
      <asp:TextBox ID="formPersonPhone" runat="server" TextMode="Number" ></asp:TextBox>
    </div>

    <div>
      <label>Asunto</label>
      <asp:TextBox ID="formPersonSubject" runat="server" TextMode="SingleLine"></asp:TextBox>
    </div>

    <div>
      <label>Mensaje</label>
      <asp:TextBox ID="formPersonMessage" runat="server" TextMode="MultiLine" class="resize-none h-28 w-96 overflow-y-scroll overflow-x-auto" ></asp:TextBox>
    </div>
    
    <asp:Button ID="formSubmit" runat="server" Text="Enviar" OnClick="formSubmit_Click" class="bg-black text-white py-3 px-14 rounded-full hover:bg-neutral-600 transition-all duration-200" />

    <asp:Label ID="formEmailSendStatus" runat="server" Text="" class="text-red-800"></asp:Label>

  </form>

</asp:Content>
