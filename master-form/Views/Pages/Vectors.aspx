<%@ Page Title="Vectores" Language="C#" MasterPageFile="~/Views/Layouts/CodeLab.master" AutoEventWireup="true" CodeBehind="Vectors.aspx.cs" Inherits="master_form.Views.Pages.Vectors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolderExample" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderExample" runat="server">

<div class="min-h-full h-full relative flex flex-col gap-2 p-4 overflow-y-scroll scrollbar-style" >
  <h1 class="text-4xl font-black tracking-tight text-neutral-950 sm:text-4xl">
    Vectores
  </h1>

  <div class="flex-grow">
    <div class="mr-4 flex flex-col gap-4 max-h-full h-full min-h-full relative">
      <div class="flex-grow">
        <div class="max-h-full h-full min-h-full">

          <div class="mt-6">
            <h3 class="text-2xl font-bold tracking-tight text-neutral-950 sm:text-3xl">
              ¿Qué es un vector en C#?
            </h3>
          </div>

          <div class="flex flex-col gap-4 mt-6">
            <p>
              Un array en C# es una estructura de datos que permite almacenar una colección de elementos del mismo tipo en una única variable.
              <br><br>
              Estos elementos están organizados de manera secuencial y pueden ser accedidos mediante un índice, que indica su posición dentro del array. El primer elemento del array siempre tiene el índice 0, el segundo tiene el índice 1, y así sucesivamente.
              <br><br>
              Los arreglos (arrays) en C# son fundamentales en la programación, ya que permiten almacenar y manipular grandes cantidades de información de manera estructurada y eficiente.
              <br><br>
              Por ejemplo, pueden usarse para almacenar una lista de números enteros, una colección de objetos o incluso otros arrays.
            </p>
          </div>

          <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>


          <div class="mt-6">
            <h3 class="text-2xl font-bold tracking-tight text-neutral-950 sm:text-3xl">
              Tipos de vectores en C#
            </h3>
          </div>

          <div class="flex flex-col gap-4 mt-6">
            <p>
              Los vectores o arrays en C# pueden clasificarse en tres categorías principales:
              <br><br>
              <strong>Arrays unidimensionales</strong>
              <br><br>
              Son arrays de una sola dimensión, que se pueden visualizar como una lista o un vector. Pueden almacenar elementos de cualquier tipo (primitivo, objeto o estructura) y se accede a sus elementos utilizando un único índice.
              <br><br>
              Por ejemplo:
              <br><br>
              <code class="bg-slate-300 p-2">
                // Un array de 5 enteros<br>
                int[] numeros = new int[5];
                <br><br>
                // Un array de 3 cadenas<br>
                string[] nombres = new string[3]; 
              </code>
              <br><br>
              <strong>Arrays multidimensionales</strong>
              <br><br>
              Son arrays que tienen más de una dimensión y pueden visualizarse como una matriz o un cubo. Los arrays multidimensionales también pueden almacenar elementos de cualquier tipo y se accede a sus elementos utilizando múltiples índices, uno por cada dimensión.
              <br><br>
              Por ejemplo:
              <br><br>
              <code class="bg-slate-300 p-2">
                // Una matriz de 3 filas y 4 columnas
                int[,] matriz = new int[3, 4];
                <br><br>
                // Un cubo de 2x2x2
                <br>
                string[,,] cubo = new string[2, 2, 2]; 
              </code>
              <br><br>
              <strong>Arrays en forma de estrella (jagged arrays)</strong>
              <br><br>
              Son arrays de arrays, donde cada elemento es a su vez un array unidimensional. Estos arrays permiten crear estructuras de datos irregulares, como matrices de diferentes longitudes. Se accede a sus elementos utilizando dos índices: el primero para el array exterior y el segundo para el array interior.
              <br><br>
              Por ejemplo:
              <br><br>
              <code class="bg-slate-300 p-2">
                // Un array de 3 arrays unidimensionales<br>
                int[][] matrizIrregular = new int[3][];
                <br><br>
                // El primer array tiene 4 elementos<br>
                matrizIrregular[0] = new int[4];
                <br><br>
                // El segundo array tiene 2 elementos<br>
                matrizIrregular[1] = new int[2];
                <br><br>
                // El tercer array tiene 5 elementos<br>
                matrizIrregular[2] = new int[5];
              </code>
              <br><br>
              En este ejemplo, hemos creado una matriz irregular que contiene tres arrays unidimensionales de diferentes longitudes. El primer array tiene 4 elementos, el segundo tiene 2 elementos y el tercer array tiene 5 elementos.
            </p>
          </div>

          <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>

          <div class="mt-6">
            <h3 class="text-2xl font-bold tracking-tight text-neutral-950 sm:text-3xl">
              Declaración, creación de Vectores en C#
            </h3>
          </div>


          <div class="flex flex-col gap-4 mt-6">
            <p>
              Un array en C# se declara especificando el tipo de dato de sus elementos seguido de corchetes vacíos y el nombre del array.
              <br><br>
              Para crear un array en C#, se utiliza la palabra clave new seguida del tipo de dato y la cantidad de elementos entre corchetes.
              <br><br>
              Veamos un ejemplo básico:
              <br><br>
              <code class="bg-slate-300 p-2">
                // Declaración de un array de enteros<br>
                int[] numeros;
                // Creación de un array de 5 elementos<br>
                numeros = new int[5]; 
              </code>
              <br><br>
              <strong>Inicialización de Arrays en C#</strong>
              <br><br>
              Existen dos formas de inicializar un array en C#: implícita y explícita.
              <br><br>
              <strong>Inicialización implícita:</strong>
              <br><br>
              La inicialización implícita permite asignar los valores directamente en la declaración del array sin especificar su tamaño. El compilador determina automáticamente el tamaño del array según la cantidad de elementos proporcionados.
              <br><br>
              <code class="bg-slate-300 p-2">
                // Inicialización implícita<br>
                int[] numeros = {1, 2, 3, 4, 5};
              </code>
              <br><br>
              <strong>Inicialización explícita:</strong>
              <br><br>
              En la inicialización explícita, se especifica el tamaño del array y se asignan los valores a cada elemento individualmente. Esto se puede hacer utilizando la notación de corchetes y el índice del elemento.
              
              <br><br>
              <code class="bg-slate-300 p-2">
                // Inicialización explícita<br>
                int[] numeros = new int[5];<br>
                numeros[0] = 1;<br>
                numeros[1] = 2;<br>
                numeros[2] = 3;<br>
                numeros[3] = 4;<br>
                numeros[4] = 5;
              </code>
              <br><br>
              <strong>Asignación de valores a elementos de un array</strong>
              <br><br>
              Para asignar valores a elementos individuales de un array, se utiliza la notación de corchetes junto con el índice del elemento. Es importante recordar que los índices de los arrays en C# comienzan en 0.
              <br><br>
              Por ejemplo:
              <br><br>
              <code class="bg-slate-300 p-2">
                int[] numeros = new int[3];<br>
                numeros[0] = 10;<br>
                numeros[1] = 20;<br>
                numeros[2] = 30;
                <br><br>
                // Inicialización implícita<br>
                string[] palabras = {"hola", "mundo"};
                <br><br>
                // Modificando el segundo elemento del array<br>
                palabras[1] = "C#";
              </code>
              <br><br>
              <strong>Arrays de objetos y estructuras personalizadas</strong>
              <br><br>
              Los arrays en C# también pueden contener objetos de clases o estructuras personalizadas. Por ejemplo, si tenemos una clase llamada Persona, podemos crear un array de objetos Persona de la siguiente manera:
              <br><br>
              <code class="bg-slate-300 p-2">
                class Persona
                {
                    public string Nombre;
                    public int Edad;
                }
                <br><br>
                // Declaración y creación de un array de objetos Persona<br>
                Persona[] personas = new Persona[3];
                <br><br>
                // Inicializando objetos en el array<br>
                personas[0] = new Persona {Nombre = "Ana", Edad = 30};<br>
                personas[1] = new Persona {Nombre = "Juan", Edad = 25};<br>
                personas[2] = new Persona {Nombre = "Laura", Edad = 28};
              </code>
              <br><br>
              Recuerda que, al tratarse de objetos, es necesario inicializar cada elemento del array para evitar errores en tiempo de ejecución al intentar acceder a elementos no inicializados.
            </p>
          </div>

          <div class="mt-4 h-[2px] bg-slate-500/70 rounded w-full"></div>
 
        </div>
      </div>
    </div>
  </div>
</div>


</asp:Content>
