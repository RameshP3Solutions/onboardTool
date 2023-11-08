var typingTimer1; // Timer for ApplicationNameSearch
var typingTimer2; // Timer for RequesterSearch
var doneTypingInterval = 2000;
var lastSearchValue = '';
var globalData = null;
console.log("globalData : ",globalData);
var globalcategory = null;
console.log("globalcategory : ",globalcategory);
var ApplicationNameSearchValue = ''; // Store the value of ApplicationNameSearch
var RequesterSearchValue = ''; // Store the value of RequesterSearch


function filterfunction(data,category){
	console.log("data search",data);
	console.log("category search",category);
	
	globalData = data;
	globalcategory = category;
}

function startTimer() {
    if (ApplicationNameSearchValue !== '' && RequesterSearchValue !== '') {
        // Both input values are entered, perform your operation here
        console.log("Perform operation with ApplicationNameSearch: ", ApplicationNameSearchValue, "and RequesterSearch: ", RequesterSearchValue);
    }
}

$(document).on('keyup', '#ApplicationNameSearch', function () {
    clearTimeout(typingTimer1);
    ApplicationNameSearchValue = $(this).val();
    console.log("ApplicationNameSearchValue : ",ApplicationNameSearchValue);
    typingTimer1 = setTimeout(startTimer, doneTypingInterval);
});

$(document).on('keyup', '#RequesterSearch', function () {
    clearTimeout(typingTimer2);
    RequesterSearchValue = $(this).val();
    typingTimer2 = setTimeout(startTimer, doneTypingInterval);
});

$(document).on('keydown', '#ApplicationNameSearch', function () {
    clearTimeout(typingTimer1);
});

$(document).on('keydown', '#RequesterSearch', function () {
    clearTimeout(typingTimer2);
});

function constructTablefilter(data) {
	console.log("XonstructTable--------rterter---====");
    var tableHtml = "<thead><tr>";
    if (data.length > 0) {
        for (var key in data[0]) {
            if (data[0].hasOwnProperty(key)){
                if ((key === 'Application_Name')|| (key === 'Legacy_Application_Name')) {
                    // Add a button in the header for the "Application_Name" column with a unique ID
                    tableHtml += "<th>" + key + "<button class='filter-button' onclick='toggleSearchBar()'></button>"+
                    "<div class='search-bar'>"+
        			"<input id='ApplicationNameSearch' type='text' class='search-input' placeholder='Search..'>"+
    				"</div>"+
    				"<script>"+
        			"function toggleSearchBar() { "+
            		"var searchBar = document.querySelector('.search-bar'); "+
            		"searchBar.style.display = (searchBar.style.display === 'block') ? 'none' : 'block';" +
        			"}"+
    				"</script>"+
    				"</th>";
                }
                else if(key === 'Request_Type'){
					tableHtml += "<th>" + key + "&nbsp;&nbsp;&nbsp;<button class='filter-button' onclick='toggleSearchBarRequest()'></button>"+
                    "<div class='search-bar-request'>"+
        			"<input id='RequesterSearch' type='text' class='search-input' placeholder='Search..'>"+
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
        data.forEach(function (item, index) {
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