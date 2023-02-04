// ---------- VALIDAÇÃO USERNAME ---------- //
let usernameInput = document.getElementById("username");
let usernameLabel = document.querySelector('label[for="username"]');
let usernameHelper = document.getElementById("username-helper");
let emailInput = document.getElementById("email");
let emailLabel = document.querySelector("label[for='email']");
let emailHelper = document.getElementById("email-helper");

// Mostrar popup de campo obrigatório

function usernameFocus(input, label) {
  usernameInput.addEventListener("focus", () =>
    usernameLabel.classList.add("required-popup")
  );
}
usernameFocus(usernameInput, usernameLabel)

function emailFocus(input, label) {
  emailInput.addEventListener("focus", () =>
    emailLabel.classList.add("required-popup")
  );
}
emailFocus(emailInput, emailLabel)

// Ocultar popup de campo obrigatório
function usernameBlur(input, label) {
  usernameInput.addEventListener("blur", () =>
    usernameLabel.classList.remove("required-popup")
  );
}
usernameBlur(usernameInput, usernameLabel)

function emailBlur(input, label) {
  emailInput.addEventListener("blur", () =>
    emailLabel.classList.remove("required-popup")
  );
}
emailBlur(emailInput, emailLabel)

// Validar valor do input
function validacaoUsername() {
  usernameInput.addEventListener("change", (e) => {
    let valor = e.target.value;
    console.log(valor);
    if (valor.length < 3) {
      // Estilos dinâmicos caso o valor não seja válido
      usernameInput.classList.add("error");
      usernameInput.classList.remove("correct");
      usernameHelper.innerText = "Deve conter mais que 3 caracteres.";
      usernameHelper.classList.add("visible");
    } else {
      usernameInput.classList.remove("error");
      usernameInput.classList.add("correct");
      usernameHelper.classList.add("");
    }
  });
}

function validacaoUsername() {
  emailInput.addEventListener("change", (e) => {
    let valor = e.target.value;
    console.log(valor);
    if (valor.includes("@") && valor.includes(".com")) {
      // Estilos dinâmicos caso o valor não seja válido
      emailInput.classList.remove("error");
      emailInput.classList.add("correct");
      emailHelper.classList.remove("visible");
    } else {
      emailInput.classList.remove("correct");
      emailInput.classList.add("error");
      emailHelper.innerText = "Deve conter '@' e '.com' no seu preenchimento";
      emailHelper.classList.add("visible");
    }
  });
}
