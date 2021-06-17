<%@ Page Title="" Language="C#" MasterPageFile="~/staff.Master" AutoEventWireup="true" CodeBehind="staffhome.aspx.cs" Inherits="Police_Investigation_System_NEW_.staffhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 168px;
            padding-left:30px;
        }
        .auto-style3 {
            width: 198px;
            padding-left:40px;
        }
        .auto-style4 {
            width: 415px;
        }
    </style>


    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:ImageButton ID="ImageButton1" ImageUrl="~/Home Images/COMPLAINTNEW.png" 
                    Width="90px" PostBackUrl="~/complaint.aspx" runat="server"/>
            </td>
            <td class="auto-style3">
                <asp:ImageButton ID="ImageButton2" PostBackUrl="~/searchcomplaint.aspx" ImageUrl="~/Home Images/INVESTIGATENEW.png" 
                    Width="90px" runat="server" />
            </td>
            <td class="auto-style4" rowspan="3">
               
               



    
      
    <style>
        * {
            box-sizing: border-box;
        }

        ul {
            list-style-type: none;
        }

        body {
            font-family: "Lato", sans-serif;
        }

        * {
            margin: 0;
            box-sizing: border-box;
        }

        .wrapper {
            background-color: #fff;
            width: 60vw;
            height: 60vh;
            display: flex;
        }

        .calendar {
            margin: auto;
            width: 400px;
            background-color: #fff;
            box-shadow: 0px 0px 15px 4px rgba(0, 0, 0, 0.2);
       
        }

        .month {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            padding: 40px 30px;
            text-align: center;
            background-color: #34495e;
            color: #fff;
        }

        .weekdays {
            background-color: #34495e;
            color: #fff;
            padding: 7px 0;
            display: flex;
        }

        .days {
            font-weight: 300;
            padding: 10px 0;
            display: flex;
            flex-wrap: wrap;
        }

        .weekdays div,
        .days div {
            text-align: center;
            width: 14.28%;
        }

        .days div {
            padding: 10px 0;
            margin-bottom: 10px;
            transition: all 0.4s;
        }

        .prev_date {
            color: #999;
        }

        .today {
            background-color: #34495e;
            color: #fff;
        }

        .days div:hover {
            cursor: pointer;
            background-color: #dfe6e9
        }

        .prev,
        .next {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            font-size: 23px;
            background-color: rgba(0, 0, 0, 0.1);
            transition: all 0.4s;
        }

        .prev:hover,
        .next:hover {
            cursor: pointer;
            background-color: rgba(0, 0, 0, 0.2);
        }

        #month {
            font-size: 30px;
            font-weight: 500;
        }
    </style>


<body onload="renderDate()">
    <div class="wrapper">
        <div class="calendar">
            <div class="month">
                <div class="prev" onclick="moveDate('prev')">
                    <span>&#10094;</span>
                </div>
                <div>
                    <h2 id="month"></h2>
                    <p id="date_str"></p>
                </div>
                <div class="next" onclick="moveDate('next')">
                    <span>&#10095;</span>
                </div>
            </div>
            <div class="weekdays">
                <div>Sun</div>
                <div>Mon</div>
                <div>Tue</div>
                <div>Wed</div>
                <div>Thu</div>
                <div>Fri</div>
                <div>Sat</div>
            </div>
            <div class="days">

            </div>
        </div>
    </div>
    <script>
        var dt = new Date();
        function renderDate() {
            dt.setDate(1);
            var day = dt.getDay();
            var today = new Date();
            var endDate = new Date(
                dt.getFullYear(),
                dt.getMonth() + 1,
                0
            ).getDate();

            var prevDate = new Date(
                dt.getFullYear(),
                dt.getMonth(),
                0
            ).getDate();
            var months = [
                "January",
                "February",
                "March",
                "April",
                "May",
                "June",
                "July",
                "August",
                "September",
                "October",
                "November",
                "December"
            ]
            document.getElementById("month").innerHTML = months[dt.getMonth()];
            document.getElementById("date_str").innerHTML = dt.toDateString();
            var cells = "";
            for (x = day; x > 0; x--) {
                cells += "<div class='prev_date'>" + (prevDate - x + 1) + "</div>";
            }
            console.log(day);
            for (i = 1; i <= endDate; i++) {
                if (i == today.getDate() && dt.getMonth() == today.getMonth()) cells += "<div class='today'>" + i + "</div>";
                else
                    cells += "<div>" + i + "</div>";
            }
            document.getElementsByClassName("days")[0].innerHTML = cells;

        }

        function moveDate(para) {
            if (para == "prev") {
                dt.setMonth(dt.getMonth() - 1);
            } else if (para == 'next') {
                dt.setMonth(dt.getMonth() + 1);
            }
            renderDate();
        }
    </script>
    </body>



            </td>
            <td rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:ImageButton ID="ImageButton3" PostBackUrl="~/dailyentry.aspx" ImageUrl="~/Home Images/DIARYNEW.png" Width="90px" runat="server" />
            </td>
            <td class="auto-style3">
                <asp:ImageButton ID="ImageButton4" PostBackUrl="searchentry.aspx" ImageUrl="~/Home Images/diarynxt.png" 
                    Width="145px" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>


