<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Formula1.Account.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="index.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>F1 - The Official Home Of Formula</title>
    </head>
    <body>
         <div class="header">
        <div class="container-fluid">
            <!-- klase koje su opisane su bootstrap klase -->
            <!-- container-fluid klasa nam omogucava da container zauzima 100% sirine stranice -->
            <!-- container klasa omogucava da container zauzima manje od 100% sirine stranice i ima neke margine -->
            <!-- klasa text-center centrira tekst -->
            <!-- klase p-1, p-2, p-3, p-4, p-5 su klase koje stavljaju padding oko redova ili onog elementa kome smo dali tu klasu -->
            <div class="row p-1 align-items-center text-center">
                <div class="col-lg-6">
                    <!-- svaki red je podeljen na 12 kolona i klasa col-lg-6 deli zauzima 6 kolona na vecim ekranima jer pise lg (large screen) -->
                    <img src="slike/logo.png" class="logo" alt="logo">
                </div>
                <div class="col-lg-6">
                    <nav class="header-nav">
                        <li>
                            <a href="../Default.aspx">Home</a>
                        </li>
                        <li>
                            <a href="FormulasDrivers.aspx">Drivers and formulas</a>
                        </li>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <div class="info-sekcija">
        <div class="container">
            <div class="row p-1">
                <div class="col-12">
                    <h1 class="naslov">About F1</h1>
                    <p>
                        Formula One (also known as Formula 1 or F1) is the highest class of international racing for
                        open-wheel single-seater formula racing cars sanctioned by the Fédération Internationale de
                        l'Automobile (FIA). The World Drivers' Championship, which became the FIA Formula One World
                        Championship in 1981, has been one of the premier forms of racing around the world since its
                        inaugural season in 1950. The word formula in the name refers to the set of rules to which all
                        participants' cars must conform. A Formula One season consists of a series of races, known as
                        Grands Prix, which take place worldwide on both purpose-built circuits and closed public roads.
                    </p>
                    <img src="slike/crvena.jpg" class="img-fluid" alt="crvena">
                    <p>
                        Formula One cars are the fastest regulated road-course racing cars in the world, owing to very
                        high
                        cornering speeds achieved through the generation of large amounts of aerodynamic downforce. The
                        cars
                        underwent major changes in 2017, allowing wider front and rear wings, and wider tyres,
                        resulting
                        in peak cornering forces near 6.5 lateral g and top speeds of around 350 km/h (215 mph).
                        As of
                        2021, the hybrid engines are limited in performance to a maximum of 15,000 rpm; the cars are
                        dependent on electronics and aerodynamics, suspension and tyres. Traction control, launch
                        control,
                        and automatic shifting, plus other electronic driving aids, were first banned in 1994. They were
                        briefly reintroduced in 2001, and have more recently been banned since 2004 and 2008
                        respectively.
                    </p>
                    <img src="slike/formula.jpg" class="img-fluid" alt="formula">
                    <p>
                        A points system is used at Grands Prix to determine two annual World Championships: one for
                        drivers, the other for constructors. Each driver must hold a valid Super Licence, the highest
                        class of racing licence issued by the FIA. The races must run on tracks graded "1" (formerly
                        "A"), the highest grade-rating issued by the FIA.
                        <br>
                        With the average annual cost of running a team - designing, building, and maintaining cars, pay,
                        transport - being approximately US$247 million, its financial and political battles are
                        widely reported. On 23 January 2017, Liberty Media completed the acquisition of the Formula One
                        Group, from private-equity firm CVC Capital Partners for $8 billion.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="vozaci">
        <a id="vozaci"></a>
        <div class="container">
            <div class="row p-1">
                <h1 class="naslov">F1 Drivers</h1>
                <p class="opis">
                    Check out this season's official F1 line-up. Full breakdown of drivers, points and current
                    positions. <br> Follow your favourite F1 drivers on and off the track.
                </p>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-4">
                    <h3 class="vozac-ime">Charles Leclerc</h3>
                    <img src="slike/poljska.jpg" class="small" alt="poljska">
                    <img src="slike/vozac1.png" class="vozac-slika" alt="vozac1">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Carlos Sainz</h3>
                    <img src="slike/spanija.jpg" class="small" alt="spanija">
                    <img src="slike/vozac2.png" class="vozac-slika" alt="vozac2">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Lewis Hamilton</h3>
                    <img src="slike/britanija.jpg" class="small" alt="britanija">
                    <img src="slike/vozac3.png" class="vozac-slika" alt="vozac3">
                </div>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-4">
                    <h3 class="vozac-ime">George Russel</h3>
                    <img src="slike/britanija.jpg" class="small" alt="britanija">
                    <img src="slike/vozac4.png" class="vozac-slika" alt="vozac4">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Kevin Magnussen</h3>
                    <img src="slike/danska.jpg" alt="danska" class="small">
                    <img src="slike/vozac5.png" alt="vozac5" class="vozac-slika">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Valtteri Bottas</h3>
                    <img src="slike/finska.jpg" alt="finska" class="small">
                    <img src="slike/vozac6.png" alt="vozac6" class="vozac-slika">
                </div>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-4">
                    <h3 class="vozac-ime">Esteban Ocon</h3>
                    <img src="slike/francuska.jpg" alt="francuska" class="small">
                    <img src="slike/vozac7.png" alt="vozac7" class="vozac-slika">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Yuki Tsunoda</h3>
                    <img src="slike/japan.jpg" alt="japan" class="small">
                    <img src="slike/vozac8.png" alt="vozac8" class="vozac-slika">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Fernando Alonso</h3>
                    <img src="slike/spanija.jpg" alt="spanija" class="small">
                    <img src="slike/vozac9.png" alt="vozac9" class="vozac-slika">
                </div>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-4">
                    <h3 class="vozac-ime">Zhou Guanyu</h3>
                    <img src="slike/kina.jpg" alt="kina" class="small">
                    <img src="slike/vozac10.png" alt="vozac10" class="vozac-slika">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Mick Schumacher</h3>
                    <img src="slike/nemacka.jpg" alt="nemacka" class="small">
                    <img src="slike/vozac11.png" alt="vozac11" class="vozac-slika">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Lance Stroll</h3>
                    <img src="slike/kanada.jpg" alt="kanada" class="small">
                    <img src="slike/vozac12.png" alt="vozac12" class="vozac-slika">
                </div>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-4">
                    <h3 class="vozac-ime">Alexander Albon</h3>
                    <img src="slike/tailand.jpg" alt="tailand" class="small">
                    <img src="slike/vozac13.png" alt="vozac13" class="vozac-slika">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Daniel Ricciardo</h3>
                    <img src="slike/australia.jpg" alt="australia" class="small">
                    <img src="slike/vozac14.png" alt="vozac14" class="vozac-slika">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Lando Norris</h3>
                    <img src="slike/britanija.jpg" alt="britanija" class="small">
                    <img src="slike/vozac15.png" alt="vozac15" class="vozac-slika">
                </div>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-4">
                    <h3 class="vozac-ime">Nicholas Latifi</h3>
                    <img src="slike/kanada.jpg" alt="kanada" class="small">
                    <img src="slike/vozac16.png" alt="vozac16" class="vozac-slika">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Nico Hulkenberg</h3>
                    <img src="slike/nemacka.jpg" alt="nemacka" class="small">
                    <img src="slike/vozac17.png" alt="vozac17" class="vozac-slika">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Sergio Perez</h3>
                    <img src="slike/mexico.jpg" alt="mexico" class="small">
                    <img src="slike/vozac18.png" alt="vozac18" class="vozac-slika">
                </div>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-4">
                    <h3 class="vozac-ime">Max Verstappen</h3>
                    <img src="slike/holandija.jpg" alt="holandija" class="small">
                    <img src="slike/vozac19.png" alt="vozac19" class=" vozac-slika">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Pierre Gasly</h3>
                    <img src="slike/francuska.jpg" alt="francuska" class="small">
                    <img src="slike/vozac20.png" alt="vozac20" class="vozac-slika">
                </div>
                <div class="col-md-4">
                    <h3 class="vozac-ime">Sebastian Vettel</h3>
                    <img src="slike/nemacka.jpg" alt="nemacka" class="small">
                    <img src="slike/vozac21.png" alt="vozac21" class="vozac-slika">
                </div>
            </div>
        </div>
    </div>

    <div class="timovi">
        <a id="timovi"></a>
        <div class="container">
            <div class="row p-1">
                <h1 class="naslov">F1 Teams 2022</h1>
                <p class="opis">
                    Discover everything you need to know about this year's Formula 1 teams - drivers, podium finishes,
                    points earned and championship titles.
                </p>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-6">
                    <h1 class="tim-naziv">Ferrari</h1>
                    <img src="slike/ferrari.png" class="logo" alt="ferrari">
                    <img src="slike/ferrari-formula.png" class="img-fluid" alt="ferrari-formula">
                </div>
                <div class="col-md-6">
                    <h1 class="tim-naziv">Mercedes</h1>
                    <img src="slike/mercedes.png" alt="mercedes" class="logo">
                    <img src="slike/mercedes-formula.png" alt="mercedes-formula" class="img-fluid">
                </div>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-6">
                    <h1 class="tim-naziv">Haas F1 Team</h1>
                    <img src="slike/haas.png" alt="haas" class="logo">
                    <img src="slike/haas-formula.png" alt="haas-formula" class="img-fluid">
                </div>
                <div class="col-md-6">
                    <h1 class="tim-naziv">Alfa Romeo</h1>
                    <img src="slike/alfa.png" alt="alfa" class="logo">
                    <img src="slike/alfa-formula.png" alt="alfa-formula" class="img-fluid">
                </div>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-6">
                    <h1 class="tim-naziv">Alpine</h1>
                    <img src="slike/alpine.png" alt="alpine" class="logo">
                    <img src="slike/alpine-formula.png" alt="alpine-formula" class="img-fluid">
                </div>
                <div class="col-md-6">
                    <h1 class="tim-naziv">AlphaTauri</h1>
                    <img src="slike/alpha.png" alt="alpha" class="logo">
                    <img src="slike/alpha-formula.png" alt="alpha-formula" class="img-fluid">
                </div>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-6">
                    <h1 class="tim-naziv">Aston Martin</h1>
                    <img src="slike/aston.png" alt="aston" class="logo">
                    <img src="slike/aston-formula.png" alt="aston-formula" class="img-fluid">
                </div>
                <div class="col-md-6">
                    <h1 class="tim-naziv">Williams</h1>
                    <img src="slike/williams.png" alt="williams" class="logo">
                    <img src="slike/williams-formula.png" alt="williams-formula" class="img-fluid">
                </div>
            </div>
            <div class="row text-center razmak">
                <div class="col-md-6">
                    <h1 class="tim-naziv">McLaren</h1>
                    <img src="slike/mclaren.png" alt="mclaren" class="logo">
                    <img src="slike/mclaren-formula.png" alt="mclaren-formula" class="img-fluid">
                </div>
                <div class="col-md-6">
                    <h1 class="tim-naziv">Red Bull Racing</h1>
                    <img src="slike/redbull.png" alt="redbull" class="logo">
                    <img src="slike/redbull-formula.png" alt="redbull-formula" class="img-fluid">
                </div>
            </div>
        </div>
    </div>

    <div class="forma">
        <div class="container">
            <div class="row p-4">
                <h1 class="naslov">Write us</h1>
                <form runat="server" id="forma">
                    <!-- Klase form-label i form-control su klase se uredjivanje elemenata forme -->
                    <div>
                        <label for="ime" class="form-label">Name:</label>
                        <asp:TextBox ID="ime" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <br>
                    <div>
                        <label for="email" class="form-label">Email:</label>
                        <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <br>
                    <div>
                        <label for="tarea" class="form-label">Your message:</label>
                        <asp:TextBox ID="komentar" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <br>
                    <div>
                        <asp:Button ID="Button1" runat="server" Text="Send" CssClass="posalji" OnClick="Button1_Click" />
                    </div>
                </form>
            </div>
            <div class="row">

            </div>
        </div>
    </div>

    <div class="footer">
        <div class="container-fluid">
            <div class="row p-3 align-items-center">
                <div class="col-md-6">
                    <img src="slike/f1_logo.svg" class="small center" alt="svg">
                </div>
                <div class="col-md-6 text-center">
                    <p>Our partners:</p>
                    <span>Heiniken | </span>
                    <span>Crypto.com | </span>
                    <span>Rolex | </span>
                    <span>Lenovo | </span>
                    <span>Zoom | </span>
                    <span>DHL</span>
                </div>
            </div>
        </div>
    </div>

    <script src="index.js"></script>
    </body>
</html>
