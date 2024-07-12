package com.esca.forohub.usuario;

import com.esca.forohub.perfil.Perfil;
import com.esca.forohub.topico.Topico;
import jakarta.persistence.*;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Table(name= "usuarios")
@Entity(name = "Usuario")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = "id")
public class Usuario implements UserDetails
{
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;
    private String nombreUsuario;
    private String correo;
    private String contrasena;
    @OneToMany(mappedBy = "autor", cascade = CascadeType.ALL)
    private List<Topico> topicos = new ArrayList<>();
    @OneToMany(mappedBy = "id", fetch = FetchType.LAZY)
    private List <Perfil> perfil;

    public Usuario(DatosRegistroUsuario datosRegistroUsuario)
    {
        nombreUsuario = datosRegistroUsuario.nombre();
        correo = datosRegistroUsuario.correo();
        contrasena = datosRegistroUsuario.contrasena();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities()
    {
        return List.of(new SimpleGrantedAuthority("ROLE_USER"));
    }

    @Override
    public String getPassword()
    {
        return contrasena;
    }

    @Override
    public String getUsername()
    {
        return nombreUsuario;
    }

    @Override
    public boolean isAccountNonExpired()
    {
        return true;
    }

    @Override
    public boolean isAccountNonLocked()
    {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired()
    {
        return true;
    }

    @Override
    public boolean isEnabled()
    {
        return true;
    }
}