<%@ Page Title="ArrayList" Language="C#" MasterPageFile="~/Views/Layouts/CodeLab.master" AutoEventWireup="true" CodeBehind="ArrayList.aspx.cs" Inherits="master_form.Views.Pages.ArrayList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolderExample" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderExample" runat="server">

<div class="min-h-full h-full relative flex flex-col gap-2 p-4 overflow-y-scroll scrollbar-style" >
  <h1 class="text-4xl font-black tracking-tight text-neutral-950 sm:text-4xl">
    ArrayList
  </h1>

  <div class="flex-grow">
    <div class="mr-4 flex flex-col gap-4 max-h-full h-full min-h-full relative">
      <div class="flex-grow">
        <div class="max-h-full h-full min-h-full">

          <div class="mt-6">
            <h3 class="text-2xl font-bold tracking-tight text-neutral-950 sm:text-3xl">
              ¿Qué es un ArrayList en C#?
            </h3>
          </div>

          <div class="flex flex-col gap-4 mt-6">
            <p>
              Un ArrayList en C# es como una lista especial en la que puedes guardar cosas, como números, letras o incluso objetos. Imagina que tienes una caja de lápices y quieres guardarlos todos juntos en un lugar. Un ArrayList es como esa caja, pero en el mundo de la programación.
              <br><br>
              Lo que hace que los ArrayList sean diferentes de los arrays normales es que puedes cambiar su tamaño fácilmente. Si necesitas agregar más cosas a la caja de lápices, no tienes que conseguir una caja nueva. Con un ArrayList, puedes hacer que la caja sea más grande o más pequeña según lo necesites.
              <br><br>
              Ahora veamos algunas diferencias entre los ArrayList y los arrays normales:
              <br><br>
              • Cambiar de tamaño: Los ArrayList pueden cambiar de tamaño fácilmente, mientras que los arrays normales no pueden.
              <br><br>
              • Guardar cosas diferentes: En un ArrayList, puedes guardar cosas de diferentes tipos, como números y letras juntos. En un array normal, solo puedes guardar cosas del mismo tipo.
              <br><br>
              • Hacer cosas con ellos: Con un ArrayList, puedes hacer muchas cosas útiles, como agregar cosas al final, quitar cosas en el medio y buscar información. Algunas de estas cosas son más difíciles de hacer con un array normal.
              <br><br>
              Entonces, si necesitas una forma flexible de guardar y organizar información en tu programa de C#, un ArrayList puede ser una excelente opción. En las próximas secciones, aprenderemos cómo usarlos y cómo realizar diferentes tareas con ellos.
            </p>
          </div>

          <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>

          <div class="mt-6">
            <h3 class="text-2xl font-bold tracking-tight text-neutral-950 sm:text-3xl">
              Crear un ArrayList en C#
            </h3>
          </div>


          <div class="flex flex-col gap-4 mt-6">
            <p>
              Crear un ArrayList en C# es fácil. Piensa en él como una caja vacía donde guardarás cosas.
              <br><br>
              Aquí tienes un ejemplo de cómo hacerlo:
              <br><br>
              <code class="bg-slate-300 p-2">
                // Creamos un ArrayList llamado "miLista"<br>
                ArrayList miArrayList = new ArrayList();
              </code>
              <br><br>
              En este ejemplo, se está creando un ArrayList vacío llamado miArrayList utilizando el operador new y el constructor predeterminado de la clase ArrayList.
              <br><br>
              Por ejemplo, si queremos crear un ArrayList en C# con los nombres de algunos países, podríamos hacer lo siguiente:
              
              <br><br>

              <code class="bg-slate-300 p-2">
                  using System;<br>
                  using System.Collections;<br>
                  
                  class Program<br>
                  {<br>
                      static void Main(string[] args)<br>
                      {<br>
                          ArrayList datos = new ArrayList()<br>
                          {<br>
                            "España",<br>
                            25,<br>
                            -47,<br>
                            "Hola",<br>
                            "Reino Unido"<br>
                          };<br>
                          <br><br>
                          foreach (string pais in paises)<br>
                          {<br>
                            Console.WriteLine(pais);<br>
                          }<br>
                      }<br>
                  }
                </code>

              <br><br>
              En este ejemplo, estamos creando un ArrayList llamado paises con cinco elementos, que son los nombres de algunos países europeos. Luego, utilizamos un bucle foreach para recorrer el ArrayList y mostrar cada uno de los nombres de los países en la consola.
            </p>
          </div>

          <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>
 
        </div>
      </div>
    </div>
  </div>
</div>

</asp:Content>
