Global Integer i
' Movimiento intercalado de huevo 1 y huevo 2

Function main
    Motor On
    Power High
    Accel 100, 100 ' 100%
    Speed 100       ' 100%
    Home

    On Out_9
    Call Paletizado_01

Fend

Function Paletizado_01
    ' Movimiento intercalado: P2.2 salto -> P1 salto -> P2.2 salto -> P1 salto ...

    '======================
    ' Pares P2.2  (cada par: A -> B)
    ' (30,17),(17,28),(28,24),(24,11),(11,22),(22,26),(26,13),(13,21),
    ' (21,29),(29,16),(16,12),(12,23),(23,27),(27,14),(14,25),(25,21),
    ' (21,8),(8,16),(16,27),(27,19),(19,15),(15,7),(7,20),(20,9),
    ' (9,13),(13,2),(2,15),(15,4),(4,17),(17,6),(6,10),(10,18),
    ' (18,5),(5,16),(16,3),(3,14),(14,1)
    '
    ' Pares P1
    ' (1,14),(14,3),(3,16),(16,5),(5,18),(18,10),(10,6),(6,17),
    ' (17,4),(4,15),(15,2),(2,13),(13,9),(9,20),(20,7),(7,15),
    ' (15,19),(19,15),(15,4),(4,8),(8,21),(21,25),(25,14),(14,27),
    ' (27,23),(23,12),(12,16),(16,29),(29,21),(21,13),(13,26),(26,22),
    ' (22,11),(11,24),(24,28),(28,17),(17,30)
    '======================

    ' Intercalado: comenzar con P2.2 (30->17), luego P1 (1->14), etc.

    ' --- 1
    Jump Punto30
    Off Out_9
    Jump Punto17
    On Out_9

    Jump Origen
    Off Out_9
    Jump Punto14
    On Out_9

    ' --- 2
    Jump Punto17
    Off Out_9
    Jump Punto28
    On Out_9

    Jump Punto14
    Off Out_9
    Jump Punto3
    On Out_9

    ' --- 3
    Jump Punto28
    Off Out_9
    Jump Punto24
    On Out_9

    Jump Punto3
    Off Out_9
    Jump Punto16
    On Out_9

    ' --- 4
    Jump Punto24
    Off Out_9
    Jump Punto11
    On Out_9

    Jump Punto16
    Off Out_9
    Jump Punto5
    On Out_9

    ' --- 5
    Jump Punto11
    Off Out_9
    Jump Punto22
    On Out_9

    Jump Punto5
    Off Out_9
    Jump Punto18
    On Out_9

    ' --- 6
    Jump Punto22
    Off Out_9
    Jump Punto26
    On Out_9

    Jump Punto18
    Off Out_9
    Jump Punto10
    On Out_9

    ' --- 7
    Jump Punto26
    Off Out_9
    Jump Punto13
    On Out_9

    Jump Punto10
    Off Out_9
    Jump Punto6
    On Out_9

    ' --- 8
    Jump Punto13
    Off Out_9
    Jump Punto21
    On Out_9

    Jump Punto6
    Off Out_9
    Jump Punto17
    On Out_9

    ' --- 9
    Jump Punto21
    Off Out_9
    Jump Punto29
    On Out_9

    Jump Punto17
    Off Out_9
    Jump Punto4
    On Out_9

    ' --- 10
    Jump Punto29
    Off Out_9
    Jump Punto16
    On Out_9

    Jump Punto4
    Off Out_9
    Jump Punto15
    On Out_9

    ' --- 11
    Jump Punto16
    Off Out_9
    Jump Punto12
    On Out_9

    Jump Punto15
    Off Out_9
    Jump Punto2
    On Out_9

    ' --- 12
    Jump Punto12
    Off Out_9
    Jump Punto23
    On Out_9

    Jump Punto2
    Off Out_9
    Jump Punto13
    On Out_9

    ' --- 13
    Jump Punto23
    Off Out_9
    Jump Punto27
    On Out_9

    Jump Punto13
    Off Out_9
    Jump Punto9
    On Out_9

    ' --- 14
    Jump Punto27
    Off Out_9
    Jump Punto14
    On Out_9

    Jump Punto9
    Off Out_9
    Jump Punto20
    On Out_9

    ' --- 15
    Jump Punto14
    Off Out_9
    Jump Punto25
    On Out_9

    Jump Punto20
    Off Out_9
    Jump Punto7
    On Out_9

    ' --- 16
    Jump Punto25
    Off Out_9
    Jump Punto21
    On Out_9

    Jump Punto7
    Off Out_9
    Jump Punto15
    On Out_9

    ' --- 17
    Jump Punto21
    Off Out_9
    Jump Punto8
    On Out_9

    Jump Punto15
    Off Out_9
    Jump Punto19
    On Out_9

    ' --- 18
    Jump Punto8
    Off Out_9
    Jump Punto16
    On Out_9

    Jump Punto19
    Off Out_9
    Jump Punto15
    On Out_9

    ' --- 19
    Jump Punto16
    Off Out_9
    Jump Punto27
    On Out_9

    Jump Punto15
    Off Out_9
    Jump Punto4
    On Out_9

    ' --- 20
    Jump Punto27
    Off Out_9
    Jump Punto19
    On Out_9

    Jump Punto4
    Off Out_9
    Jump Punto8
    On Out_9

    ' --- 21
    Jump Punto19
    Off Out_9
    Jump Punto15
    On Out_9

    Jump Punto8
    Off Out_9
    Jump Punto21
    On Out_9

    ' --- 22
    Jump Punto15
    Off Out_9
    Jump Punto7
    On Out_9

    Jump Punto21
    Off Out_9
    Jump Punto25
    On Out_9

    ' --- 23
    Jump Punto7
    Off Out_9
    Jump Punto20
    On Out_9

    Jump Punto25
    Off Out_9
    Jump Punto14
    On Out_9

    ' --- 24
    Jump Punto20
    Off Out_9
    Jump Punto9
    On Out_9

    Jump Punto14
    Off Out_9
    Jump Punto27
    On Out_9

    ' --- 25
    Jump Punto9
    Off Out_9
    Jump Punto13
    On Out_9

    Jump Punto27
    Off Out_9
    Jump Punto23
    On Out_9

    ' --- 26
    Jump Punto13
    Off Out_9
    Jump Punto2
    On Out_9

    Jump Punto23
    Off Out_9
    Jump Punto12
    On Out_9

    ' --- 27
    Jump Punto2
    Off Out_9
    Jump Punto15
    On Out_9

    Jump Punto12
    Off Out_9
    Jump Punto16
    On Out_9

    ' --- 28
    Jump Punto15
    Off Out_9
    Jump Punto4
    On Out_9

    Jump Punto16
    Off Out_9
    Jump Punto29
    On Out_9

    ' --- 29
    Jump Punto4
    Off Out_9
    Jump Punto17
    On Out_9

    Jump Punto29
    Off Out_9
    Jump Punto21
    On Out_9

    ' --- 30
    Jump Punto17
    Off Out_9
    Jump Punto6
    On Out_9

    Jump Punto21
    Off Out_9
    Jump Punto13
    On Out_9

    ' --- 31
    Jump Punto6
    Off Out_9
    Jump Punto10
    On Out_9

    Jump Punto13
    Off Out_9
    Jump Punto26
    On Out_9

    ' --- 32
    Jump Punto10
    Off Out_9
    Jump Punto18
    On Out_9

    Jump Punto26
    Off Out_9
    Jump Punto22
    On Out_9

    ' --- 33
    Jump Punto18
    Off Out_9
    Jump Punto5
    On Out_9

    Jump Punto22
    Off Out_9
    Jump Punto11
    On Out_9

    ' --- 34
    Jump Punto5
    Off Out_9
    Jump Punto16
    On Out_9

    Jump Punto11
    Off Out_9
    Jump Punto24
    On Out_9

    ' --- 35
    Jump Punto16
    Off Out_9
    Jump Punto3
    On Out_9

    Jump Punto24
    Off Out_9
    Jump Punto28
    On Out_9

    ' --- 36
    Jump Punto3
    Off Out_9
    Jump Punto14
    On Out_9

    Jump Punto28
    Off Out_9
    Jump Punto17
    On Out_9

    ' --- 37 (último)
    Jump Punto14
    Off Out_9
    Jump Origen
    On Out_9

    Jump Punto17
    Off Out_9
    Jump Punto30
    On Out_9

    ' Fin de secuencia intercalada
Fend

