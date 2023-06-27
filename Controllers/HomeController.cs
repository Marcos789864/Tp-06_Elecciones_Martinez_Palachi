using Microsoft.AspNetCore.Mvc;

namespace TP06.Controllers;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        ViewBag.ListPartidos = BD.ListarPartidos();
        return View();
    }

    public IActionResult verDetallePartido(int idPartido)
    {
        ViewBag.ListarPartidos = BD.ListarPartidos();
        ViewBag.ListarCandidatos = BD.ListarCandidatos(idPartido);
        return View("verDetallePartido");
    }

    public IActionResult verDetalleCandidato(int idCandidato)
    {
        ViewBag.ListarCandidatos = BD.ListarCandidatos(idCandidato);
        return View("verDetalleCandidato");
    }

    public IActionResult agreagarCandidato(int idPartido)
    {
        ViewBag.idpar = idPartido;
        return View("agreagarCandidato");
    }

    [HttpPost]

    public IActionResult guardarCandidato(Candidato can)
    {
        BD.agregarCandidato(can);
        return View("verDetallePartido");
    }

    public IActionResult eliminarCandidato(int idCandidato, int idPartido)
    {   
        BD.EliminarCandidato(idCandidato);
        return View("verDetallePartido");
    }

    public IActionResult elecciones()
    {
        return View("Elecciones");
    }

    public IActionResult creditos()
    {
        return View("Nosotros");
    }

}
