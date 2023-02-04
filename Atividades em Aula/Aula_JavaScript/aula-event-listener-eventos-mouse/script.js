let quantidadeSubtotal = document.getElementById("quantidade-subtotal");
let valorSubtotal = document.getElementById("valor-subtotal");

let subtotalInfo = {
  quantidade: 1,
  valor: 11.66,
};

quantidadeSubtotal.innerText = subtotalInfo.quantidade + " itens";
valorSubtotal.innerText = subtotalInfo.valor;

// ----------- Variaveis / Dados ---------- //

let btnAdicionarProduto01 = document.querySelector("#btn-adicionar-produto-01");
let btnRemoverProduto01 = document.querySelector("#btn-subtrair-produto-01");
let quantidadeProduto01 = document.querySelector("#quantidade-produto-01");

// -------- FUNÇÕES  --------- ///

function atualizarSubtotal() {
  quantidadeSubtotal.innerText = subtotalInfo.quantidade + " itens";
  valorSubtotal.innerText = subtotalInfo.valor;
}

function adicionarUm() {
  //manipular input(adicionar)
  quantidadeProduto01.value = Number(quantidadeProduto01.value) + 1;

  //manipular quantidade no subtotalInfo
  subtotalInfo.quantidade = subtotalInfo.quantidade + 1;

  //atualizar o DOM
  atualizarSubtotal();
}

function removerUm() {
  if (Number(quantidadeProduto01.value) > 0) {
    quantidadeProduto01.value = Number(quantidadeProduto01.value) - 1;
  }

  if (Number(subtotalInfo.quantidade) > 0) {
    subtotalInfo.quantidade = Number(subtotalInfo.quantidade) - 1;
  }

  atualizarSubtotal();
}

console.log(typeof quantidadeProduto01.value);

// ------- EVENTOS ------ ///
btnAdicionarProduto01.addEventListener("click", adicionarUm);
btnRemoverProduto01.addEventListener("click", removerUm);
