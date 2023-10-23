<%@ Page Title="Ciclo While" Language="C#" MasterPageFile="~/Views/Layouts/CodeLab.master" AutoEventWireup="true" CodeBehind="WhileLoop.aspx.cs" Inherits="master_form.Views.Pages.WhileLoop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolderExample" runat="server">

  <script>
    let initialCode = `let numero = 1\n\nwhile (numero <= 5)\n{\n\tconsole.log(numero); \n\tnumero += 1;\n};`
  </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderExample" runat="server">
  <div class="min-h-full h-full relative flex flex-col gap-2 p-4 overflow-y-scroll scrollbar-style" >
    <h1 class="text-4xl font-black tracking-tight text-neutral-950 sm:text-4xl">
      Bucle While
    </h1>

    <div class="flex-grow">
      <div class="mr-4 flex flex-col gap-4 max-h-full h-full min-h-full relative">
        <div>
          <video src="https://video.aprendejs.dev/bucle-opt.mp4" controls class="w-full h-15px rounded-2xl"></video>
        </div>
        <div class="flex-grow">
          <div class="max-h-full h-full min-h-full">

            <div class="flex flex-col gap-4 mt-6">
              <p>Un bucle es una estructura de control que permite repetir un bloque de instrucciones. Vamos, repetir una tarea tantas veces como queramos.</p>
            </div>

            <div class="flex flex-col gap-4 mt-6">
              <p>En JavaScript, existen varias formas de lograrlo, y una de ellas es el bucle con <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> while</span>. El bucle <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> while</span> es una estructura de control de flujo que ejecuta una sección de código mientras se cumple una determinada condición.</p>
            </div>

            <div class="flex flex-col gap-4 mt-6">
              <p>En esta clase, vamos a explicar cómo funciona el bucle <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> while</span> en JavaScript y cómo podemos utilizarlo en nuestros programas.</p>
            </div>

            <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>
            
            <div class="mt-6">
              <h3 class="text-2xl font-bold tracking-tight text-neutral-950 sm:text-3xl">
                Sintaxis
              </h3>
            </div>

            <div class="flex flex-col gap-4 mt-6">
              <p>La sintaxis del bucle <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> while</span> es similar a la de un condicional <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> if</span>. La única diferencia es que, en lugar de ejecutar el código una sola vez, se ejecuta mientras se cumpla la condición.</p>
            </div>

            <div class="flex flex-col gap-4 mt-6">
              <p>El bucle comienza evaluando la condición dentro de los paréntesis. Si la condición es <span class="px-2 rounded-lg bg-[#222222] text-[#fbd44c]"> true</span>, se ejecuta el código dentro de las llaves..</p>
            </div>

            <div class="flex flex-col gap-4 mt-6">
              <p>Después de ejecutar el código, la condición se evalúa de nuevo, y si sigue siendo verdadera, el código dentro de las llaves se ejecuta de nuevo. Este proceso se repite hasta que la condición se evalúa como falsa.</p>
            </div>

            <div class="flex flex-col gap-4 mt-6">
              <p>Ten en cuenta que, si la condición es falsa desde el principio, el código dentro de las llaves nunca se ejecutará.</p>
            </div>

            <div class="flex flex-col gap-4 mt-6">
              <p>A cada vuelta del bucle se le llama iteración. Una iteración es la repetición de un proceso o acción un número determinado de veces, de manera ordenada y sistemática.</p>
            </div>

            <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>
   
          </div>
        </div>
      </div>
    </div>
  </div>

</asp:Content>
