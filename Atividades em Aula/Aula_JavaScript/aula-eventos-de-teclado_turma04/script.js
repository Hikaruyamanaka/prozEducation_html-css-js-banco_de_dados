const linkPerfil = document.getElementById("link-perfil");
const navPerfil = document.getElementById("nav-perfil");

linkPerfil.addEventListener("mouseover", () => {
  navPerfil.style.display = "block";
});

// window.addEventListener("keyup", (e) => {
//   console.log(e.key);
//   console.log(e.code);
//   if (e.code == "Digit1") {
//     console.log("Abre o menu de perfil");
//     navPerfil.style.display = "block";
//   } else if (e.key == "Escape") {
//     navPerfil.style.display = "none";
//   }
// });


window.addEventListener("keyup", (e) => {
  console.log(e.key);
  console.log(e.code);
  if (navPerfil.style.display == "block") {
    //Caso a navegação secundária esteja visível...
    //Navegar para a respectiba página
    
    if (e.code == "Digit1") {
      linkPerfilDados.click();
    } else if (e.key == "Escape") {
      navPerfil.style.display = "none";
    }
  } else if (e.code == "Digit1") {
    //Caso a navegação secundária Não esteja visível...
    //Mudar o dosplay dela para block
    console.log("Abre o menu de perfil");
    navPerfil.style.display = "block";
  }
});


const linkPerfilDados = document.getElementById("link-perfil-dados");

indow.addEventListener("keyup", (e) => {
  console.log(e.key);
  console.log(e.code);
  if (e.code == "Backspace" || "Escape") {
    
  }
})









// window.addEventListener("keyup", (e) => {
  //   console.log(e.key);
//   console.log(e.code);
//   if (e.code == "Digit2") {
//     console.log("Abre o menu de postagens");
//     navPostagens.style.display = "block";
//   } else if (e.key == "Escape") {
//     navPerfil.style.display = "none";
//   }
// });

// window.addEventListener("keyup", (e) => {
//   console.log(e.key);
//   console.log(e.code);
//   if (e.code == "Digit3") {
//     console.log("Abre o menu de meus contatos");
//     navMeusContatos.style.display = "block";
//   } else if (e.key == "Escape") {
//     navPerfil.style.display = "none";
//   }
// });
