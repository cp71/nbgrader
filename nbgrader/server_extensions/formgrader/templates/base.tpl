<!doctype html>
<head>
  <title>nbgrader formgrade</title>

  <script src="{{ base_url }}/formgrader/static/components/jquery/jquery.min.js"></script>
  <script src="{{ base_url }}/formgrader/static/components/underscore/underscore-min.js"></script>
  <script src="{{ base_url }}/formgrader/static/components/backbone/backbone-min.js"></script>
  <script src="{{ base_url }}/formgrader/static/components/bootstrap/js/bootstrap.min.js"></script>
  <script src="{{ base_url }}/formgrader/static/components/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="{{ base_url }}/formgrader/static/components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <script src="{{ base_url }}/formgrader/static/js/backbone_xsrf.js"></script>
  <script src="{{ base_url }}/formgrader/static/js/utils.js"></script>

  <link rel="stylesheet" href="{{ base_url }}/formgrader/static/components/bootstrap/css/bootstrap.min.css" />
  <link rel="stylesheet" href="{{ base_url }}/formgrader/static/components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <link rel="stylesheet" href="{{ base_url }}/formgrader/static/css/nbgrader.css">

  <script>
  var base_url = "{{ base_url }}";
  </script>

  {%- block head -%}
  {%- endblock -%}
</head>

<body>
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-2">
        <div class="page-header">
          <img src="https://engineering.nyu.edu/sites/default/files/styles/square_large_default_1x/public/2020-02/nyu-logo-new_3.png?h=df091267&itok=Q6Y_6jNp" alt="nyu logo" height="175" width="175" tabindex="1"/>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-2">
        <ul class="nav nav-pills nav-stacked">
          {%- block sidebar -%}
          <li role="presentation"><a href="{{ base_url }}/formgrader/manage_assignments">Assignments</a></li>
          <li role="presentation"><a href="{{ base_url }}/formgrader/gradebook">Gradebook</a></li>
          <li role="presentation"><a href="{{ base_url }}/formgrader/manage_students">Roster</a></li>
          {%- endblock -%}
        </ul>
      </div>
      <div class="col-md-10">
        {%- block body -%}
        {%- block messages -%}
        {%- endblock -%}
        <table class="table table-hover">
          <thead>
            {%- block table_header -%}
            {%- endblock -%}
          </thead>
          <tbody id="main-table">
            {%- block table_body -%}
            {%- endblock -%}
          </tbody>
          <tfoot>
            {%- block table_footer -%}
            {%- endblock -%}
          </tfoot>
        </table>
        {%- endblock -%}
      </div>
    </div>
  </div>
  {%- block script -%}
  {%- endblock -%}
</body>
