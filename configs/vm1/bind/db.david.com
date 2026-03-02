$TTL 86400
@   IN  SOA maestro.empresa.local. admin.empresa.local. (
        2026030101 ; Serial (súbelo cuando cambies)
        3600
        1800
        604800
        86400 )

@       IN  NS  maestro.empresa.local.
@       IN  NS  esclavo.empresa.local.

; A del host "parcial" apuntando al servidor web (VM1)
parcial IN  A   192.168.56.10
