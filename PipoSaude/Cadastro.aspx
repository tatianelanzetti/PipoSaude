<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Cadastro.aspx.vb" Inherits="PipoSaude.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Montserrat);

        body {
            font-family: montserrat, arial, verdana;
        }

        #msform {
            width: 32%;
            margin: 65px auto;
            text-align: center;
            position: relative;
        }

            #msform fieldset {
                background: white;
                border: 0 none;
                border-radius: 3px;
                box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
                padding: 20px 30px;
                box-sizing: border-box;
                width: 80%;
                margin: 0 10%;
            }

                #msform fieldset:not(:first-of-type) {
                    display: none;
                }

            #msform input, #msform textarea {
                border: 1px solid #ccc;
                border-radius: 3px;
                margin-bottom: 10px;
                box-sizing: border-box;
                font-family: montserrat;
                color: #2C3E50;
                font-size: 13px;
            }

            #msform .action-button {
                width: 100px;
                background: #F7931B;
                font-weight: bold;
                color: white;
                border: 0 none;
                border-radius: 20px;
                cursor: pointer;
                padding: 10px 5px;
                margin: 10px 5px;
            }

                #msform .action-button:hover, #msform .action-button:focus {
                    box-shadow: 0 0 0 2px white, 0 0 0 3px #222222;
                }
            .empresa {
                display: flex;
                flex-direction: row;
            }
    </style>
    <form id="form1" runat="server">
        <div>
            <center>
                <img src="Imagens/logo.jpg" />
            </center>
        </div>
        <div id="msform">
            <fieldset>
                <h2>Inclusão Planos</h2>
                <div class="form-floating mb-3">
                    <div class="divSelecaoEmpresa">
                        <div class="empresa">
                            <input id="AcmeCo" name="empresa" type="radio" value="AcmeCo" runat="server" />
                            <asp:Label ID="lblAcmeCo" runat="server" Text="Acme Co" AssociatedControlID="AcmeCo"></asp:Label>
                        </div>
                        <div class="empresa">
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
