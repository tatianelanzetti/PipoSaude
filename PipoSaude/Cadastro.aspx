<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Cadastro.aspx.vb" Inherits="PipoSaude.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Montserrat);

        #progressbar {
            margin-bottom: 30px;
            overflow: hidden;
            counter-reset: step;
            padding-right: 2rem;
            display: flex;
            justify-content: center
        }

            #progressbar li {
                text-align: center;
                list-style-type: none;
                color: black;
                text-transform: uppercase;
                font-size: 12px;
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
                    background: black;
                    border-radius: 3px;
                    margin: 0 auto 5px auto;
                }

                #progressbar li:after {
                    content: '';
                    width: 100%;
                    height: 2px;
                    background: black;
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

        #divProgressBar {
            width: 70%;
            margin: auto;
        }
    </style>
    <form id="form1" runat="server">
        <div>
            <center>
                <img src="Imagens/logo.jpg"/>
            </center>
            <div id="divProgressBar">
                <ul id="progressbar" class="progressbar w-100 d-flex justify-content-center align-items-center">
                    <li data-etapa="1" class="active">Acesso</li>
                    <li data-etapa="2">Dados cadastrais</li>
                    <li data-etapa="3">Serviços</li>
                    <li data-etapa="4">Documentação</li>
                </ul>
            </div>
        </div>
        <div class="caixa">
            <fieldset>
                <h2>Inclusão Planos</h2>
                <div class="form-floating mb-3">
                    <div class="row divSelecaoEmpresa">
                        <div class="col">
                            <input id="AcmeCo" name="empresa" type="radio" value="AcmeCo" runat="server"/>
                            <asp:Label ID="lblAcmeCo" runat="server" Text="Acme Co" AssociatedControlID="AcmeCo"></asp:Label>
                        </div>
                        <div class="col">
                            <input id="TioPatinhasBank" name="empresa" type="radio" value="TioPatinhasBank" runat="server" />
                            <asp:Label ID="lblTioPatinhasBank" runat="server" Text="Tio Patinhas Bank" AssociatedControlID="TioPatinhasBank"></asp:Label>
                        </div>
                    </div>
                    <button style="margin-top: 10px">Adicionar nova empresa</button>
                </div>
                <div id="divFormAcmeCo">
                    <div class="form-floating mb-3">
                            <label>CPF: </label>
                            <input id="txtCPF" type="text" class="form-control" placeholder="CPF" />
                        </div>
                </div>
            </fieldset>
        </div>
    </form>
</body>
</html>
