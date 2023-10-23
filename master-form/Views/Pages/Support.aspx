<%@ Page Title="Soporte" Language="C#" MasterPageFile="~/Views/Layouts/Main.Master" AutoEventWireup="true" CodeBehind="Support.aspx.cs" Inherits="master_form.Views.Pages.Support" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

  <div class="w-full h-[calc(100vh-3.5rem)] flex items-center justify-center">
    <div runat="server" class="flex flex-col gap-8 py-8 px-12 rounded-md bg-slate-200/70 border border-slate-400">
    
      <div>
        <h1 class="text-4xl font-black tracking-tight text-neutral-950 sm:text-4xl">
          Envíanos tu <span class="text-blue-700">Mensaje!</span>
        </h1>
      </div>

      <div class="flex flex-col gap-2">
        <div>
          <label class="block text-sm">Nombre:</label>
          <asp:TextBox ID="formPersonName" runat="server" TextMode="SingleLine" class="p-2 rounded text-sm block w-full"></asp:TextBox>
        </div>
    
        <div>
          <label class="block text-sm">Email:</label>
          <asp:TextBox ID="formPersonEmail" runat="server" TextMode="Email" class="p-2 rounded text-sm block w-full"></asp:TextBox>
        </div>
    
        <div>
          <label class="block text-sm w-full">Teléfono:</label>
          <asp:TextBox ID="formPersonPhone" runat="server" TextMode="Number"  class="p-2 rounded text-sm block w-full"></asp:TextBox>
        </div>
    
        <div>
          <label class="block text-sm w-full">Asunto:</label>
          <asp:TextBox ID="formPersonSubject" runat="server" TextMode="SingleLine" class="p-2 rounded text-sm block w-full"></asp:TextBox>
        </div>
    
        <div>
          <label class="block text-sm">Mensaje:</label>
          <asp:TextBox ID="formPersonMessage" runat="server" TextMode="MultiLine" class="resize-none h-28 w-96 overflow-y-scroll p-2 "></asp:TextBox>
        </div>
        
        <asp:Button ID="formSubmit" runat="server" Text="Enviar" OnClick="formSubmit_Click" class="bg-blue-700 text-white py-3 px-14 rounded-full hover:bg-blue-800 transition-all duration-200 cursor-pointer" />
    
        <asp:Label ID="formEmailSendStatus" runat="server" Text="" class="text-red-800"></asp:Label>
      </div>    
  
    </div>
  </div>

</asp:Content>
