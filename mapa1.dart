void main(){

    print("Reyes Alfonso Ramirez Martinez Mat 22308051281289 gpo 6 J");
    Map<int, String> alumnos = {
        1: "Juan", 
        2: "Pedro", 
        3: "Luis"};
    print("Mapa de alumnos: ");
    print(alumnos);
    print("iterar un mapa con forEach: ");
    alumnos.forEach((key, value){
        print("$key, $value");
    });

    print("iterar un mapa con for in: ");
    for(var key in alumnos.keys){
        print("${alumnos[key]}");
    }
}