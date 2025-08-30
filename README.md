#README
Este README es un instructivo para cargar un archivo ara cargar archivos .tab y ver la venta total.

Requisitos para empezar :

* WSL

* Ruby 3.2.2

* Rails 8.0.2.1

* PostgreSQL

* Bundler

 Instalación 

* clonar el repositorio: 

-bash 
   git clone https://github.com/metalfil/CodeChallengeRoR.git
   cd CodeChallengeRoR

-bash
   bundle install
   rails db:create
   rails db:migrate
   bin/rails server

Abrir en el navegardor http://localhost:3000

Presionar el botón Choose File
Seleccionar el archivo separado por tab
Presionar el botón Cargar CSV
Verás el resultado en la pantalla.
