<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Cadastro.aspx.vb" Inherits="PipoSaude.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@800&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500;800&display=swap');

        img {
            margin: 20px 0;
        }

        .tituloBranco {
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            font-size: 24px;
            color: #fff;
        }

        .tituloPreto {
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            font-size: 24px;
            color: #333333;
        }

        .modal-header {
            border-bottom: 1px solid #ffd9e9;
        }

        #progressbar {
            margin-bottom: 30px;
            overflow: hidden;
            counter-reset: step;
            padding-right: 2rem;
        }

            #progressbar li {
                text-align: center;
                list-style-type: none;
                color: #ff75af;
                text-transform: uppercase;
                font-size: 12px;
                font-family: 'Poppins', sans-serif;
                font-weight: 500;
                width: 12%;
                float: left;
                position: relative;
            }

                #progressbar li:before {
                    content: counter(step);
                    counter-increment: step;
                    width: 20px;
                    line-height: 20px;
                    display: block;
                    font-size: 10px;
                    color: white;
                    background: #ff75af;
                    border-radius: 3px;
                    margin: 0 auto 5px auto;
                }

                #progressbar li:after {
                    content: '';
                    width: 100%;
                    height: 2px;
                    background: #ff75af;
                    position: absolute;
                    left: -50%;
                    top: 9px;
                    z-index: -1;
                }

                #progressbar li:first-child:after {
                    content: none;
                }

                #progressbar li.active:before, #progressbar li.active:after {
                    background: #1139b0;
                    color: white;
                }

        .form-control {
            border: 1px solid #ffd9e9;
        }

        .msform1 {
            width: 40%;
            margin: 25px auto;
            text-align: center;
            position: relative;
        }

            .msform1 fieldset {
                background: #1139b0;
                border: 0 none;
                border-radius: 3px;
                box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
                padding: 20px 20px;
                box-sizing: border-box;
                width: 80%;
                margin: 0 10%;
            }

                .msform1 fieldset:not(:first-of-type) {
                    display: none;
                }

            .msform1 input, .msform1 textarea {
                border: 1px solid #ffd9e9;
                border-radius: 3px;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
                font-weight: 500;
                color: #ffd9e9;
                font-size: 13px;
            }


        .msform2 {
            width: 40%;
            margin: 25px auto;
            text-align: center;
            position: relative;
        }

            .msform2 fieldset {
                background: #fff;
                border: 0 none;
                border-radius: 3px;
                box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
                padding: 20px 20px;
                box-sizing: border-box;
                width: 80%;
                margin: 0 10%;
            }

                .msform2 fieldset:not(:first-of-type) {
                    display: none;
                }

            .msform2 input, .msform2 textarea {
                border: 1px solid #ffd9e9;
                border-radius: 3px;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
                font-weight: 500;
                color: #1139b0;
                font-size: 13px;
                margin: 10px 0;
            }

        .divSelecaoEmpresa {
            margin: 20px 0 0 20px;
        }

        .empresa, .plano {
            display: flex;
            flex-direction: row;
            font-family: 'Poppins', sans-serif;
            color: #fff;
            font-size: 16px;
            align-items: baseline;
        }

        .dado {
            display: flex;
            flex-direction: row;
            font-family: 'Poppins', sans-serif;
            color: #333333;
            font-size: 14px;
            align-items: baseline;
            margin: 10px;
        }

        #btnAdicionarNovaEmpresa {
            color: #ffd9e9;
            text-decoration: underline;
            font-family: 'Poppins', sans-serif;
            font-size: 14px;
            margin-top: 20px;
        }

        .btn {
            width: 100px;
            background: #ffd9e9;
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            color: #1139b0;
            border: 0 none;
            border-radius: 5px;
            cursor: pointer;
            padding: 5px;
            margin: 20px 5px;
            align-self: center;
        }

            .btn:hover, .btn:focus {
                box-shadow: 0 0 0 2px white, 0 0 0 3px #ff75af;
            }

        #identificacaoDoFuncionario {
            display: flex;
            font-family: 'Poppins', sans-serif;
            font-weight: 500;
            font-size: 16px;
            color: #1139b0;
        }

        p {
            font-family: 'Poppins', sans-serif;
            font-weight: 500;
            font-size: 14px;
            color: #333333;
            margin: 10px;
        }
    </style>

    <form id="form" runat="server">
        <center id="logo">
            <img src="Imagens/logo.jpg" />
        </center>

        <%-----1ª Etapa: Escolher a empresa do colaborador-----%>
        <div class="msform1">
            <fieldset>
                <h4 class="tituloBranco">Empresa</h4>
                <div class="form-floating">
                    <div class="divSelecaoEmpresa">
                        <div class="empresa">
                            <input id="empresaAcmeCo" name="empresa" type="radio" value="AcmeCo" runat="server" />
                            <asp:Label ID="lblAcmeCo" runat="server" Text="Acme Co" AssociatedControlID="empresaAcmeCo"></asp:Label>
                        </div>
                        <div class="empresa">
                            <input id="empresaTioPatinhasBank" name="empresa" type="radio" value="TioPatinhasBank" runat="server" />
                            <asp:Label ID="lblTioPatinhasBank" runat="server" Text="Tio Patinhas Bank" AssociatedControlID="empresaTioPatinhasBank"></asp:Label>
                        </div>
                    </div>
                    <button type="button" class="btn btnCadastrarEmpresa btn-sm" id="btnCadastrarEmpresa" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#novaEmpresa">Cadastrar</button>
                </div>
            </fieldset>
        </div>

        <%-----Modal de inclusão de nova empresa-----%>
        <div class="modal fade" id="novaEmpresa" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title tituloPreto" font-bold="true">Incluir nova empresa </h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <asp:TextBox ID="txtNovaEmpresa" type="text" runat="server" class="form-control" placeholder="Digite o nome da empresa" />
                    </div>
                    <%--<input id="btnEnviarEmail" type="button" value="Enviar E-mail" class="btn btnEnviarEmail mb-3 btn-sm" />--%>
                    <button type="button" class="btn btnIncluirEmpresa btn-sm" id="btnIncluirEmpresa" data-bs-dismiss="modal">Incluir</button>
                </div>
            </div>
        </div>

        <%-----2ª Etapa: Identificação do funcionário-----%>
        <div class="msform2">
            <fieldset>
                <h4 class="form-floating mb-3 tituloPreto">Identificação do funcionário</h4>
                <div id="identificacaoDoFuncionario">
                    <input type="text" class="form-control txtCPF" placeholder="Digite o CPF do funcionário" />
                </div>
            </fieldset>
        </div>

        <%-----3ª Etapa: Escolha dos planos-----%>
        <div class="msform1">
            <fieldset>
                <h4 class="form-floating mb-3 tituloBranco">Planos</h4>
                    <%--<div id="divFormTioPatinhasBank">
                        <div class="plano">
                            <input class="teste" id="planoPampulhaIntermedica" name="plano" type="checkbox" value="PampulhaIntermedica" runat="server" />
                            <asp:Label ID="lblPampulhaIntermedica" runat="server" Text="Plano de Saúde Pampulha Intermédica " AssociatedControlID="planoPampulhaIntermedica"></asp:Label>
                        </div>
                        <div class="plano">
                            <input class="teste" id="planoMenteSaCorpoSao" name="plano" type="checkbox" value="MenteSaCorpoSao" runat="server" />
                            <asp:Label ID="lblMenteSaCorpoSao" runat="server" Text="Plano de Saúde Mente Sã, Corpo São" AssociatedControlID="planoMenteSaCorpoSao"></asp:Label>
                        </div>
                        <div class="plano">
                            <input class="teste" id="planoDentalSorriso1" name="plano" type="checkbox" value="DentalSorriso" runat="server" />
                            <asp:Label ID="lblDetalSorriso1" runat="server" Text="Plano Dental Sorriso" AssociatedControlID="planoDentalSorriso1"></asp:Label>
                        </div>
                    </div>

                    <div id="divFormAcmeCo">
                        <div class="plano">
                            <input id="planoNorteEuropa" name="plano" type="checkbox" value="NorteEuropa" runat="server" />
                            <asp:Label ID="lblNorteEuropa" runat="server" Text="Plano de Saúde Norte Europa " AssociatedControlID="planoNorteEuropa"></asp:Label>
                        </div>
                        <div class="plano">
                            <input id="planoDentalSorriso2" name="plano" type="checkbox" value="DentalSorriso" runat="server" />
                            <asp:Label ID="lblDentalSorriso2" runat="server" Text="Plano Dental Sorriso" AssociatedControlID="planoDentalSorriso2"></asp:Label>
                        </div>
                    </div>--%>


                <div class="accordion" id="accordionPanelsStayOpenExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                            <button class="accordion-button" id="planoPampulhaIntermedica" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">Plano de Saúde Pampulha Intermédica</button>
                        </h2>
                        <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
                            <div class="accordion-body">
                                <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                                Accordion Item #2
                            </button>
                        </h2>
                        <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
                            <div class="accordion-body">
                                <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                                Accordion Item #3
                            </button>
                        </h2>
                        <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                            <div class="accordion-body">
                                <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                            </div>
                        </div>
                    </div>
                </div>


                <button type="button" class="btn btnCadastrarPlano btn-sm" id="btnCadastrarPlano" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#cadastrarNovoPlano">Cadastrar</button>
                <button type="button" class="btn btnAlterarPlano btn-sm" id="btnAlterarPlano" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#alterarPlano">Alterar</button>
                <button type="button" class="btn btnRemoverPlano btn-sm" id="btnRemoverPlano" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#removerPlano">Remover</button>
            </fieldset>
        </div>

        <%-----Modal de cadastro de novo plano-----%>
        <div class="modal fade" id="cadastrarNovoPlano" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title tituloPreto" font-bold="true">Cadastrar novo plano </h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <asp:TextBox ID="txtNovoPlano" type="text" runat="server" class="form-control" placeholder="Digite o nome do plano" />
                        <p>Escolha os dados necessários para o cadastro: </p>
                        <div class="divSelecaoDados">
                            <div class="dado">
                                <input id="dadoNome" name="dado" type="checkbox" value="Nome" runat="server" />
                                <asp:Label ID="lblDadoNome" runat="server" Text="Nome " AssociatedControlID="dadoNome"></asp:Label>
                            </div>
                            <div class="dado">
                                <input id="dadoDataDeAdmissao" name="dado" type="checkbox" value="DataDeAdimissao" runat="server" />
                                <asp:Label ID="lblDadoDataDeAdmissao" runat="server" Text="Data de admissao" AssociatedControlID="dadoDataDeAdmissao"></asp:Label>
                            </div>
                            <div class="dado">
                                <input id="dadoEmail" name="dado" type="checkbox" value="Email" runat="server" />
                                <asp:Label ID="lblEmail" runat="server" Text="E-mail" AssociatedControlID="dadoEmail"></asp:Label>
                            </div>
                            <div class="dado">
                                <input id="dadoPeso" name="dado" type="checkbox" value="Peso" runat="server" />
                                <asp:Label ID="lblPeso" runat="server" Text="Peso" AssociatedControlID="dadoPeso"></asp:Label>
                            </div>
                            <div class="dado">
                                <input id="dadoAltura" name="dado" type="checkbox" value="Altura" runat="server" />
                                <asp:Label ID="lblAltura" runat="server" Text="Altura" AssociatedControlID="dadoAltura"></asp:Label>
                            </div>
                            <div class="dado">
                                <input id="dadoEndereco" name="dado" type="checkbox" value="Endereco" runat="server" />
                                <asp:Label ID="lblEndereco" runat="server" Text="Endereço" AssociatedControlID="dadoEndereco"></asp:Label>
                            </div>
                            <div class="dado">
                                <input id="dadoHorasMeditadas" name="dado" type="checkbox" value="HorasMeditadas" runat="server" />
                                <asp:Label ID="lblHorasMeditadas" runat="server" Text="Horas meditadas nos últimos 7 dias" AssociatedControlID="dadoHorasMeditadas"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btnIncluirPlano btn-sm" id="btnIncluirPlano" data-bs-dismiss="modal">OK</button>
                </div>
            </div>
        </div>
        <%-----Modal de alteração de plano-----%>
        <div class="modal fade" id="alterarPlano" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title tituloPreto" font-bold="true">Alterar plano </h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Escolha o plano a ser alterado:</p>
                        <div class="divSelecaoPlanosAlteracao">
                            <div class="alteracao">
                                <input id="alteracaoNorteEuropa" name="alteracao" type="checkbox" value="NorteEuropa" runat="server" />
                                <asp:Label ID="lblAlteracaoNorteEuropa" runat="server" Text="Plano de Saúde Norte Europa " AssociatedControlID="alteracaoNorteEuropa"></asp:Label>
                            </div>
                            <div class="alteracao">
                                <input id="alteracaoPampulhaIntermedica" name="alteracao" type="checkbox" value="PampulhaIntermedica" runat="server" />
                                <asp:Label ID="lblAlteracaoPampulhaIntermedica" runat="server" Text="Plano de Saúde Pampulha Intermédica " AssociatedControlID="alteracaoPampulhaIntermedica"></asp:Label>
                            </div>
                            <div class="alteracao">
                                <input id="alteracaoMenteSaCorpoSao" name="alteracao" type="checkbox" value="MenteSaCorpoSao" runat="server" />
                                <asp:Label ID="lblAlteracaoMenteSaCorpoSao" runat="server" Text="Plano de Saúde Mente Sã, Corpo São" AssociatedControlID="alteracaoMenteSaCorpoSao"></asp:Label>
                            </div>
                            <div class="alteracao">
                                <input id="alteracaoDentalSorriso" name="alteracao" type="checkbox" value="DentalSorriso" runat="server" />
                                <asp:Label ID="lblAlteracaoDentalSorriso" runat="server" Text="Plano Dental Sorriso" AssociatedControlID="alteracaoDentalSorriso"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btnRemoverPlano btn-sm" id="btnRemoverPlanos" data-bs-dismiss="modal">Ok</button>
                </div>
            </div>
        </div>

        <%-----Modal de exclusão de plano-----%>
        <div class="modal fade" id="removerPlano" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title tituloPreto" font-bold="true">Remover plano </h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Escolha o plano a ser removido:</p>
                        <div class="divSelecaoPlanosAlteracao">
                            <div class="remocao">
                                <input id="remocaoNorteEuropa" name="remocao" type="checkbox" value="NorteEuropa" runat="server" />
                                <asp:Label ID="lblRemocaoNorteEuropa" runat="server" Text="Plano de Saúde Norte Europa " AssociatedControlID="remocaoNorteEuropa"></asp:Label>
                            </div>
                            <div class="remocao">
                                <input id="remocaoPampulhaIntermedica" name="remocao" type="checkbox" value="PampulhaIntermedica" runat="server" />
                                <asp:Label ID="lblRemocaoPampulhaIntermedica" runat="server" Text="Plano de Saúde Pampulha Intermédica " AssociatedControlID="remocaoPampulhaIntermedica"></asp:Label>
                            </div>
                            <div class="remocao">
                                <input id="remocaoMenteSaCorpoSao" name="remocao" type="checkbox" value="MenteSaCorpoSao" runat="server" />
                                <asp:Label ID="lblRemocaoMenteSaCorpoSao" runat="server" Text="Plano de Saúde Mente Sã, Corpo São" AssociatedControlID="remocaoMenteSaCorpoSao"></asp:Label>
                            </div>
                            <div class="remocao">
                                <input id="remocaoDentalSorriso" name="remocao" type="checkbox" value="DentalSorriso" runat="server" />
                                <asp:Label ID="lblRemocaoDentalSorriso" runat="server" Text="Plano Dental Sorriso" AssociatedControlID="remocaoDentalSorriso"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btnAlterarPlano btn-sm" id="btnAlterarPlanos" data-bs-dismiss="modal">Ok</button>
                </div>
            </div>
        </div>

        <%-----4ª Etapa: Cadastro-----%>
        <div class="msform2">
            <fieldset>
                <h4 class="form-floating mb-3 tituloPreto">Cadastro</h4>
                <div id="cadastro">
                    <div id="divFormNorteEuropa">
                        <div>
                            <input type="text" class="form-control txtNome" placeholder="Digite o NOME do funcionário" />
                        </div>
                        <div>
                            <input type="text" class="form-control txtDataDeAdmissao" placeholder="Digite a DATA DE ADMISSÃO do funcionário" />
                        </div>
                        <div>
                            <input type="text" class="form-control txtEmail" placeholder="Digite o E-MAIL do funcionário" />
                        </div>
                    </div>
                    <div id="divFormPampulhaIntermedica">
                        <div>
                            <input type="text" class="form-control txtNome" placeholder="Digite o NOME do funcionário" />
                        </div>
                        <div>
                            <input type="text" class="form-control txtDataDeAdmissao" placeholder="Digite a DATA DE ADMISSÃO do funcionário" />
                        </div>
                        <div>
                            <input type="text" class="form-control txtEndereço" placeholder="Digite o ENDEREÇO do funcionário" />
                        </div>
                    </div>
                    <div id="divFormMenteSaCorpoSao">
                        <div>
                            <input type="text" class="form-control txtHorasMeditadas" placeholder="Digite as HORAS MEDITADAS NOS ULTIMOS 7 DIAS do funcionário" />
                        </div>
                    </div>
                    <div id="divFormDentalSorriso">
                        <div>
                            <input type="text" class="form-control txtNome" placeholder="Digite o NOME do funcionário" />
                        </div>
                        <div>
                            <input type="text" class="form-control txtPeso" placeholder="Digite o PESO do funcionário" />
                        </div>
                        <div>
                            <input type="text" class="form-control txtAltura" placeholder="Digite a ALTURA do funcionário" />
                        </div>
                    </div>      
                </div>
            </fieldset>
        </div>



    </form>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script>

    $(document).ready(async function () {

        let divFormAcmeCo = $('#divFormAcmeCo');
        let divFormTioPatinhasBank = $('#divFormTioPatinhasBank');

        $('[id*="empresa"]').change(function () {

            console.log($(this).val());
            if ($(this).val() === 'AcmeCo') {

                divFormAcmeCo.show();
                divFormTioPatinhasBank.hide();
                divFormTioPatinhasBank.find('input').val('');

            }
            else {

                divFormTioPatinhasBank.show();
                divFormAcmeCo.hide();
                divFormAcmeCo.find('input').val('');

            }
        });
    });

</script>
