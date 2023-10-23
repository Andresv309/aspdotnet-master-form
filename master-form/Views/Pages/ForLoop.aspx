<%@ Page Title="Ciclo For" Language="C#" MasterPageFile="~/Views/Layouts/CodeLab.master" AutoEventWireup="true" CodeBehind="ForLoop.aspx.cs" Inherits="master_form.Views.Pages.ForLoop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolderExample" runat="server">

<script>
  let initialCode = `const miArreglo = [1, 2, 3, 4, 5];\n\nfor (let i = 0; i < miArreglo.length; i++)\n{\n\tconsole.log("Elemento en la posición " + i + ": " + miArreglo[i])\n};\n
  `
</script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderExample" runat="server">

<div class="min-h-full h-full relative flex flex-col gap-2 p-4 overflow-y-scroll scrollbar-style" >
  <h1 class="text-4xl font-black tracking-tight text-neutral-950 sm:text-4xl">
    Bucle For
  </h1>

  <div class="flex-grow">
    <div class="mr-4 flex flex-col gap-4 max-h-full h-full min-h-full relative">
      <div class="flex-grow">
        <div class="max-h-full h-full min-h-full">

          <div class="flex flex-col gap-4 mt-6">
            <p>La estructura de control <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> for</span> en JavaScript es muy útil para ejecutar una serie de instrucciones un número determinado de veces. A diferencia de <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> while</span> que usa una condición para determinar si se ejecuta o no el bloque de código, <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> for</span> usa un contador que se incrementa en cada iteración hasta que se cumple una condición.</p>
          </div>

          <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>

          <div class="flex flex-col gap-4 mt-6">
            <p>Importante, fíjate que <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> for</span> tiene tres partes separadas por <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> ;</span>:</p>
          </div>

          <div class="flex flex-col gap-4 mt-6">
            <p>• La inicialización se realiza antes de que se inicie el bucle y se utiliza para declarar variables y asignar valores iniciales.</p>
          </div>

          <div class="flex flex-col gap-4 mt-6">
            <p>• La condición es una expresión booleana que se evalúa antes de cada iteración del bucle. Si la expresión se evalúa como <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> true</span>, se ejecuta el bloque de código dentro del bucle. Si la expresión se evalúa como <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> false</span>, el bucle termina.</p>
          </div>

          <div class="flex flex-col gap-4 mt-6">
            <p>• La actualización se utiliza para actualizar el valor de la variable de control del bucle después de cada iteración. Normalmente, se incrementa o decrementa el valor de la variable de control del bucle.</p>
          </div>

          <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>
 
        </div>
      </div>
    </div>
  </div>
</div>

</asp:Content>