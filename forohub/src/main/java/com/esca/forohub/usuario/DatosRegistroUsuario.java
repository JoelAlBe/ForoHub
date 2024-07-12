package com.esca.forohub.usuario;

import com.esca.forohub.perfil.DatosRegistroPerfil;
import jakarta.validation.constraints.NotBlank;

public record DatosRegistroUsuario(
        @NotBlank
        String nombre,
        @NotBlank
        String correo,
        @NotBlank
        String contrasena,
        DatosRegistroPerfil perfil)
{
}