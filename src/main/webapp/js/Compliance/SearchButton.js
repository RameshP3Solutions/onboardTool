var typingTimer;
var doneTypingInterval = 800;
var lastSearchValue = '';
var globalData = null;
console.log("globalData : ",globalData);
var globalcategory = null;
console.log("globalcategory : ",globalcategory);

var ApplicationNameSearch='';
console.log("ApplicationNameSearch : ",ApplicationNameSearch);
var RequesttypeSearch=''; 
console.log("RequesttypeSearch : ",RequesttypeSearch);
let timeoutId;

function filterfunction(data,category){
	console.log("data search",data);
	console.log("category search",category);
	
	globalData = data;
	globalcategory = category;
}

function startTimer() {
    if (ApplicationNameSearch !== '' && RequesttypeSearch !== '') {
        // Both input values are entered, perform your operation here
        clearTimeout(timeoutId);
        console.log("Perform operation with ApplicationNameSearch: ", ApplicationNameSearch, "and RequesttypeSearch: ", RequesttypeSearch);
        makeAjaxRequestApplicationNameSearchRequest(ApplicationNameSearch,RequesttypeSearch);
    } else if (ApplicationNameSearch !== '') {
		timeoutId = setTimeout(ApplicationNameSearchDelay, 5000);
        console.log("ApplicationNameSearch OR : ", ApplicationNameSearch);
    } else if (RequesttypeSearch !== '') {
		timeoutId = setTimeout(RequesttypeSearchDelay, 5000);
        console.log("RequesttypeSearch OR : ", RequesttypeSearch);
    }
}

$(document).on('keyup', '#Search', function () {
    clearTimeout(typingTimer);
    var Obj_this = this;
    typingTimer = setTimeout(function () {
        doneTyping(Obj_this);
    }, doneTypingInterval);
});

$(document).on('keyup', '#SearchRequest', function () {
    clearTimeout(typingTimer);
    var Obj_this_request = this;
    typingTimer = setTimeout(function () {
        doneTypingRequest(Obj_this_request);
    }, doneTypingInterval);
});

$(document).on('keydown', '#Search', function () {
    clearTimeout(typingTimer);
});


$(document).on('keydown', '#SearchRequest', function () {
    clearTimeout(typingTimer);
});


function doneTyping(obj) {
    var Search = $(obj).val();
    console.log("Search : ",Search);
    ApplicationNameSearch = Search;
	startTimer();
}

function doneTypingRequest(Obj_this_request) {
    var SearchRequest = $(Obj_this_request).val();
    console.log("SearchRequest : ",SearchRequest);
	RequesttypeSearch = SearchRequest; 
	startTimer();
}

function ApplicationNameSearchDelay() {
    // Perform your operation here
    console.log("Performing operation after a 3-second delay");
    makeAjaxRequestSearch(ApplicationNameSearch);
}

function RequesttypeSearchDelay() {
    // Perform your operation here
    console.log("Performing operation after a 3-second delay");
    makeAjaxRequestSearchRequest(RequesttypeSearch);
}


    
function makeAjaxRequestSearch(Search) {
	var category = globalcategory;
    $.ajax({
        url: "Compliance",
        type: 'POST',
        data: {
            Search: Search,
            category: category
        },
        dataType: "json",
        beforeSend: function () {
            $('#overlay').show();
        },
        success: function (data) {
            $('#overlay').hide();
           			

            if (data.error) {
                $("#dynamicHeader").html("Error: " + data.error);
            } else {
                    var tableHtml = constructTablefilter(data);
                	var table = tableHtml;
                	console.log("tableHtml", table);
                	table = getPaginationcom(table);
                	$("#dynamicHeader").html(tableHtml);
                	getPaginationcom('#dynamicHeader');
                }
        },
    });
}

