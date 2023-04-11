<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Hospital.Views.Guest.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../Libs/Bootstrap/css/bootstrap.min.css"/>
</head>
<body>
    <!--<form id="form1" runat="server">
    <div>
    
    </div>
    </form>-->

    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Поликлиника</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="">Докторы</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">Лаборатория</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">Поциенты</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../Login.aspx">Вход в систему</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="row" style="background-image:url(../../Assests/Images/Ambulance.jpg); height: 600px; background-size: cover;">
            <div class="col-md-2">

            </div>
            <div class="col-md-5">
                <div class="row" style="height:100px">

                </div>
                <h2>Ваше здоровье - наш единственный Приоритет</h2>
                <h2>Существуют тысячи болезней, но здоровье бывает только одно</h2>
                <p class="h6">Наша больница была создана в 2022 году группой лиц, которые хотели</p>
                <p class="h6">чтобы действительно заботиться о здоровье населения.</p> <br />
                <button class="btn btn-primary">Связаться с нами</button>
                <button class="btn border-primary text-primary bg-transparent">Обратная связь с нами</button>
            </div>
        </div>
        <div class="row bg-primary">
                <div class="row" style="height: 20px"></div>
            <div class="row">
                <div class="col-md-3 bg-light offset-1 rounded-4">

                <div class="row">
                    <div class="col-2">
                    </div>
                    <div class="col-7">
                        <h5 class="text-center">Индивидуальный подход</h5>
                        <p>Внимательность, аккуратность, доброжелательность, максимальная лояльность, персонализированный 
                            подход к каждому пациенту, умение слушать и слышать его проблемы, вопросы и пожелания — все это 
                            является основными принципами в работе команды поликлиники.</p>
                    </div>
                </div>


            </div>

            <div class="col-md-3 bg-light offset-1 rounded-4">
                <div class="row">
                    <div class="col-2">
                    </div>
                    <div class="col-7">
                        <h5 class="text-center">Платные услуги оказываются всем жителям Республики Беларусь, а также иностранным гражданам</h5>
                        <p>В настоящее время проводится работа по открытию в поликлинике гинекологического и стоматологического кабинетов, 
                            фито-бара с предоставлением кислородных коктейлей для лечения заболеваний различных органов и систем организма, 
                            кабинета ароматерапии и психологической разгрузки с лампой Чижевского.</p>
                    </div>
                </div>
            </div>
            
            <div class="col-md-3 bg-light offset-1 rounded-4">
                <div class="row">
                    <div class="col-2">
                    </div>
                    <div class="col-7">
                        <h5 class="text-center">Оснащение</h5>
                        <p>Для гарантии качества оказываемых услуг и максимальной точности в 
                            поликлинике установлено современное надежное технологическое и 
                            медицинское оборудование. В работе используются 
                            безопасные материалы и стерильные инструменты.</p>
                    </div>
                </div>
            </div>

            </div>
        
            <div class="row" style="height:22px"></div>


        </div>

    </div>
</body>
</html>
