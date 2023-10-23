<%@ Page Title="Condicionales" Language="C#" MasterPageFile="~/Views/Layouts/CodeLab.master" AutoEventWireup="true" CodeBehind="Conditionals.aspx.cs" Inherits="master_form.Views.Pages.Conditionals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolderExample" runat="server">

  <script>
    let initialCode = `const x = 2\n\nif (x < 5) {\n  console.log("Es menor a 5")\n} else {\n  console.log("Es mayor o igual a 5")\n}\n`
  </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderExample" runat="server">
  <div class="min-h-full h-full relative flex flex-col gap-2 p-4 overflow-y-scroll scrollbar-style" >
    <h1 class="text-4xl font-black tracking-tight text-neutral-950 sm:text-4xl">
      Condicionales
    </h1>

    <div class="flex-grow">
      <div class="mr-4 flex flex-col gap-4 max-h-full h-full min-h-full relative">
        <div>
          <video src="https://video.aprendejs.dev/condicional-if-opt.mp4" controls class="w-full h-15px rounded-2xl"></video>
        </div>
        <div class="flex-grow">
          <div class="max-h-full h-full min-h-full">
            
            <div class="mt-6">
              <h3 class="text-2xl font-bold tracking-tight text-neutral-950 sm:text-3xl">Código Condicional con 
                <span class="px-6 rounded-lg bg-[#222222] text-[#fbd44c]"> if</span>
              </h3>
            </div>

            <div class="flex flex-col gap-4 mt-6">
              <p>El código condicional es un bloque de código que se ejecuta sólo si se cumple una condición. En JavaScript usamos la palabra reservada <span class="rounded-md bg-[#222222] text-[#fbd44c] px-3 tracking-wider">if</span>  para crear un bloque condicional.</p>
              
              <p>Ponemos la condición entre paréntesis y el código se ejecuta si la condición entre llaves es <span class="rounded-md bg-[#222222] text-[#fbd44c] px-2">true</span>. Si la condición es <span class="rounded-md bg-[#222222] text-[#fbd44c] px-2">false</span>, el código no se ejecuta.</p>
            </div>

            <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>
            
            <div class="mt-12">
              <h3 class="text-2xl font-bold tracking-tight text-neutral-950 sm:text-3xl">Complemento
                <span class="px-4 rounded-lg bg-[#222222] text-[#fbd44c]">else</span>
              </h3>
            </div>
            
            <div class="flex flex-col gap-4 mt-6">
              <p>Es posible utilizar la palabra clave <span class="rounded-md bg-[#222222] text-[#fbd44c] px-2">else</span>  para ejecutar un bloque de código diferente si la condición es falsa.</p>
              
              <p>Esto es útil para ejecutar un bloque de código u otro dependiendo de si se cumple o no una condición.</p>
            </div>

            <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>

            <div class="mt-12">
              <h3 class="text-2xl font-bold tracking-tight text-neutral-950 sm:text-3xl w-[100%]">Complemento
                <span class="px-4 rounded-lg bg-[#222222] text-[#fbd44c]">else if</span>
              </h3>
            </div>
          
            <div class="flex flex-col gap-4 mt-6">
                <p >También podemos utilizar la palabra clave <span class="rounded-md bg-[#222222] text-[#fbd44c] px-2 tracking-wider">else if</span> para comprobar más de una condición.</p>
        
                <p>El programa comprueba la primera condición. Si es <span class="rounded-md bg-[#222222] text-[#fbd44c] px-2">true</span> . Ejecuta el código dentro del bloque if. Si es <span class="rounded-md bg-[#222222] text-[#fbd44c] px-3">false</span> , comprueba la siguiente condición. Si es true , ejecuta el código dentro del bloque <span class="rounded-md bg-[#222222] text-[#fbd44c] px-3">else if</span>. Si es false, ejecuta el código dentro del bloque else.</p>
        
                <p>Dicho de otra forma, entrará en el primer bloque que cumpla la condición y no entrará en los demás. Si no cumple ninguna, entonces entrará en el bloque  <span class="rounded-md bg-[#222222] text-[#fbd44c] px-2 tracking-wider">else</span> .</p>
            </div>

            <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>
   
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
