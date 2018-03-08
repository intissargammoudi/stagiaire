<%@ page import="java.util.*"%> 
  <%@ page import="model.Stagiaires"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Gestion des stagiaires</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../../plugins/datatables/dataTables.bootstrap.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
     
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href=" " class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>Formalab</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Formalab admin</p>
          <a href="#"><i class="fa fa-circle text-success"></i> en ligne</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="recherche">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
         
        
       
          
          
        <li><a href="liste.jsp"><i class="fa fa-circle-o text-red"></i> <span>stagiaires</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>encadreurs</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Notes</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Gérer les stagiaires  
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Accueil</a></li>
        <li><a href="#"> </a></li>
        <li class="active"> </li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
             

          <div class="box">
            <div class="box-header">
              <h3 class="box-title"> <td><a href="add.jsp"/>ajouter un nouveau stagiaire</a></td> </h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
          
                <tr>
                  <th>Firstname</th>
                  <th>Lastname</th>
                  <th>Date_nais</th>
                  <th>Encadreur</th>
                   <th>Sujet</th>
                  <th>D_deb</th>
                  <th>D_fin</th>
                  <th>email</th>
                  <th> </th>
                  <th> </th>
                </tr>
                </thead>
                  <% ArrayList <Stagiaires> list; %>
        <% int i=0;
           list=(ArrayList<Stagiaires>)session.getAttribute("list");
        %> 
                <tbody>  <% while (i<list.size()) { %>
                <tr>
                  <td> <%=list.get(i).getFirstname()%> </td>
                  <td> <%=list.get(i).getLastname() %> </td>
                  <td> <%=list.get(i).getDtn() %>  </td>
                  <td> <%=list.get(i).getEncadreur() %> </td>
                  <td>  <%=list.get(i).getSujet() %> </td>
                  <td> <%=list.get(i).getDb_stage() %> </td>
                  <td>  <%=list.get(i).getDfin()  %> </td>
                  <td> <%=list.get(i).getEmail() %> </td>
                <td><a href="Doaction.jsp?action=edit&email=<%=list.get(i).getEmail() %>"/>Update</a></td>
                    <td><a href="Doaction.jsp?action=delete&email=<%=list.get(i).getEmail() %>"/>Delete</a></td>
                </tr>
                </tr>
                
        <%i++;}%>
                </tbody>
                <tfoot>
                <tr>
                 <th>Firstname</th>
                  <th>Lastname</th>
                  <th>Date_nais</th>
                  <th>Encadreur</th>
                   <th>Sujet</th>
                  <th>D_deb</th>
                  <th>D_fin</th>
                  <th>email</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
     
    </div>
    <strong>Copyright &copy; 2017/2018 <a href=" ">Formalab</a>.</strong> Droits concervés
  </footer>
 
    
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.0 -->
<script src="../../plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>
</body>
</html>
