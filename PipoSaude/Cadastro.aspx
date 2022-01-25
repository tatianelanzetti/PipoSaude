<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Cadastro.aspx.vb" Inherits="PipoSaude.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css"/>
    <link rel="stylesheet" href="Estilos/Cadastro.css" />
    <link rel="stylesheet" href="Estilos/passtrength.css" />

    <form id="form" runat="server">
        <center id="logo">
            <img src="Imagens/logo.jpg" />
        </center>

        <%-----1ª Etapa: Escolher a empresa do colaborador-----%>
        <div class="msform1" id="etapa1">
            <fieldset>
                <h4 class="form-floating mb-3 tituloBranco">Empresa</h4>
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
                    <button type="button" class="btn btm-sm btnCadastrarEmpresa" id="btnCadastrarEmpresa" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#novaEmpresa">Cadastrar nova empresa</button>
                    <button type="button" class="btn btn-sm btnProsseguir " data-bs-toggle="collapse" data-bs-target="#multiCollapse1" aria-expanded="false" aria-controls="multiCollapse1">
                        <i class="bi bi-play-fill"></i>
                        <i class="fas fa-angle-down rotate-icon"></i>
                    </button>
                </div>
            </fieldset>
        </div>

        <%-----2ª Etapa: Identificação do funcionário-----%>
        <div class="msform2 collapse multi-collapse" id="multiCollapse1">
            <fieldset>
                <h4 class="form-floating mb-3 tituloPreto">Identificação do funcionário</h4>
                <div id="identificacaoDoFuncionario">
                    <input id="txtCpf" type="text" class="form-control" placeholder="Digite o CPF do funcionário" />
                </div>
                <button type="button" class="btn btnProsseguir btn-sm" data-bs-toggle="collapse" data-bs-target="#multiCollapse2" aria-expanded="false" aria-controls="multiCollapse2">
                    <i class="bi bi-play-fill"></i>
                </button>
            </fieldset>
        </div>

        <%-----3ª Etapa: Escolha dos planos-----%>
        <div class="msform1 collapse multi-collapse" id="multiCollapse2">
            <fieldset>
                <h4 class="form-floating mb-3 tituloBranco">Planos</h4>

                <div id="divFormAcmeCo">
                    <div class="plano">
                        <input id="planoNorteEuropa" name="plano" type="checkbox" value="NorteEuropa" runat="server" />
                        <asp:Label ID="lblNorteEuropa" runat="server" Text="Plano de Saúde Norte Europa " AssociatedControlID="planoNorteEuropa"></asp:Label>
                    </div>
                    <div id="divFormNorteEuropa">
                        <div>
                            <input type="text" class="form-control txtNome" placeholder="Digite o NOME do funcionário" />
                        </div>
                        <div>
                            <input type="text" class="form-control txtDataDeAdmissao" id="txtDataDeAdimissao" placeholder="Digite a DATA DE ADMISSÃO do funcionário" />
                        </div>
                        <div>
                            <input type="text" class="form-control txtEmail"  placeholder="Digite o E-MAIL do funcionário" />
                        </div>
                    </div>
                    <div class="plano">
                        <input id="planoDentalSorriso2" name="plano" type="checkbox" value="DentalSorriso" runat="server" />
                        <asp:Label ID="lblDentalSorriso2" runat="server" Text="Plano Dental Sorriso" AssociatedControlID="planoDentalSorriso2"></asp:Label>
                    </div>
                    <div id="divFormDentalSorriso2" >
                        <div>
                            <input type="text" class="form-control txtNome"  placeholder="Digite o NOME do funcionário" />
                        </div>
                        <div>
                            <input type="text" class="form-control txtPeso" placeholder="Digite o PESO do funcionário" />
                        </div>
                        <div>
                            <input type="text" class="form-control txtAltura" placeholder="Digite a ALTURA do funcionário" />
                        </div>
                    </div>
                </div>
                
                <div id="divFormTioPatinhasBank">
                    <div class="plano">
                        <input id="planoPampulhaIntermedica" name="plano" type="checkbox" value="PampulhaIntermedica" runat="server" />
                        <asp:Label ID="lblPampulhaIntermedica" runat="server" Text="Plano de Saúde Pampulha Intermédica " AssociatedControlID="planoPampulhaIntermedica"></asp:Label>
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
                    <div class="plano">
                        <input id="planoMenteSaCorpoSao" name="plano" type="checkbox" value="MenteSaCorpoSao" runat="server" />
                        <asp:Label ID="lblMenteSaCorpoSao" runat="server" Text="Plano de Saúde Mente Sã, Corpo São" AssociatedControlID="planoMenteSaCorpoSao"></asp:Label>
                    </div>
                    <div id="divFormMenteSaCorpoSao" >
                        <div>
                            <input type="text" class="form-control txtHorasMeditadas" placeholder="Digite as HORAS MEDITADAS NOS ULTIMOS 7 DIAS" />
                        </div>
                    </div>
                    <div class="plano">
                        <input id="planoDentalSorriso1" name="plano" type="checkbox" value="DentalSorriso" runat="server" />
                        <asp:Label ID="lblDetalSorriso1" runat="server" Text="Plano Dental Sorriso" AssociatedControlID="planoDentalSorriso1"></asp:Label>
                    </div>
                    <div id="divFormDentalSorriso1">
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

                
                <button type="button" class="btn btnCadastrarPlano btn-sm" id="btnCadastrarPlano" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#cadastrarNovoPlano">Cadastrar</button>
                <button type="button" class="btn btnAlterarPlano btn-sm" id="btnAlterarPlano" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#alterarPlano">Alterar</button>
                <button type="button" class="btn btnRemoverPlano btn-sm" id="btnRemoverPlano" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#removerPlano">Remover</button>
                <button type="button" class="btn btnFinalizar btn-sm"  id="btnFinalizar" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#finalizar">
                    <i class="bi bi-check"></i>
                </button>
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
                    <button type="button" class="btn btnIncluirEmpresa btn-sm" id="btnIncluirEmpresa" data-bs-dismiss="modal">Incluir</button>
                </div>
            </div>
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
                    <button type="button" class="btn btnRemoverPlanos btn-sm" id="btnRemoverPlanos" data-bs-dismiss="modal">Ok</button>
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
                    <button type="button" class="btn btnAlterarPlanos btn-sm" id="btnAlterarPlanos" data-bs-dismiss="modal">Ok</button>
                </div>
            </div>
        </div>

        <%-----Modal de finalização do cadastro do funcionario nos planos da empresa-----%>
        <div class="modal fade" id="finalizar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <p id="txtFuncionarioCadastradoComSucesso" font-bold="true">Funcionário cadastrado com sucesso! </p>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="Scripts/jquery.mask.min.js"></script>
<script src="Scripts/jquery.passtrength.min.js"></script>
<script>

    $(document).ready(async function () {

        $('[id*=txtCpf]').mask('000.000.000-00');

        let divFormAcmeCo = $('#divFormAcmeCo');
        let divFormTioPatinhasBank = $('#divFormTioPatinhasBank');

        $('[id*="empresa"]').change(function () {

            console.log($(this).val());
            if ($(this).val() === 'AcmeCo') {

                divFormAcmeCo.show();
                divFormTioPatinhasBank.hide();

            }
            else {

                divFormTioPatinhasBank.show();
                divFormAcmeCo.hide();

            }

        });
    });

</script>
