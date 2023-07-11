
using System.Data.SqlClient;
using Dapper;

public static class BD
{
    private static string ConnectionString { get; set; } = @"Server=localhost;DataBase=Elecciones2023;Trusted_Connection=True;";
 public static void agregarCandidato(Candidato can)
 {
    string Sql = "INSERT INTO Candidat(idPartido,apellido,nombre,fechaNacimiento,foto,postulacion) VALUES (@pidPartidos,@papellido,@pnombre,@pfechaNacimiento,@pfoto,@ppostulacion)";
    using(SqlConnection db = new SqlConnection(ConnectionString))
    {
        db.Execute(Sql,new{pidPartidos= can.idPartido,papellido = can.apellido,pnombre = can.nombre,pfechaNacimiento = can.fechaNacimiento,pfoto = can.foto,ppostulacion = can.Postulacion});
    }
 }

 public static void EliminarCandidato(int idCandidato)
 {
    int RegistroEliminado = 0;
    string Sql = "DELETE FROM Candidat where idCandidatos = @pidCandidatos";
    using(SqlConnection db = new SqlConnection(ConnectionString))
    {
        RegistroEliminado = db.Execute(Sql,new{pidCandidatos = idCandidato});
    }
 }


 public static Partido verInfoPartido(int idPartido)
 {
    Partido par = null;
    using(SqlConnection db = new SqlConnection(ConnectionString))
    {
        string sql= "Select * from Partidos where idPartido = @pidPartidos";
        par = db.QueryFirstOrDefault<Partido>(sql,new{pidPartidos = idPartido});
    }
    return par;
 } 


public static Candidato verInfoCandidato(int idCandidato)
{
    Candidato can = null;
    using(SqlConnection db = new SqlConnection(ConnectionString))
    {
        string sql = "Select * from Candidat where idCandidatos = @pidCandidatos";
        can = db.QueryFirstOrDefault<Candidato>(sql,new{pidCandidatos = idCandidato});
    }
    return can;
}         

public static List<Partido> ListarPartidos()
{
    List<Partido> par = new List<Partido>();
    using(SqlConnection db = new SqlConnection(ConnectionString))
    {
        string sql = "Select * from Partidos"; 
        par = db.Query<Partido>(sql).ToList();
    }
   return par;
}


public static List<Candidato> ListarCandidatos(int idPartido)
{
    List<Candidato> can = new List<Candidato>();
    using(SqlConnection db = new SqlConnection(ConnectionString))
    {
        string sql = "Select * from Candidat where idPartido = @pidpartido"; 
        can = db.Query<Candidato>(sql,new {pidpartido = idPartido}).ToList();
    }
   return can;
}
}