$(document).ready(function () {
    // Make an initial AJAX request when the page loads
    makeAjaxRequest("Intake_Report_1");

 

    $("#category").change(function () {
        var category = $(this).val();
        console.log("category11111", category);
        makeAjaxRequest(category);
    });
});

 

function makeAjaxRequest(category) {
    $.ajax({
        url: "Compliance",
        type: 'POST',
        data: { category: category },
        dataType: "json",
        beforeSend: function () {
            $('#overlay').show();
        },
        success: function (data) {
            $('#overlay').hide();
            console.log("Data retrieved:", data);
            console.log("category 2", category);
            filterfunction(data, category);

 

            if (data.error) {
                $("#dynamicHeader").html("Error: " + data.error);
            } else {
                var tableHtml = constructTable(data);
                var table = tableHtml;
                console.log("tableHtml", table);
                table = getPagination(table);
                $("#dynamicHeader").html(tableHtml);
                getPaginationcom('#dynamicHeader');
            }
        },
    });
}

 

function constructTable(data) {
    var tableHtml = "<table><thead>";

 

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

 

    tableHtml += "</tbody></table>";

 

    return tableHtml;
}