function makeAjaxRequestApplicationNameSearchRequest(Search,SearchRequest) {
	var category = globalcategory;
    $.ajax({
        url: "Compliance",
        type: 'POST',
        data: {
			Search: Search,
            SearchRequest: SearchRequest,
            category: category
        },
        dataType: "json",
        beforeSend: function () {
            $('#overlay').show();
        },
        success: function (data) {
            $('#overlay').hide();
           			

            if (data.error) {
                $("#dynamicHeader").html("Error: " + data.error);
            } else {
                    var tableHtml = constructTablefilter(data);
                	var table = tableHtml;
                	console.log("tableHtml", table);
                	table = getPaginationcom(table);
                	$("#dynamicHeader").html(tableHtml);
                	getPaginationcom('#dynamicHeader');
                }
        },
    });
}

function makeAjaxRequestSearchRequest(SearchRequest) {
	var category = globalcategory;
    $.ajax({
        url: "Compliance",
        type: 'POST',
        data: {
            SearchRequest: SearchRequest,
            category: category
        },
        dataType: "json",
        beforeSend: function () {
            $('#overlay').show();
        },
        success: function (data) {
            $('#overlay').hide();
           			

            if (data.error) {
                $("#dynamicHeader").html("Error: " + data.error);
            } else {
                    var tableHtml = constructTablefilter(data);
                	var table = tableHtml;
                	console.log("tableHtml", table);
                	table = getPaginationcom(table);
                	$("#dynamicHeader").html(tableHtml);
                	getPaginationcom('#dynamicHeader');
                }
        },
    });
}

function constructTablefilter123(filteredData) {
    var tableHtml = "<table><thead>";

    if (filteredData.length > 0) {
        tableHtml += "<tr>";

        for (var key in filteredData[0]) {
            if (filteredData[0].hasOwnProperty(key)) {
                tableHtml += "<th>" + key + "</th>";
            }
        }

        tableHtml += "</tr>";
    }

    tableHtml += "</thead><tbody>";

    filteredData.forEach(function (item) {
        tableHtml += "<tr>";

        for (var key in item) {
            if (item.hasOwnProperty(key)) {
                tableHtml += "<td>" + item[key] + "</td>";
            }
        }

        tableHtml += "</tr>";
    });

    tableHtml += "</tbody></table>";

    return tableHtml;
}


function constructTablefilter(data) {
    console.log("XonstructTable--------rterter---====");
    if (data.length === 0) {
		console.log("No data Called");
        return "<h5><b><center>No Record Found</center></b></h5>";
    }

    var tableHtml = "<thead><tr>";
    for (var key in data[0]) {
        if (data[0].hasOwnProperty(key)) {
            if ((key === 'Application_Name') || (key === 'Legacy_Application_Name')) {
                // Add a button in the header for the "Application_Name" column with a unique ID
                tableHtml += "<th>" + key + "<button class='filter-button' onclick='toggleSearchBar()'></button>" +
                    "<div class='search-bar'>" +
                    "<input id='Search' type='text' class='search-input' placeholder='Search..'>" +
                    "</div>" +
                    "<script>" +
                    "function toggleSearchBar() { " +
                    "var searchBar = document.querySelector('.search-bar'); " +
                    "searchBar.style.display = (searchBar.style.display === 'block') ? 'none' : 'block';" +
                    "}" +
                    "</script>" +
                    "</th>";
            } else if (key === 'Requester') {
                tableHtml += "<th>" + key + "&nbsp;&nbsp;&nbsp;<button class='filter-button' onclick='toggleSearchBarRequest()'></button>" +
                    "<div class='search-bar-request'>" +
                    "<input id='SearchRequest' type='text' class='search-input' placeholder='Search..'>" +
                    "</div>" +
                    "<script>" +
                    "function toggleSearchBarRequest() { " +
                    "var searchBar = document.querySelector('.search-bar-request'); " +
                    "searchBar.style.display = (searchBar.style.display === 'block') ? 'none' : 'block';" +
                    "}" +
                    "</script>" +
                    "</th>";
            } else {
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

    tableHtml += "</tbody>";
    return tableHtml;
}
