/*
 * Author: Abdullah A Almsaeed
 * Date: 4 Jan 2014
 * Description:
 *      This is a demo file used only for the main dashboard (index.html)
 **/

/* global moment:false, Chart:false, Sparkline:false */

$(function () {
  'use strict'

  // Make the dashboard widgets sortable Using jquery UI
  $('.connectedSortable').sortable({
    placeholder: 'sort-highlight',
    connectWith: '.connectedSortable',
    handle: '.card-header, .nav-tabs',
    forcePlaceholderSize: true,
    zIndex: 999999
  })
  $('.connectedSortable .card-header').css('cursor', 'move')

  // jQuery UI sortable for the todo list
  $('.todo-list').sortable({
    placeholder: 'sort-highlight',
    handle: '.handle',
    forcePlaceholderSize: true,
    zIndex: 999999
  })

  // bootstrap WYSIHTML5 - text editor
  $('.textarea').summernote()

  $('.daterange').daterangepicker({
    ranges: {
      Today: [moment(), moment()],
      Yesterday: [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
      'Last 7 Days': [moment().subtract(6, 'days'), moment()],
      'Last 30 Days': [moment().subtract(29, 'days'), moment()],
      'This Month': [moment().startOf('month'), moment().endOf('month')],
      'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
    },
    startDate: moment().subtract(29, 'days'),
    endDate: moment()
  }, function (start, end) {
    // eslint-disable-next-line no-alert
    alert('You chose: ' + start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
  })

  /* jQueryKnob */
  $('.knob').knob()

  // jvectormap data
  var visitorsData = {
    US: 398, // USA
    SA: 400, // Saudi Arabia
    CA: 1000, // Canada
    DE: 500, // Germany
    FR: 760, // France
    CN: 300, // China
    AU: 700, // Australia
    BR: 600, // Brazil
    IN: 800, // India
    GB: 320, // Great Britain
    RU: 3000 // Russia
  }
  // World map by jvectormap
  $('#world-map').vectorMap({
    map: 'usa_en',
    backgroundColor: 'transparent',
    regionStyle: {
      initial: {
        fill: 'rgba(255, 255, 255, 0.7)',
        'fill-opacity': 1,
        stroke: 'rgba(0,0,0,.2)',
        'stroke-width': 1,
        'stroke-opacity': 1
      }
    },
    series: {
      regions: [{
        values: visitorsData,
        scale: ['#ffffff', '#0154ad'],
        normalizeFunction: 'polynomial'
      }]
    },
    onRegionLabelShow: function (e, el, code) {
      if (typeof visitorsData[code] !== 'undefined') {
        el.html(el.html() + ': ' + visitorsData[code] + ' new visitors')
      }
    }
  })

  // Sparkline charts
  var sparkline1 = new Sparkline($('#sparkline-1')[0], { width: 80, height: 50, lineColor: '#92c1dc', endColor: '#ebf4f9' })
  var sparkline2 = new Sparkline($('#sparkline-2')[0], { width: 80, height: 50, lineColor: '#92c1dc', endColor: '#ebf4f9' })
  var sparkline3 = new Sparkline($('#sparkline-3')[0], { width: 80, height: 50, lineColor: '#92c1dc', endColor: '#ebf4f9' })

  sparkline1.draw([1000, 1200, 920, 927, 931, 1027, 819, 930, 1021])
  sparkline2.draw([515, 519, 520, 522, 652, 810, 370, 627, 319, 630, 921])
  sparkline3.draw([15, 19, 20, 22, 33, 27, 31, 27, 19, 30, 21])

  // The Calender
  $('#calendar').datetimepicker({
    format: 'L',
    inline: true
  })

  // SLIMSCROLL FOR CHAT WIDGET
  $('#chat-box').overlayScrollbars({
    height: '250px'
  })

  /* Chart.js Charts */
  // Sales chart
  var salesChartCanvas = document.getElementById('revenue-chart-canvas').getContext('2d')
  // $('#revenue-chart').get(0).getContext('2d');

  var salesChartData = {
    labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
    datasets: [
      {
        label: 'Digital Goods',
        backgroundColor: 'rgba(60,141,188,0.9)',
        borderColor: 'rgba(60,141,188,0.8)',
        pointRadius: false,
        pointColor: '#3b8bba',
        pointStrokeColor: 'rgba(60,141,188,1)',
        pointHighlightFill: '#fff',
        pointHighlightStroke: 'rgba(60,141,188,1)',
        data: [28, 48, 40, 19, 86, 27, 90]
      },
      {
        label: 'Electronics',
        backgroundColor: 'rgba(210, 214, 222, 1)',
        borderColor: 'rgba(210, 214, 222, 1)',
        pointRadius: false,
        pointColor: 'rgba(210, 214, 222, 1)',
        pointStrokeColor: '#c1c7d1',
        pointHighlightFill: '#fff',
        pointHighlightStroke: 'rgba(220,220,220,1)',
        data: [65, 59, 80, 81, 56, 55, 40]
      }
    ]
  }

  var salesChartOptions = {
    maintainAspectRatio: false,
    responsive: true,
    legend: {
      display: false
    },
    scales: {
      xAxes: [{
        gridLines: {
          display: false
        }
      }],
      yAxes: [{
        gridLines: {
          display: false
        }
      }]
    }
  }

  // This will get the first returned node in the jQuery collection.
  // eslint-disable-next-line no-unused-vars
  var salesChart = new Chart(salesChartCanvas, { // lgtm[js/unused-local-variable]
    type: 'line',
    data: salesChartData,
    options: salesChartOptions
  })

  // Donut Chart
  var pieChartCanvas = $('#sales-chart-canvas').get(0).getContext('2d')
  var pieData = {
    labels: [
      'Instore Sales',
      'Download Sales',
      'Mail-Order Sales'
    ],
    datasets: [
      {
        data: [30, 12, 20],
        backgroundColor: ['#f56954', '#00a65a', '#f39c12']
      }
    ]
  }
  var pieOptions = {
    legend: {
      display: false
    },
    maintainAspectRatio: false,
    responsive: true
  }
  // Create pie or douhnut chart
  // You can switch between pie and douhnut using the method below.
  // eslint-disable-next-line no-unused-vars
  var pieChart = new Chart(pieChartCanvas, { // lgtm[js/unused-local-variable]
    type: 'doughnut',
    data: pieData,
    options: pieOptions
  })

  // Sales graph chart
  var salesGraphChartCanvas = $('#line-chart').get(0).getContext('2d')
  // $('#revenue-chart').get(0).getContext('2d');

  var salesGraphChartData = {
    labels: ['2011 Q1', '2011 Q2', '2011 Q3', '2011 Q4', '2012 Q1', '2012 Q2', '2012 Q3', '2012 Q4', '2013 Q1', '2013 Q2'],
    datasets: [
      {
        label: 'Digital Goods',
        fill: false,
        borderWidth: 2,
        lineTension: 0,
        spanGaps: true,
        borderColor: '#efefef',
        pointRadius: 3,
        pointHoverRadius: 7,
        pointColor: '#efefef',
        pointBackgroundColor: '#efefef',
        data: [2666, 2778, 4912, 3767, 6810, 5670, 4820, 15073, 10687, 8432]
      }
    ]
  }

  var salesGraphChartOptions = {
    maintainAspectRatio: false,
    responsive: true,
    legend: {
      display: false
    },
    scales: {
      xAxes: [{
        ticks: {
          fontColor: '#efefef'
        },
        gridLines: {
          display: false,
          color: '#efefef',
          drawBorder: false
        }
      }],
      yAxes: [{
        ticks: {
          stepSize: 5000,
          fontColor: '#efefef'
        },
        gridLines: {
          display: true,
          color: '#efefef',
          drawBorder: false
        }
      }]
    }
  }

  // This will get the first returned node in the jQuery collection.
  // eslint-disable-next-line no-unused-vars
  var salesGraphChart = new Chart(salesGraphChartCanvas, { // lgtm[js/unused-local-variable]
    type: 'line',
    data: salesGraphChartData,
    options: salesGraphChartOptions
  })
})
/////////////////////////////////////DataTable.js////////////////////////////////
$(function () {
  $("#example1").DataTable({
    "responsive": true,
    "lengthChange": true,
    "autoWidth": false,
    "paging": true,
    "pageLength": 10,
    "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
    "language": {
      "paginate": {
        "previous": "Previous",
        "next": "Next"
      }
    },
    "initComplete": function () {
      var api = this.api();
      
      $(api.table().footer()).find('th').each(function (i) {
        if (i < 3) { 
          var title = $(this).text();
          $(this).html('<input type="text"/>');

          // On input, search the table
          $('input', this).on('keyup change', function () {
            if (api.column(i).search() !== this.value) {
              api.column(i).search(this.value).draw();
            }
          });
        } else {
          $(this).html(''); // Clear footer cells where searching is disabled
        }
      });
    }
  }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
  
  $('#example2').DataTable({
    "paging": true,
    "lengthChange": false,
    "searching": false,
    "ordering": true,
    "info": true,
    "autoWidth": false,
    "responsive": true,
    "pageLength": 10,
    "language": {
      "paginate": {
        "previous": "Previous",
        "next": "Next"
      }
    }
  });
});

//////////////////Openpermissions/////////////////////////////
  function openPermissionModel(siteurl , id){
    $('#manage_permission').modal('toggle');
    $('#manage_permission').modal('show');
    $("#role_id").val(id);
    roleHasPermission(siteurl ,id);
}

////////////////////// CHANGE & SAVE PERMISSION ///////////////////
function roleHasPermission(siteurl, id){
    jQuery.ajaxSetup({
        headers: {
                'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });     
    $.ajax({
        type: "POST",
        url: siteurl,
        data: {
            id: id,
        },
        // method: 'POST', //Post method,
        // dataType: 'json',
        success: function(response){
            console.log(response)
            $('#permissiontable').html(response);
        }
    });
}
////////////////////// CHANGE & SAVE PERMISSION ///////////////////
function changePermission(siteurl,module_id,permission_name,unique_id){
    jQuery.ajaxSetup({
        headers: {
                'X-CSRF-TOKEN': jQuery('meta[name="csrf-token"]').attr('content')
        }
    });
    const id = $("#role_id").val();
    if($("#checkbox"+unique_id).is(":checked")){
        var checked = 1;      
    } else if($("#checkbox"+unique_id).is(":not(:checked)")){            
        var checked = 0;      
    }         
    $.ajax({
        type: "POST",
        url: siteurl,
        data: {
            id: id,
            module_id: module_id,
            permission_name: permission_name,
            checked: checked,
        }
    });
}

////////////////////////////Functionally and administratively ID////////////////////
document.addEventListener("DOMContentLoaded", function() {
  function validateNumericInput(id, errorId) {
      var input = document.getElementById(id);
      var errorElement = document.getElementById(errorId);

      input.addEventListener('input', function() {
          var value = input.value;
          if (/^\d*$/.test(value)) {
              errorElement.style.display = 'none';
          } else {
              errorElement.style.display = 'block';
              input.value = value.replace(/\D/g, '');
              setTimeout(function() {
                  errorElement.style.display = 'none';
              }, 1500);
          }
      });
  }
  validateNumericInput('functionally_reports_to', 'functionally_reports_to_error');
  validateNumericInput('administratively_reports_to', 'administratively_reports_to_error');
});

///////////////////////////////////Password and confirm password////////////////
document.addEventListener("DOMContentLoaded", function() {
  var password = document.getElementById('password');
  var passwordConfirmation = document.getElementById('password_confirmation');
  var passwordError = document.getElementById('password_error');
  var confirmPasswordError = document.getElementById('confirm_password_error');
  var togglePassword = document.getElementById('togglePassword');
  var togglePasswordConfirmation = document.getElementById('togglePasswordConfirmation');

  function validatePassword() {
      var passwordValue = password.value;
      var passwordCriteria = /^(?=.*[A-Z])(?=.*[!@#$%^&*])(?=.*[0-9]).{8,}$/;

      if (!passwordCriteria.test(passwordValue)) {
          passwordError.textContent =
              'Password must be at least 8 characters long, include an uppercase letter, a number, and a special character.';
          passwordError.style.display = 'block';
          setTimeout(function() {
              passwordError.style.display = 'none';
          }, 10000);
      } else {
          passwordError.style.display = 'none';
      }

      if (passwordValue && passwordConfirmation.value && passwordValue !== passwordConfirmation.value) {
          confirmPasswordError.textContent = 'Passwords do not match.';
          confirmPasswordError.style.display = 'block';
          setTimeout(function() {
              confirmPasswordError.style.display = 'none';
          }, 1000);
      } else {
          confirmPasswordError.style.display = 'none';
      }
  }

  function toggleVisibility(input, icon) {
      const type = input.getAttribute('type') === 'password' ? 'text' : 'password';
      input.setAttribute('type', type);
      icon.classList.toggle('fa-eye');
      icon.classList.toggle('fa-eye-slash');
  }

  password.addEventListener('input', validatePassword);
  passwordConfirmation.addEventListener('input', validatePassword);

  togglePassword.addEventListener('click', function() {
      toggleVisibility(password, this.querySelector('i'));
  });

  togglePasswordConfirmation.addEventListener('click', function() {
      toggleVisibility(passwordConfirmation, this.querySelector('i'));
  });
});

////////////////////////////////////validatePhoneNumber////////////////////////////////////
function validatePhoneNumber(input) {
const phoneNumber = input.value;
const errorElement = document.getElementById('phone_error');
if (phoneNumber.length > 13) {
    input.value = phoneNumber.substring(0, 13);
    errorElement.textContent = '';
} else if (phoneNumber.length < 13) {
    errorElement.textContent = 'Please write a correct phone number with exactly 13 digits starting with +92.';
    setTimeout(() => {
        errorElement.textContent = '';
    }, 10000);
} else if (!phoneNumber.startsWith('+92')) {
    errorElement.textContent = 'Phone number must start with +92.';
    setTimeout(() => {
        errorElement.textContent = '';
    }, 10000);
} else {
    errorElement.textContent = '';
    }
}

function validatePhoneNumberOnBlur(input) {
    const phoneNumber = input.value;
    const errorElement = document.getElementById('phone_error');
    if (phoneNumber.length < 13 || !phoneNumber.startsWith('+92')) {
        errorElement.textContent = 'Incorrect phone number. Please ensure it starts with +92 and has exactly 13 digits.';
    } else {
        errorElement.textContent = '';
    }
}
document.addEventListener('DOMContentLoaded', function () {
    const phoneNumberInput = document.querySelector('input[name="phone_number"]');
    if (phoneNumberInput) {
        phoneNumberInput.addEventListener('input', function() {
            validatePhoneNumber(phoneNumberInput);
        });
        phoneNumberInput.addEventListener('blur', function() {
            validatePhoneNumberOnBlur(phoneNumberInput);
        });
    }
});

///////////////// employee_id validation //////////////
function validateEmployeeId() {
  const input = document.getElementById('employee_id');
  const error = document.getElementById('employee_id_error');
  if (/^\d*$/.test(input.value)) {
    error.style.display = 'none';
  } else {
    error.style.display = 'block'; 
    input.value = input.value.replace(/\D/g, '');
    setTimeout(function() {
            error.style.display = 'none';
        }, 1000);
    }
}
   
////////////////// email validation on runtime error ////////////////
function validateEmail() {
  const emailInput = document.getElementById('email');
  const error = document.getElementById('email_error');
  const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]{2,}\.[a-zA-Z]{2,}$/;
      
  if (emailPattern.test(emailInput.value)) {
        error.style.display = 'none';
    } else {
        error.style.display = 'block'; 
  }
}

///////////////////// GenerateSlug Menu Template URL/////////////////
function generateSlug() {
  var name = $('#module_name').val().trim().toLowerCase();
  var slug = name.replace(/\s+/g, '-'); // Replace spaces with hyphens
    $('#permalink').val(slug);
}
$('#module_name').on('input', generateSlug);

function menus(url){
  var menutitle =$("#module_name").val();
  var menutitlearray= menutitle.split(' ');
  var menutitlestring= menutitlearray.join('-');
        // alert(menutitlearray[0].toLowerCase());
    if(menutitlearray[0].toLowerCase() === 'manage'){
        $("#menudescription").val(url+'/'+menutitlestring.charAt(0).toLowerCase()+ menutitlestring.toLowerCase().slice(1));
      }else{
        $("#menudescription").val(url+'/manage-'+menutitlestring.charAt(0).toLowerCase()+ menutitlestring.slice(1));
      }
}

////////////////////////////////////Change Menu URL //////////////////////////////////
function changeUrl(siteurl) {
  var oldUrl = $("#old_url").val();
  var newUrl = $("#new_url").val();

  $.ajaxSetup({
      headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
  });

  $.ajax({
      type: "POST",
      url: siteurl,
      data: {
          old_url: oldUrl,
          new_url: newUrl
      },
      success: function(response) {
          alert("URL changed successfully");
          location.reload();
      },
      error: function(xhr) {
          alert("An error occurred: " + xhr.responseText);
      }
  });
}
