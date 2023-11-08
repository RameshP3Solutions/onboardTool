var globalCategory = null;
console.log("GolbalCategory :",globalCategory);

$(document).ready(function () {
    // Make an initial AJAX request when the page loads
    makeAjaxRequest("Intake_Report_1");

    $("#category").change(function () {
        var category = $(this).val();
        console.log("category11111", category);
        makeAjaxRequest(category);
    });  
});

$(document).ready(function () {
  $('#nextButton').click(function () {
    console.log('Next button clicked');
    sendAjaxRequest('next');
  });

  $('#prevButton').click(function () {
    console.log('Prev button clicked');
    sendAjaxRequest('prev');
  });
  

function sendAjaxRequest(direction) {
    $.ajax({
      type: 'POST', // You can use 'GET' or 'POST' depending on your backend API
      url: 'Compliance',
      data: {
        direction: direction, // Pass 'next' or 'prev' as the action
      },
      dataType: "json",
      success: function (data) {
        // Handle the response from the backend here
        console.log(data);
        // You can update your page based on the response data
      },
      error: function (error) {
        // Handle any AJAX errors here
        console.error('AJAX Error:', error);
      },
    });
    
  }
});
function makeAjaxRequest(category) {
    $.ajax({
        url: "Compliance",
        type: 'POST',
        data: { category: category},
        dataType: "json",
        beforeSend: function () {
            $('#overlay').show();
        },
        success: function (data) {
            $('#overlay').hide();
            globalCategory = category;
            console.log("globalCategory : ",globalCategory);
            console.log("Data retrieved:", data);
            console.log("category 2", category);
            filterfunction(data, category);

 

            if (data.error) {
                $("#dynamicHeader").html("Error: " + data.error);
            } else {
                var tableHtml = constructTable(data);
                var table = tableHtml;
                console.log("tableHtml----1213-", table);
                table = getPaginationcom(table);
                $("#dynamicHeader").html(tableHtml);
                getPaginationcom('#dynamicHeader');
            }
        },
    });
}
function constructTable165656(data) {
    var tableHtml = "<thead>";
    if (data.length > 0) {
        tableHtml += "<tr>";
        for (var key in data[0]) {
            if (data[0].hasOwnProperty(key)) {
                tableHtml += "<th>" + key + "</th>";
            }
        }
        tableHtml += "</tr>";
    }
    tableHtml += "</thead><tbody>";
    data.forEach(function (item) {
        tableHtml += "<tr>";
        for (var key in item) {
            if (item.hasOwnProperty(key)) {
                tableHtml += "<td>" + item[key] + "</td>";
            }
        }
        tableHtml += "</tr>";
    });
    tableHtml += "</tbody>";
    return tableHtml;
}

function constructTable(data) {
	console.log("XonstructTable--------rterter---====");
    var tableHtml = "<thead><tr>";
    if (data.length > 0) {
        for (var key in data[0]) {
            if (data[0].hasOwnProperty(key)){
                if ((key === 'Application_Name')|| (key === 'Legacy_Application_Name')) {
                    // Add a button in the header for the "Application_Name" column with a unique ID
                    tableHtml += "<th>" + key + "<button class='filter-button' onclick='toggleSearchBar()'></button>"+
                    "<div class='search-bar'>"+
        			"<input id='Search' type='text' class='search-input' placeholder='Search.,'>"+
    				"</div>"+
    				"<script>"+
        			"function toggleSearchBar() { "+
            		"var searchBar = document.querySelector('.search-bar'); "+
            		"searchBar.style.display = (searchBar.style.display === 'block') ? 'none' : 'block';" +
        			"}"+
    				"</script>"+
    				"</th>";
                }
                
                
                else if(key === 'Requester'){
					tableHtml += "<th>" + key + "&nbsp;&nbsp;&nbsp;<button class='filter-button' onclick='toggleSearchBarRequest()'></button>"+
                    "<div class='search-bar-request'>"+
        			"<input id='SearchRequest' type='text' class='search-input' placeholder='Search..'>"+
    				"</div>"+
    				"<script>"+
        			"function toggleSearchBarRequest() { "+
            		"var searchBar = document.querySelector('.search-bar-request'); "+
            		"searchBar.style.display = (searchBar.style.display === 'block') ? 'none' : 'block';" +
        			"}"+
    				"</script>"+
    				"</th>";
				}
                 else {
                    tableHtml += "<th>" + key + "</th>";
                }
            }
        }
        tableHtml += "</tr></thead><tbody>";
        data.forEach(function (item,index) {
            tableHtml += "<tr>";
            for (var key in item) {
                if (item.hasOwnProperty(key)) {
                    tableHtml += "<td>" + item[key] + "</td>";
                }
            }
            tableHtml += "</tr>";
        });
    }
    tableHtml += "</tbody>";
    return tableHtml;
}
