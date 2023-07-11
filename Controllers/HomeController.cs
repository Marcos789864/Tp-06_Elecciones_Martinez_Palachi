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
        ViewBag.verInfoPartido = BD.verInfoPartido(idPartido);
        ViewBag.ListarCandidatos = BD.ListarCandidatos(idPartido);
        return View("verDetallePartido");
    }

    public IActionResult verDetalleCandidato(int idCandidato)
    {
        ViewBag.Candidatos = BD.verInfoCandidato(idCandidato);
        return View("verDetalleCandidato");
    }

    public IActionResult agregarCandidato(int idPartido)
    {
        ViewBag.idpar = idPartido;
        return View("AgregarCandidato");
    }

    [HttpPost]

    public IActionResult guardarCandidato(Candidato can)
    {
        BD.agregarCandidato(can);
        return RedirectToAction("verDetallePartido", new{idPartido = can.idPartido});
    }

    public IActionResult eliminarCandidato(int idCandidato, int idPartido)
    {   
        BD.EliminarCandidato(idCandidato);
        return RedirectToAction("verDetallePartido",new{idPartido = idPartido});
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
