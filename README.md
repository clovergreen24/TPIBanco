# README

Para tener lista la base de datos se utiliza el comando "rails db:create db:migrate db:seed".
Para iniciar la aplicacion se utiliza el comando "rails s" y los llevara al index de usuarios.

No se llego a implementar correctamente el login por lo que no hay limitaciones de sesion ni permisos. Todas las vistas en este proyecto serian las correspondientes a un usuario admin.

La implementacion de crear turnos tampoco esta terminada.

Tambien faltan varias validaciones, como que los horarios de las sucursales no se pisen entre si, o incluso que sean validos (que start_time no sea menor a end_time)

En cuanto a desiciones de diseño:
    
    -Los horarios se crean a la hora de dar de alta una oficina o cuando se edita una de ellas.

    -Los turnos son generados por las oficinas en base a sus horarios. Hay un turno cada 15 minutos comenzando desde el inicio del horario de atencion. Esto genera el arreglo de turnos disponibles para cada dia de atencion, con motive: "Available". Cuando un cliente seleccione un turno este cambiaria su motivo al que escriba el usuario. Y cuando un empleado lo seleccione para atender, el motive pasaria a "Attended".