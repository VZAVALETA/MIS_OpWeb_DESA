﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Pages/SiteMaster.master" AutoEventWireup="false" CodeFile="ReporteListadoPagosFondos.aspx.vb" Inherits="Siniestros_ReporteListadoPagosFondos" %>

<%@ MasterType VirtualPath="~/Pages/SiteMaster.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_principal" runat="Server">
    <script src="../Scripts/Siniestros/Reportes.js"></script>

    <asp:HiddenField runat="server" ID="hid_Ventanas" Value="0|1|1|1|1|1|1|1|1|" />

    <div style="overflow-x: hidden">
        <div class="cuadro-titulo panel-encabezado">
            <input type="image" src="../Images/contraer_mini_inv.png" id="coVentana0" class="contraer" />
            <input type="image" src="../Images/expander_mini_inv.png" id="exVentana0" class="expandir" />
            Listado de Pagos de Fondos
        </div>

        <div class="panel-contenido ventana0">
            <asp:UpdatePanel runat="server" ID="upFiltros">
                <ContentTemplate>
                    <div class="padding10"></div>
                    <div class="row">
                        <div class="form-group col-md-4">
                        </div>
                        <div class="form-group col-md-2">
                            <asp:Label runat="server" class="etiqueta-control">Fecha Autorización Desde:</asp:Label>
                            <asp:TextBox runat="server" ID="txt_fec_gen_desde" CssClass="estandar-control Fecha Centro"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-3">
                            <asp:Label runat="server" class="etiqueta-control" Width="100%">Hora Desde:</asp:Label>
                            <asp:DropDownList runat="server" ID="ddlHoraDesde" CssClass="col-md-3 estandar-control"></asp:DropDownList>
                            <asp:Label runat="server" class="col-md-1 etiqueta-control">:</asp:Label>
                            <asp:DropDownList runat="server" ID="ddlMinutoDesde" CssClass=" col-md-3 estandar-control"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-4">
                        </div>

                        <div class="form-group col-md-2">
                            <asp:Label runat="server" class="etiqueta-control">Fecha Autorización Hasta:</asp:Label>
                            <asp:TextBox runat="server" ID="txt_fec_gen_hasta" CssClass="estandar-control Fecha Centro"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-3">
                            <asp:Label runat="server" class="etiqueta-control" Width="100%">Hora Hasta:</asp:Label>
                            <asp:DropDownList runat="server" ID="ddlHoraHasta" CssClass="col-md-3 estandar-control"></asp:DropDownList>
                            <asp:Label runat="server" class="col-md-1 etiqueta-control">:</asp:Label>
                            <asp:DropDownList runat="server" ID="ddlMinutoHasta" CssClass=" col-md-3 estandar-control"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                        </div>
                        <div class="form-group col-md-4">
                            <asp:Label runat="server" class="etiqueta-control">Fondo:</asp:Label>
                            <asp:DropDownList runat="server" ID="ddlFondo" CssClass="estandar-control"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="padding5"></div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <div style="width: 100%; text-align: right; border-top-style: inset; border-width: 1px; border-color: #003A5D">
        <div class="padding10">
            <asp:UpdatePanel runat="server" ID="upBusqueda">
                <ContentTemplate>
                    <asp:LinkButton ID="btnReporte" runat="server" class="btn botones" BorderWidth="2" BorderColor="White" Width="105px">
                        <span>
                            <img class="btn-buscar"/>&nbsp Buscar
                        </span>
                    </asp:LinkButton>
                    <asp:LinkButton ID="btnLimpiar" runat="server" class="btn botones" BorderWidth="2" BorderColor="White" Width="130px">
                        <span>
                            <img class="btn-limpiar"/>&nbsp&nbsp Limpiar Filtros
                        </span>
                    </asp:LinkButton>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>
