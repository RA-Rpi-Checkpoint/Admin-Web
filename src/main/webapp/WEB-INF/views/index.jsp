<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Embedded SW Project</title>
    <head profile="http://www.w3.org/2005/10/profile">
        <meta name="description" content="Ela Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--META HTTP-EQUIV="refresh" CONTENT="15"-->
        <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
        <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
        <link rel="stylesheet" href="../../assets/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="../../assets/css/style.css">
        <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
        <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
        <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="../../assets/css/stat.css">

        <style>
            @import url("compass/css3.css");
            @-webkit-keyframes animate-width {
                0% {
                    width: 0; }
                100% {
                    visibility: visible; } }

            @-moz-keyframes animate-width {
                0% {
                    width: 0; }
                100% {
                    visibility: visible; } }

            @keyframes animate-width {
                0% {
                    width: 0; }
                100% {
                    visibility: visible; } }

            @-webkit-keyframes animate-height {
                0% {
                    height: 0; }
                100% {
                    visibility: visible; } }

            @-moz-keyframes animate-height {
                0% {
                    height: 0; }
                100% {
                    visibility: visible; } }

            @keyframes animate-height {
                0% {
                    height: 0; }
                100% {
                    visibility: visible; } }

            .stat-levels {
                max-width: 100%;
                margin: 20px auto 0 auto;
                padding: 25px;
                border: 1px solid lightgrey;
                border-radius: 10px;
                background: -webkit-linear-gradient(bottom, #lightgrey 0%, #lightgrey100%);
                background: linear-gradient(#ffffff 0%, #ffffff 100%); }

            .stat-bar {
                background-color: #2a2b2f;
                height: 12px;
                overflow: hidden;
                padding: 3px;
                border-radius: 5px;
                margin-bottom: 20px;
                margin-left: 0; }
            .stat-bar:last-child {
                margin-bottom: 0; }

            .stat-bar-rating {
                border-radius: 4px;
                float: left;
                width: 0;
                height: 100%;
                font-size: 12px;
                color: white;
                text-align: center;
                text-indent: -9999px;
                background-color: #428bca;
                -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
                box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15); }

            .stat-1 > .stat-bar-rating {
                background-image: -webkit-linear-gradient(bottom, #ff4500 0%, #ff4500 47%, #cf3a02 50%, #cf3a02 100%);
                background-image: linear-gradient(top, #ff4500 0%, #ff4500 47%, #cf3a02 50%, #cf3a02 100%); }

            .stat-2 > .stat-bar-rating {
                background-image: -webkit-linear-gradient(bottom, #b8f123 0%, #b8f123 47%, #79a602 50%, #79a602 100%);
                background-image: linear-gradient(top, #b8f123 0%, #b8f123 47%, #79a602 50%, #79a602 100%); }

            .stat-3 > .stat-bar-rating {
                background-image: -webkit-linear-gradient(bottom, #00c5ff 0%, #00c5ff 47%, #0383a9 50%, #0383a9 100%);
                background-image: linear-gradient(top, #00c5ff 0%, #00c5ff 47%, #0383a9 50%, #0383a9 100%); }

            .stat-bar-rating {
                visibility: hidden;
                width: 0;
                -webkit-animation: animate-width;
                -moz-animation: animate-width;
                animation: animate-width;
                animation-timing-function: cubic-bezier(0.35, 0.95, 0.67, 0.99);
                -webkit-animation-timing-function: cubic-bezier(0.35, 0.95, 0.67, 0.99);
                -moz-animation-timing-function: cubic-bezier(0.35, 0.95, 0.67, 0.99);
                animation-duration: 0.5s;
                -webkit-animation-duration: 0.5s;
                -moz-animation-duration: 0.5s;
                animation-fill-mode: forwards;
                -webkit-animation-fill-mode: forwards; }

            .stat-bar:nth-of-type(1) .stat-bar-rating {
                animation-delay: 0.25s;
                -webkit-animation-delay: 0.25s; }

            .stat-bar:nth-of-type(2) .stat-bar-rating {
                animation-delay: 0.5s;
                -webkit-animation-delay: 0.5s; }

            .stat-bar:nth-of-type(3) .stat-bar-rating {
                animation-delay: 0.75s;
                -webkit-animation-delay: 0.75s; }

            #weatherWidget .currentDesc {
                color: #ffffff!important;
            }
            .traffic-chart {
                min-height: 335px;
            }
            #flotPie1  {
                height: 150px;
            }
            #flotPie1 td {
                padding:3px;
            }
            #flotPie1 table {
                top: 20px!;
                right: -10px!important;
            }
            .chart-container {
                display: table;
                min-width: 270px ;
                text-align: left;
                padding-top: 10px;
                padding-bottom: 10px;
            }
            #flotLine5  {
                height: 105px;
            }

            #flotBarChart {
                height: 150px;
            }


            .frame {
                --block-size: 40px;
                top: 40px;
                left: 40px;
                margin-left: calc(-4 * var(--block-size));
                margin-top: calc(-3 * var(--block-size));
                height: calc(12 * var(--block-size));
                width: calc(20 * var(--block-size));
                position: relative;
                display: grid;
                grid-template-rows: var(--block-size) calc(12 * var(--block-size)) var(--block-size);
            }

            .board {
                height: calc(12 * var(--block-size));
                width: calc(20 * var(--block-size));
                background: darkgray;
                border-radius: 8px;
                display: grid;
                grid-template-columns: repeat(20, var(--block-size));
                grid-template-rows: repeat(12, var(--block-size))
            }

            .block {
                width: var(--block-size);
                height: var(--block-size);
                border-radius: 3px;
            }

            .empty {
                background: whitesmoke;
            }

            .wall {
                background: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pjxzdmcgdmlld0JveD0iMCAwIDMyIDMyIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjx0aXRsZS8+PGcgZGF0YS1uYW1lPSIxNS1XYWxsIiBpZD0iXzE1LVdhbGwiPjxwYXRoIGQ9Ik0yOSwwSDNBMywzLDAsMCwwLDAsM1YyOWEzLDMsMCwwLDAsMywzSDI5YTMsMywwLDAsMCwzLTNWM0EzLDMsMCwwLDAsMjksMFpNMiwzQTEsMSwwLDAsMSwzLDJIMTVWN0gyWk0yMiw5djZIMTBWOVpNMiw5SDh2NkgyWm0wLDhIMTV2NkgyWk04LDMwSDNhMSwxLDAsMCwxLTEtMVYyNUg4Wm0xNCwwSDEwVjI1SDIyWm04LTFhMSwxLDAsMCwxLTEsMUgyNFYyNWg2Wm0wLTZIMTdWMTdIMzBabTAtOEgyNFY5aDZabTAtOEgxN1YySDI5YTEsMSwwLDAsMSwxLDFaIi8+PC9nPjwvc3ZnPg==');
                box-sizing: border-box;
            }

            .diamond {
                background: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjwhRE9DVFlQRSBzdmcgIFBVQkxJQyAnLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4nICAnaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkJz48c3ZnIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDUxMiA1MTIiIGhlaWdodD0iNTEycHgiIGlkPSJDYWxxdWVfMSIgdmVyc2lvbj0iMS4xIiB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgd2lkdGg9IjUxMnB4IiB4bWw6c3BhY2U9InByZXNlcnZlIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj48Zz48cG9seWdvbiBmaWxsPSIjRUE2MjI2IiBwb2ludHM9IjE5OC4xNTYsMTE5LjYxOCAyMTUuODY3LDExMC4yMDYgMTUyLjY0LDExMC4yMDYgMTg4LjExNCwxMjQuOTUzICAiLz48cG9seWdvbiBmaWxsPSIjRUE2MjI2IiBwb2ludHM9Ijk2LjQyNiwxMjEuNTc4IDU1LjMzMywxNjYuMTM0IDEwNC45MTQsMTY2LjEzNCAgIi8+PHBvbHlnb24gZmlsbD0iI0VBNjIyNiIgcG9pbnRzPSI1NS43OTIsMTg2LjEzNCA3OS40OSwyMTEuMDkyIDk3LjQ3LDE4Ni4xMzQgICIvPjxwb2x5Z29uIGZpbGw9IiNFQTYyMjYiIHBvaW50cz0iMTU1LjMwOSwxNjYuMTM0IDIyNC4wMzQsMTY2LjEzNCAxODguNzYzLDE0Ny4zOTEgICIvPjxwb2x5Z29uIGZpbGw9IiNFQTYyMjYiIHBvaW50cz0iMjU2LDE2MC40NzIgMzAyLjA1MiwxMzYgMjU2LDExMS41MyAyMDkuOTQ4LDEzNiAgIi8+PHBvbHlnb24gZmlsbD0iI0VBNjIyNiIgcG9pbnRzPSIzOTYuMTY5LDExNi41NjMgMzQ2LjIwNSwxMzcuMzM0IDM4Ny43NzUsMTYwLjYyMyAgIi8+PHBvbHlnb24gZmlsbD0iI0VBNjIyNiIgcG9pbnRzPSIyODcuOTY3LDE2Ni4xMzQgMzU2LjY5MSwxNjYuMTM0IDMyMy4yMzYsMTQ3LjM5MiAgIi8+PHBvbHlnb24gZmlsbD0iI0VBNjIyNiIgcG9pbnRzPSI5My41MDUsMjI1Ljg1MyAxMzEuMjAzLDI2NS41NTYgMTEyLjg5NiwxOTguOTM4ICAiLz48cG9seWdvbiBmaWxsPSIjRUE2MjI2IiBwb2ludHM9IjM1OS4zNTksMTEwLjIwNiAyOTYuMTM0LDExMC4yMDYgMzIzLjg4NSwxMjQuOTUzICAiLz48cG9seWdvbiBmaWxsPSIjRUE2MjI2IiBwb2ludHM9IjE2NS43OTQsMTM3LjMzNCAxMTUuODMxLDExNi41NjMgMTI0LjIyNSwxNjAuNjIzICAiLz48cG9seWdvbiBmaWxsPSIjRUE2MjI2IiBwb2ludHM9IjQwNy4wODYsMTY2LjEzNCA0NTYuNjY4LDE2Ni4xMzQgNDE1LjU3NCwxMjEuNTc4ICAiLz48cG9seWdvbiBmaWxsPSIjRUE2MjI2IiBwb2ludHM9IjM4MC43OTgsMjY1LjU1NSA0MTguNDk2LDIyNS44NTMgMzk5LjEwNCwxOTguOTM4ICAiLz48cG9seWdvbiBmaWxsPSIjRUE2MjI2IiBwb2ludHM9IjI0NC40MjksMTg2LjEzNCAxMzUuODE4LDE4Ni4xMzQgMjI1LjE4OSwzMTguNTAxICAiLz48cG9seWdvbiBmaWxsPSIjRUE2MjI2IiBwb2ludHM9IjQzMi41MTEsMjExLjA5MiA0NTYuMjEsMTg2LjEzNCA0MTQuNTMsMTg2LjEzNCAgIi8+PHBhdGggZD0iTTIyMC45NDEsMzQ3Ljk1bC03OC4xNjktMTE1Ljc3NWwxNy42MjIsNjQuMTJsNjcuMDI3LDcwLjU5NWwtNS43OTYtMTQuNjA2ICAgQzIyMS4wNzksMzUwLjkxLDIyMC44NDYsMzQ5LjQyOCwyMjAuOTQxLDM0Ny45NXoiIGZpbGw9IiNFQTYyMjYiLz48cG9seWdvbiBmaWxsPSIjRUE2MjI2IiBwb2ludHM9IjI4Ni44MTIsMzE4LjUwMiAzNzYuMTgyLDE4Ni4xMzQgMjY3LjU3LDE4Ni4xMzQgICIvPjxwb2x5Z29uIGZpbGw9IiNFQTYyMjYiIHBvaW50cz0iMjQxLjIsMzQ3LjM5IDI1NiwzODQuNjgzIDI3MC43OTksMzQ3LjM5IDI1NiwyNDUuNTc1ICAiLz48cGF0aCBkPSJNMjkwLjM3NiwzNTIuMjgybC01Ljc5NiwxNC42MDVsNjcuMDI3LTcwLjU5NGwxNy42MjItNjQuMTIxTDI5MS4wNiwzNDcuOTQ4ICAgQzI5MS4xNTUsMzQ5LjQyMSwyOTAuOTIzLDM1MC45MDYsMjkwLjM3NiwzNTIuMjgyeiIgZmlsbD0iI0VBNjIyNiIvPjwvZz48ZyBvcGFjaXR5PSIwLjMiPjxwb2x5Z29uIHBvaW50cz0iMTkzLjE1MSwxMjIuMjQ2IDE4OC4wNzEsMTI0Ljk0NiAxNTIuNjAxLDExMC4yMDYgMTY0LjE3MiwxMTAuMjA2ICAiLz48cG9seWdvbiBwb2ludHM9Ijk4LjM3MiwxMzEuOTc2IDY2Ljg2MSwxNjYuMTM2IDU1LjI5MiwxNjYuMTM2IDk2LjM5MSwxMjEuNTc2ICAiLz48cG9seWdvbiBwb2ludHM9Ijg0LjQ0MSwyMDQuMTU2IDc5LjQ1MSwyMTEuMDg2IDU1Ljc1MiwxODYuMTM2IDY3LjMyMSwxODYuMTM2ICAiLz48cG9seWdvbiBwb2ludHM9IjE5NC42NiwxNTAuNTQ2IDE2Ni44NDIsMTY2LjEzNiAxNTUuMjcxLDE2Ni4xMzYgMTg4LjcyMSwxNDcuMzg2ICAiLz48cG9seWdvbiBwb2ludHM9IjEzMS4xNjEsMjY1LjU1NiA5My40NzEsMjI1Ljg0NiAxMTIuODYxLDE5OC45MzYgMTE2LjA1MiwyMTAuNTY2IDEwNS4wNDIsMjI1Ljg0NiAxMjYuNDUxLDI0OC4zOTYgICIvPjxwb2x5Z29uIHBvaW50cz0iMTM0LjY0MSwxNTQuNzU2IDEyNC4xODEsMTYwLjYxNSAxMTUuNzkyLDExNi41NTYgMTI4LjM2MSwxMjEuNzg2ICAiLz48cG9seWdvbiBwb2ludHM9IjIyNy4yMDEsMzA0LjM5NiAyMjUuMTUxLDMxOC40OTQgMTM1Ljc4MSwxODYuMTM2IDE0Ny4zNTEsMTg2LjEzNiAgIi8+PHBhdGggZD0iTTIyNy4zODEsMzY2Ljg4NmwtNjcuMDI4LTcwLjU5bC0xNy42MjEtNjQuMTJsMTkuNTA5LDI4Ljg5bDkuNjgyLDM1LjIzbDQ4LjgxOCw1MS40MDlsMC4xNiwwLjIzOSAgIGMtMC4wOSwxLjQ3OSwwLjE0MSwyLjk2LDAuNjksNC4zM0wyMjcuMzgxLDM2Ni44ODZ6Ii8+PC9nPjxnIG9wYWNpdHk9IjAuMyI+PHBvbHlnb24gZmlsbD0iI0ZGRkZGRiIgcG9pbnRzPSIzMTguNzI2LDEyMi4yMjIgMzIzLjgwNiwxMjQuOTIyIDM1OS4yNzYsMTEwLjE4MiAzNDcuNzA2LDExMC4xODIgICIvPjxwb2x5Z29uIGZpbGw9IiNGRkZGRkYiIHBvaW50cz0iNDEzLjUwNiwxMzEuOTUyIDQ0NS4wMTYsMTY2LjExMiA0NTYuNTg3LDE2Ni4xMTIgNDE1LjQ4NiwxMjEuNTUyICAiLz48cG9seWdvbiBmaWxsPSIjRkZGRkZGIiBwb2ludHM9IjQyNy40MzYsMjA0LjEzMiA0MzIuNDI3LDIxMS4wNjIgNDU2LjEyNywxODYuMTEyIDQ0NC41NTYsMTg2LjExMiAgIi8+PHBvbHlnb24gZmlsbD0iI0ZGRkZGRiIgcG9pbnRzPSIzMTcuMjE3LDE1MC41MjIgMzQ1LjAzNiwxNjYuMTEyIDM1Ni42MDYsMTY2LjExMiAzMjMuMTU2LDE0Ny4zNjIgICIvPjxwb2x5Z29uIGZpbGw9IiNGRkZGRkYiIHBvaW50cz0iMzgwLjcxNywyNjUuNTMxIDQxOC40MDYsMjI1LjgyMSAzOTkuMDE2LDE5OC45MTIgMzk1LjgyNiwyMTAuNTQyIDQwNi44MzYsMjI1LjgyMSAgICAzODUuNDI3LDI0OC4zNzIgICIvPjxwb2x5Z29uIGZpbGw9IiNGRkZGRkYiIHBvaW50cz0iMzc3LjIzNiwxNTQuNzMyIDM4Ny42OTYsMTYwLjU5MiAzOTYuMDg2LDExNi41MzEgMzgzLjUxNiwxMjEuNzYyICAiLz48cG9seWdvbiBmaWxsPSIjRkZGRkZGIiBwb2ludHM9IjI4NC42NzcsMzA0LjM3IDI4Ni43MjYsMzE4LjQ3MSAzNzYuMDk2LDE4Ni4xMTIgMzY0LjUyNiwxODYuMTEyICAiLz48cGF0aCBkPSJNMjg0LjQ5NiwzNjYuODYybDY3LjAzLTcwLjU5bDE3LjYyLTY0LjEyMWwtMTkuNTEsMjguODkxbC05LjY4MiwzNS4yMjlsLTQ4LjgxOCw1MS40MWwtMC4xNiwwLjI0ICAgYzAuMDksMS40NzktMC4xNDIsMi45NTktMC42OSw0LjMzTDI4NC40OTYsMzY2Ljg2MnoiIGZpbGw9IiNGRkZGRkYiLz48L2c+PGc+PHBvbHlnb24gZmlsbD0ibm9uZSIgcG9pbnRzPSIyNTYsMTA1Ljg2NiAxOTkuMjkyLDEzNS45OTkgMjU2LDE2Ni4xMzMgMzEyLjcwOCwxMzUuOTk5ICAiLz48cG9seWdvbiBmaWxsPSJub25lIiBwb2ludHM9IjEyMC42MTIsMTY4LjM3OCAxNzcuMjE2LDEzNi42NjYgMTA5LjE4MywxMDguMzgzICAiLz48cG9seWdvbiBmaWxsPSJub25lIiBwb2ludHM9IjI3NS45MzksMzQ3Ljk5IDI1NiwyMTAuODE0IDIzNi4wNiwzNDcuOTkgMjU2LDM5OC4yMzggICIvPjxwb2x5Z29uIGZpbGw9Im5vbmUiIHBvaW50cz0iMTg4LjcsMTQxLjY5NSAxMzYuMTU1LDE3MS4xMzMgMjQ0LjA5OCwxNzEuMTMzICAiLz48cG9seWdvbiBmaWxsPSJub25lIiBwb2ludHM9IjI2Ny45MDIsMTcxLjEzMyAzNzUuODQ2LDE3MS4xMzMgMzIzLjMwMSwxNDEuNjk1ICAiLz48cG9seWdvbiBmaWxsPSJub25lIiBwb2ludHM9IjMzNC43ODQsMTM2LjY2NiAzOTEuMzg4LDE2OC4zNzggNDAyLjgxNiwxMDguMzgzICAiLz48cG9seWdvbiBmaWxsPSJub25lIiBwb2ludHM9IjEyNi40MDksMTgxLjEzMyAyMjguMjc4LDMzMi4wMSAyNTAuMjA5LDE4MS4xMzMgICIvPjxwb2x5Z29uIGZpbGw9Im5vbmUiIHBvaW50cz0iMTEwLjk1OCwxNzEuMTMzIDk5LjQ4LDExMC44OTEgNDMuOTIsMTcxLjEzMyAgIi8+PHBvbHlnb24gZmlsbD0ibm9uZSIgcG9pbnRzPSIyNjEuNzkxLDE4MS4xMzMgMjgzLjcyMywzMzIuMDExIDM4NS41OTIsMTgxLjEzMyAgIi8+PHBvbHlnb24gZmlsbD0ibm9uZSIgcG9pbnRzPSIxMTQuOTQ4LDE4Ny41MzUgODcuMDI2LDIyNi4yOSAxNDEuMzA4LDI4My40NTkgICIvPjxwb2x5Z29uIGZpbGw9Im5vbmUiIHBvaW50cz0iMzk3LjA1MiwxODcuNTM1IDM3MC42OTEsMjgzLjQ1OSA0MjQuOTc0LDIyNi4yOSAgIi8+PHBvbHlnb24gZmlsbD0ibm9uZSIgcG9pbnRzPSI0MDQuNzY1LDE4MS4xMzMgNDMxLjk4MSwyMTguOTEgNDY3Ljg1MSwxODEuMTMzICAiLz48cG9seWdvbiBmaWxsPSJub25lIiBwb2ludHM9IjQwMS4wNDMsMTcxLjEzMyA0NjguMDgsMTcxLjEzMyA0MTIuNTIsMTEwLjg5MSAgIi8+PHBhdGggZD0iTTM4Mi4xMTUsMjA0LjE1MmwtOTYuMjU2LDE0Mi41NjNsMC4xNjksMS4xNjFjMC4xMjYsMC44NjQsMC4wMjEsMS43NTEtMC4zMDEsMi41NjNMMjcwLjM4NSwzODkuMSAgIGw4NS43MTItOTAuMjcxTDM4Mi4xMTUsMjA0LjE1MnoiIGZpbGw9Im5vbmUiLz48cG9seWdvbiBmaWxsPSJub25lIiBwb2ludHM9IjMyMy42MjUsMTMwLjQ3NiAzODQuNDE0LDEwNS4yMDQgMjc2LjA2NiwxMDUuMjA0ICAiLz48cGF0aCBkPSJNMjI2LjI3MiwzNTAuNDM5Yy0wLjMyMy0wLjgxMy0wLjQyNi0xLjY5OC0wLjMwMS0yLjU2M2wwLjE2OC0xLjE2bC05Ni4yNTctMTQyLjU2M2wyNi4wMiw5NC42NzggICBsODUuNzExLDkwLjI3MUwyMjYuMjcyLDM1MC40Mzl6IiBmaWxsPSJub25lIi8+PHBvbHlnb24gZmlsbD0ibm9uZSIgcG9pbnRzPSIxMDcuMjM1LDE4MS4xMzMgNDQuMTQ5LDE4MS4xMzMgODAuMDE5LDIxOC45MSAgIi8+PHBvbHlnb24gZmlsbD0ibm9uZSIgcG9pbnRzPSIxODguMzc1LDEzMC40NzYgMjM1LjkzNSwxMDUuMjA0IDEyNy41ODYsMTA1LjIwNCAgIi8+PHBhdGggZD0iTTQ4My4xNzEsMTcyLjc0M2wtNzAuMDI4LTc1LjkzMWMtMC4wMDMtMC4wMDMtMC4wMDgtMC4wMDYtMC4wMTMtMC4wMDljLTAuMTU2LTAuMTctMC4zMjYtMC4zMzItMC41MTItMC40OCAgIGMtMC4wNTYtMC4wNDYtMC4xMTYtMC4wNzktMC4xNzMtMC4xMjFjLTAuMDYzLTAuMDQ2LTAuMTIyLTAuMDktMC4xODgtMC4xMzNjLTAuMjQ3LTAuMTY5LTAuNTA3LTAuMzE5LTAuNzc2LTAuNDM5ICAgYy0wLjAwNS0wLjAwMi0wLjAwOS0wLjAwNS0wLjAxNS0wLjAwN2MtMC4yNzgtMC4xMjMtMC41Ny0wLjIwOS0wLjg2NS0wLjI3OGMtMC4wNy0wLjAxNi0wLjE0MS0wLjAzMS0wLjIwOS0wLjA0NCAgIGMtMC4zMDEtMC4wNTctMC42MDQtMC4wOTMtMC45MDYtMC4wOTRjLTAuMDA4LDAtMC4wMTUtMC4wMDItMC4wMjEtMC4wMDJoLTMwNi45M2MtMC4wMDYsMC0wLjAxMiwwLjAwMi0wLjAxOCwwLjAwMiAgIGMtMC4zMSwwLjAwMS0wLjYxMywwLjAzOC0wLjkxNiwwLjA5NWMtMC4wNjYsMC4wMTMtMC4xMywwLjAyNy0wLjE5NiwwLjA0MmMtMC41OTEsMC4xMzctMS4xNTYsMC4zODItMS42NywwLjcyOSAgIGMtMC4wNjIsMC4wNDEtMC4xMTksMC4wODEtMC4xNzgsMC4xMjdjLTAuMDYsMC4wNDMtMC4xMiwwLjA3Ny0wLjE3OCwwLjEyNWMtMC4xODUsMC4xNDgtMC4zNTQsMC4zMTItMC41MTQsMC40ODEgICBjLTAuMDAyLDAuMDAyLTAuMDA1LDAuMDA0LTAuMDA4LDAuMDA3TDI4LjgzLDE3Mi43NDRjLTEuNzg1LDEuOTM1LTEuNzYzLDQuOTIzLDAuMDQ5LDYuODMzbDIyMi43MTMsMjM0LjU1NyAgIGMwLjg2LDEuNjIsMi41NDIsMi42NjEsNC40MDYsMi42NjFzMy41NDctMS4wNDEsNC40MDYtMi42NjFsMjIyLjcxMy0yMzQuNTU3QzQ4NC45MzIsMTc3LjY2Niw0ODQuOTUzLDE3NC42NzgsNDgzLjE3MSwxNzIuNzQzeiAgICBNOTkuNDgsMTEwLjg5MWwxMS40NzcsNjAuMjQySDQzLjkyTDk5LjQ4LDExMC44OTF6IE0yNjEuNzkxLDE4MS4xMzNoMTIzLjgwMUwyODMuNzIzLDMzMi4wMTFMMjYxLjc5MSwxODEuMTMzeiBNMjI4LjI3OCwzMzIuMDEgICBMMTI2LjQwOSwxODEuMTMzaDEyMy44TDIyOC4yNzgsMzMyLjAxeiBNMTg4LjcsMTQxLjY5NWw1NS4zOTgsMjkuNDM4SDEzNi4xNTVMMTg4LjcsMTQxLjY5NXogTTEyMC42MTIsMTY4LjM3OGwtMTEuNDMtNTkuOTk1ICAgbDY4LjAzMSwyOC4yODNMMTIwLjYxMiwxNjguMzc4eiBNMTk5LjI5MiwxMzUuOTk5TDI1NiwxMDUuODY2bDU2LjcwOCwzMC4xMzNMMjU2LDE2Ni4xMzNMMTk5LjI5MiwxMzUuOTk5eiBNMjU2LDIxMC44MTQgICBsMTkuOTM5LDEzNy4xNzhMMjU2LDM5OC4yMzhsLTE5LjkzOC01MC4yNDZMMjU2LDIxMC44MTR6IE0yNjcuOTAyLDE3MS4xMzNsNTUuMzk2LTI5LjQzOGw1Mi41NDcsMjkuNDM4SDI2Ny45MDJ6IE0zMzQuNzg0LDEzNi42NjYgICBsNjguMDMyLTI4LjI4M2wtMTEuNDI5LDU5Ljk5NUwzMzQuNzg0LDEzNi42NjZ6IE0zMjMuNjI1LDEzMC40NzZsLTQ3LjU1OS0yNS4yNzFoMTA4LjM0OEwzMjMuNjI1LDEzMC40NzZ6IE0xODguMzc1LDEzMC40NzYgICBsLTYwLjc4OS0yNS4yNzFoMTA4LjM1TDE4OC4zNzUsMTMwLjQ3NnogTTEwNy4yMzUsMTgxLjEzM0w4MC4wMTgsMjE4LjkxbC0zNS44NjktMzcuNzc3SDEwNy4yMzV6IE0xMTQuOTQ4LDE4Ny41MzVsMjYuMzYsOTUuOTI0ICAgTDg3LjAyNiwyMjYuMjlMMTE0Ljk0OCwxODcuNTM1eiBNMTI5Ljg4NSwyMDQuMTUybDk2LjI1NywxNDIuNTYzbC0wLjE2OCwxLjE2Yy0wLjEyNSwwLjg2NC0wLjAyMiwxLjc1MSwwLjMwMSwyLjU2M2wxNS4zNDIsMzguNjYxICAgbC04NS43MTEtOTAuMjcxTDEyOS44ODUsMjA0LjE1MnogTTI4NS43MjgsMzUwLjQzOWMwLjMyMS0wLjgxMywwLjQyNy0xLjY5OCwwLjMwMS0yLjU2M2wtMC4xNjktMS4xNjFsOTYuMjU2LTE0Mi41NjMgICBsLTI2LjAxOSw5NC42NzhsLTg1LjcxNCw5MC4yNzFMMjg1LjcyOCwzNTAuNDM5eiBNMzk3LjA1MiwxODcuNTM1bDI3LjkyMiwzOC43NTVsLTU0LjI4Miw1Ny4xNjlMMzk3LjA1MiwxODcuNTM1eiAgICBNNDA0Ljc2NSwxODEuMTMzaDYzLjA4NmwtMzUuODY5LDM3Ljc3N0w0MDQuNzY1LDE4MS4xMzN6IE00MDEuMDQzLDE3MS4xMzNsMTEuNDc5LTYwLjI0Mmw1NS41NjEsNjAuMjQySDQwMS4wNDN6IiBmaWxsPSIjMDEwMTAxIi8+PC9nPjxjaXJjbGUgY3g9IjU1Ljc5MiIgY3k9IjI4My40NTkiIGZpbGw9IiNFQTYyMjYiIHI9IjEyIi8+PGNpcmNsZSBjeD0iMzkuNTA2IiBjeT0iNDQ2LjQ1OSIgZmlsbD0iI0VBNjIyNiIgcj0iMTIiLz48Y2lyY2xlIGN4PSIxNjcuMzA5IiBjeT0iNDQ2LjQ1OSIgZmlsbD0iI0VBNjIyNiIgcj0iMTIiLz48Y2lyY2xlIGN4PSIzODAuNzE3IiBjeT0iNDQ5LjIxMSIgZmlsbD0iI0VBNjIyNiIgcj0iMTIiLz48Y2lyY2xlIGN4PSI0NjguMDgiIGN5PSIyNzcuNzk5IiBmaWxsPSIjRUE2MjI2IiByPSIxMiIvPjxjaXJjbGUgY3g9IjQ1Ni42NjgiIGN5PSI3NS43OTkiIGZpbGw9IiNFQTYyMjYiIHI9IjEyIi8+PGNpcmNsZSBjeD0iMTI1LjIxNyIgY3k9IjUxLjc5OSIgZmlsbD0iI0VBNjIyNiIgcj0iMTIiLz48Y2lyY2xlIGN4PSIyNDEuNjEzIiBjeT0iNTEuNzk5IiBmaWxsPSIjRUE2MjI2IiByPSIxMiIvPjxwb2x5Z29uIGZpbGw9IiNGRUNEMEUiIHBvaW50cz0iMTEyLjYxNSwzNzcuMjYgMTI2LjE2NCwzNTYuODU5IDEwNS4xODQsMzY5LjI4NCA4NC43ODMsMzU1Ljc0MSA5Ny4yMTEsMzc2LjcyIDgzLjY2NCwzOTcuMTE5ICAgMTA0LjY0MywzODQuNjk1IDEyNS4wNDIsMzk4LjIzOCAiLz48cG9seWdvbiBmaWxsPSIjRkVDRDBFIiBwb2ludHM9IjI4My43NjcsNDcwLjcyOSAyOTcuMzE2LDQ1MC4zMjYgMjc2LjMzNiw0NjIuNzU0IDI1NS45MzYsNDQ5LjIxMSAyNjguMzYzLDQ3MC4xODkgMjU0LjgxNyw0OTAuNTg5ICAgMjc1Ljc5NSw0NzguMTYyIDI5Ni4xOTUsNDkxLjcwNSAiLz48cG9seWdvbiBmaWxsPSIjRkVDRDBFIiBwb2ludHM9IjQ0Mi4yNiwzODkuNDQ2IDQ1Ni4wMDgsMzY5LjE3NyA0MzQuOTA2LDM4MS4zOTkgNDE0LjYzOSwzNjcuNjU2IDQyNi44NjEsMzg4Ljc1NSA0MTMuMTE3LDQwOS4wMjMgICA0MzQuMjE2LDM5Ni44MDIgNDU0LjQ4Miw0MTAuNTQzICIvPjxwb2x5Z29uIGZpbGw9IiNGRUNEMEUiIHBvaW50cz0iMzUzLjkwMiw0MC4xNDQgMzY3LjY0OSwxOS44NzYgMzQ2LjU0OSwzMi4wOTcgMzI2LjI4MiwxOC4zNTYgMzM4LjUwNCwzOS40NTQgMzI0Ljc2LDU5LjcyMSAgIDM0NS44NTcsNDcuNTAxIDM2Ni4xMjUsNjEuMjQyICIvPjxwb2x5Z29uIGZpbGw9IiNGRUNEMEUiIHBvaW50cz0iNjMuNDksNjEuNTg3IDc3LjIzNyw0MS4zMTkgNTYuMTM2LDUzLjU0IDM1Ljg2OSwzOS43OTkgNDguMDkxLDYwLjg5NyAzNC4zNDcsODEuMTY0IDU1LjQ0NSw2OC45NDQgICA3NS43MTIsODIuNjg1ICIvPjwvc3ZnPg==');
                background-size: 35px 35px;
                background-color: #cbdbfc;
            }

            .door {
                background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512' style='enable-background:new 0 0 512 512' xml:space='preserve'%3E%3Cpath d='M486.4 494.933h-51.2V8.533c0-5.12-3.413-8.533-8.533-8.533H85.333C80.213 0 76.8 3.413 76.8 8.533v486.4H25.6c-5.12 0-8.533 3.413-8.533 8.533S20.48 512 25.6 512H486.4c5.12 0 8.533-3.413 8.533-8.533s-3.413-8.534-8.533-8.534zm-358.4 0V51.2h256v443.733H128zm273.067 0V42.667c0-5.12-3.413-8.533-8.533-8.533H119.467c-5.12 0-8.533 3.413-8.533 8.533v452.267H93.867V17.067h324.267v477.867h-17.067z'/%3E%3Cpath d='M358.4 247.467h-34.133c-5.12 0-8.533 3.413-8.533 8.533v8.533h-17.067c-5.12 0-8.533 3.413-8.533 8.533 0 5.12 3.413 8.533 8.533 8.533h17.067v8.533c0 5.12 3.413 8.533 8.533 8.533H358.4c5.12 0 8.533-3.413 8.533-8.533V256c0-5.12-3.413-8.533-8.533-8.533zm-8.533 34.133H332.8v-17.067h17.067V281.6z'/%3E%3C/svg%3E");
                background-size: 35pz 35px;
                background-color: saddlebrown;
            }

            .exit {
                background: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pjxzdmcgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgMTI4IDEyODsiIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDEyOCAxMjgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2ZpbGw6IzFDQTJCQjt9Cgkuc3Qxe2ZpbGw6I0VBQzEwMDt9Cjwvc3R5bGU+PGcgaWQ9Il94MzFfMl8zRF9QcmludGluZyIvPjxnIGlkPSJfeDMxXzFfVlJfR2VhciIvPjxnIGlkPSJfeDMxXzBfVmlydHVhbF9yZWFsaXR5Ii8+PGcgaWQ9Il94MzlfX0F1Z21lbnRlZF9yZWFsaXR5Ii8+PGcgaWQ9Il94MzhfX1RlbGVwb3J0Ij48Zz48ZWxsaXBzZSBjbGFzcz0ic3QxIiBjeD0iNjQiIGN5PSI4OCIgcng9IjUyIiByeT0iMjAiLz48Zz48cmVjdCBoZWlnaHQ9IjgiIHdpZHRoPSI4IiB4PSI5MiIgeT0iMjgiLz48cmVjdCBoZWlnaHQ9IjgiIHdpZHRoPSI4IiB4PSIyOCIgeT0iMTYiLz48cmVjdCBoZWlnaHQ9IjgiIHdpZHRoPSI4IiB4PSI0NCIgeT0iNDAiLz48cGF0aCBkPSJNMTEyLDQwdjM1LjJjLTMuMy0yLjMtNy4zLTQuMi0xMi01LjhWNDRoLTh2MjMuMUM4My4zLDY1LDczLjYsNjQsNjQsNjRjLTQsMC04LDAuMi0xMiwwLjVWNTZoLTh2OS41ICAgICBjLTIuNywwLjQtNS40LDEtOCwxLjZWMzJoLTh2MzcuNGMtNC43LDEuNi04LjcsMy41LTEyLDUuOFY1Nkg4djMyYzAsMTUuNiwyOC45LDI0LDU2LDI0czU2LTguNCw1Ni0yNFY0MEgxMTJ6IE0xNiw4OCAgICAgYzAtNSwxMC4zLTExLjUsMjgtMTQuNHYyOC45QzI2LjMsOTkuNSwxNiw5MywxNiw4OHogTTg4LDEwMS43VjgwaC04djIzYy00LjksMC42LTEwLjIsMS0xNiwxYy00LjIsMC04LjItMC4yLTEyLTAuNVY3Mi41ICAgICBjMy44LTAuMyw3LjgtMC41LDEyLTAuNWMyOS43LDAsNDgsOS4zLDQ4LDE2QzExMiw5Mi42LDEwMy4yLDk4LjUsODgsMTAxLjd6Ii8+PC9nPjwvZz48L2c+PGcgaWQ9Il94MzdfX0dsYXNzZXNzIi8+PGcgaWQ9Il94MzZfX0ZvbGRpbmdfcGhvbmUiLz48ZyBpZD0iX3gzNV9fRHJvbmUiLz48ZyBpZD0iX3gzNF9fUmV0aW5hX3NjYW4iLz48ZyBpZD0iX3gzM19fU21hcnR3YXRjaCIvPjxnIGlkPSJfeDMyX19CaW9uaWNfQXJtIi8+PGcgaWQ9Il94MzFfX0NoaXAiLz48L3N2Zz4=') no-repeat;
                background-size: 50px 35px;
                background-position: center center;
                background-color: #ffffff;
                opacity: 0.3;
            }

            .exit.show {
                opacity: 1;
            }

            .player {
                background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 453.11 453.11' style='enable-background:new 0 0 453.11 453.11' xml:space='preserve'%3E%3Ccircle style='fill:%23fff' cx='181.956' cy='133.71' r='23.28'/%3E%3Ccircle style='fill:%23fff' cx='181.956' cy='133.71' r='15.28'/%3E%3Cpath style='fill:%23f9b310' d='M173.556 227.63c-27.6 0-44.08-16.48-44.08-44.08v-64c0-27.6 16.48-44.08 44.08-44.08h105.84c27.6 0 44.08 16.48 44.08 44.08v64c0 27.6-16.48 44.08-44.08 44.08h-105.84zm97.52-117.28c-12.857 0-23.28 10.423-23.28 23.28s10.423 23.28 23.28 23.28 23.28-10.423 23.28-23.28c-.044-12.839-10.441-23.236-23.28-23.28zm-89.12 0c-12.857 0-23.28 10.423-23.28 23.28s10.423 23.28 23.28 23.28 23.28-10.423 23.28-23.28c-.044-12.839-10.441-23.236-23.28-23.28z'/%3E%3Ccircle style='fill:%23fff' cx='138.596' cy='411.55' r='13.36'/%3E%3Cpath style='fill:%23f9b310' d='M119.156 180.03c-18.778-5.677-29.398-25.502-23.72-44.28 3.44-11.378 12.343-20.28 23.72-23.72l10.32-3.12v74.32l-10.32-3.2zM323.556 108.91l10.32 3.12c18.778 5.677 29.398 25.502 23.72 44.28-3.44 11.378-12.343 20.28-23.72 23.72l-10.32 3.12v-74.24z'/%3E%3Ccircle style='fill:%23fff' cx='271.076' cy='133.71' r='23.28'/%3E%3Ccircle style='fill:%23fff' cx='271.076' cy='133.71' r='15.28'/%3E%3Ccircle style='fill:%23f9b310' cx='226.516' cy='26.51' r='18.08'/%3E%3Cpath style='fill:%23f9b310' d='m129.876 250.91-.48 126.08h193.68V251.63l-193.2-.72zM121.076 445.39c-18.711.909-34.617-13.522-35.527-32.233-.909-18.711 13.522-34.617 32.233-35.527 1.097-.053 2.196-.053 3.293 0h210.88c18.711-.909 34.617 13.522 35.527 32.233.909 18.711-13.522 34.617-32.233 35.527-1.097.053-2.196.053-3.293 0h-210.88zm193.44-47.2c-7.379 0-13.36 5.981-13.36 13.36s5.981 13.36 13.36 13.36 13.36-5.981 13.36-13.36-5.981-13.36-13.36-13.36zm-88 0c-7.379 0-13.36 5.981-13.36 13.36s5.981 13.36 13.36 13.36 13.36-5.981 13.36-13.36-5.981-13.36-13.36-13.36zm-88 0c-7.379 0-13.36 5.981-13.36 13.36s5.981 13.36 13.36 13.36 13.36-5.981 13.36-13.36-5.981-13.36-13.36-13.36z'/%3E%3Ccircle style='fill:%23fff' cx='314.436' cy='411.55' r='13.36'/%3E%3Ccircle style='fill:%23fff' cx='226.516' cy='411.55' r='13.36'/%3E%3Cpath style='fill:%2358171d' d='M181.956 164.99c17.275 0 31.28-14.005 31.28-31.28s-14.005-31.28-31.28-31.28-31.28 14.005-31.28 31.28c.044 17.257 14.023 31.236 31.28 31.28zm0-46.64c8.439 0 15.28 6.841 15.28 15.28s-6.841 15.28-15.28 15.28-15.28-6.841-15.28-15.28 6.841-15.28 15.28-15.28zM271.076 164.99c17.275 0 31.28-14.005 31.28-31.28s-14.005-31.28-31.28-31.28-31.28 14.005-31.28 31.28c.044 17.257 14.023 31.236 31.28 31.28zm0-46.64c8.439 0 15.28 6.841 15.28 15.28s-6.841 15.28-15.28 15.28-15.28-6.841-15.28-15.28 6.841-15.28 15.28-15.28z'/%3E%3Cpath style='fill:%2358171d' d='M121.716 188.99c2.48 34.24 27.92 46.64 51.84 46.64h105.84c35.68 0 50-23.2 51.84-46.64 23.707-4.218 39.507-26.856 35.289-50.563-3.332-18.73-18.424-33.137-37.289-35.597-5.2-19.04-20.08-35.2-49.84-35.2h-44.88V50.91c13.709-4.418 21.241-19.114 16.823-32.823S232.225-3.154 218.516 1.264s-21.241 19.113-16.823 32.823c2.574 7.988 8.835 14.248 16.823 16.823v16h-44.96c-21.04 0-43.28 9.68-50 35.2-23.871 3.164-40.657 25.08-37.493 48.951 2.499 18.851 16.926 33.908 35.653 37.209v.72zm209.84-69.28c14.558 4.366 22.82 19.708 18.454 34.266-2.658 8.863-9.592 15.796-18.454 18.454v-52.72zm-115.2-92.8c-.221-5.563 4.11-10.251 9.672-10.472 5.563-.221 10.251 4.11 10.472 9.672s-4.11 10.251-9.672 10.472c-.104.004-.208.007-.312.008-5.429.006-9.904-4.257-10.16-9.68zm-78.88 92.8c0-31.44 22.64-36.08 36.08-36.08h105.84c31.44 0 36.08 22.64 36.08 36.08v64c0 13.52-4.72 36.08-36.08 36.08h-105.84c-13.52 0-36.08-4.72-36.08-36.08v-64zm-16 0v52.72c-14.558-4.366-22.82-19.708-18.454-34.266 2.658-8.863 9.591-15.796 18.454-18.454z'/%3E%3Cpath style='fill:%2358171d' d='M271.076 185.79h-89.12c-4.418 0-8 3.582-8 8s3.582 8 8 8h89.12c4.418 0 8-3.582 8-8s-3.582-8-8-8z'/%3E%3Cpath style='fill:%23fff' d='M247.796 304.83h-28.16l33.2-27.12c3.402-2.85 3.85-7.918 1-11.32s-7.918-3.85-11.32-1l-50.4 41.52c-3.446 2.765-3.999 7.8-1.234 11.246 1.526 1.902 3.836 3.004 6.274 2.994h29.36l-34.64 30.4c-2.855 3.372-2.435 8.42.937 11.275 2.755 2.332 6.73 2.531 9.703.485l50.64-44.48c3.314-2.922 3.631-7.978.709-11.292-1.516-1.719-3.697-2.705-5.989-2.708h-.08z'/%3E%3Cpath style='fill:%2358171d' d='M138.516 390.19c-11.797 0-21.36 9.563-21.36 21.36 0 11.797 9.563 21.36 21.36 21.36s21.36-9.563 21.36-21.36c0-11.797-9.563-21.36-21.36-21.36zm0 26.72c-2.96 0-5.36-2.4-5.36-5.36 0-2.96 2.4-5.36 5.36-5.36s5.36 2.4 5.36 5.36c0 2.96-2.4 5.36-5.36 5.36zM226.516 390.19c-11.797 0-21.36 9.563-21.36 21.36s9.563 21.36 21.36 21.36c11.797 0 21.36-9.563 21.36-21.36 0-11.797-9.563-21.36-21.36-21.36zm0 26.72c-2.96 0-5.36-2.4-5.36-5.36 0-2.96 2.4-5.36 5.36-5.36 2.96 0 5.36 2.4 5.36 5.36 0 2.96-2.4 5.36-5.36 5.36zM293.076 411.55c0 11.797 9.563 21.36 21.36 21.36 11.797 0 21.36-9.563 21.36-21.36 0-11.766-9.515-21.316-21.28-21.36-11.797-.044-21.396 9.483-21.44 21.28v.08zm26.72 0c0 2.96-2.4 5.36-5.36 5.36s-5.36-2.4-5.36-5.36 2.4-5.36 5.36-5.36c2.96 0 5.36 2.4 5.36 5.36z'/%3E%3Cpath style='fill:%2358171d' d='m403.796 297.87-6.48-11.68c-26.08-45.84-78.4-43.28-82.8-43.28h-176c-4.72 0-56.96-2.88-83.2 43.04l-6.4 11.6c-14.597 2.581-25.188 15.337-25.04 30.16 0 4.418 3.582 8 8 8s8-3.582 8-8c0-7.931 6.429-14.36 14.36-14.36s14.36 6.429 14.36 14.36c0 4.418 3.582 8 8 8s8-3.582 8-8c-.013-12.013-7.098-22.892-18.08-27.76l3.2-5.76c11.081-18.788 30.269-31.354 51.92-34v109.12h-.4c-23.13 1.011-41.06 20.581-40.049 43.711.949 21.713 18.336 39.1 40.049 40.049h210.72c23.13 1.011 42.7-16.92 43.711-40.049 1.011-23.13-16.92-42.7-40.049-43.711-1.22-.053-2.441-.053-3.661 0h-.4V260.19c21.608 2.646 40.776 15.139 51.92 33.84l3.28 5.92c-11.045 4.82-18.2 15.709-18.24 27.76 0 4.418 3.582 8 8 8s8-3.582 8-8c0-7.931 6.429-14.36 14.36-14.36 7.931 0 14.36 6.429 14.36 14.36 0 4.418 3.582 8 8 8s8-3.582 8-8c-.042-14.83-10.805-27.453-25.441-29.84zm-265.92-38.96h177.68v110.4h-177.68v-110.4zm194.08 126.72c14.293-.795 26.524 10.148 27.319 24.441.795 14.293-10.148 26.524-24.441 27.319-.959.053-1.92.053-2.879 0h-210.88c-14.293-.795-25.236-13.026-24.441-27.319.733-13.183 11.258-23.707 24.441-24.441h210.881z'/%3E%3C/svg%3E");
                background-position: center center;
                background-size: 45px 45px;
                background-color: whitesmoke
            }

            .header .diamond {
                background-color: transparent;
                float: right;
            }

            .diamond-count,
            .footer {
                color: #cbdbfc;
                font-family: Sans;
            }

            .diamond-count {
                float: right;
            }

            .footer {
                text-align: center
            }

            .help {
                float: left;
                font-size: 0.9em;
                color: #cbdbfc;
                line-height: var(--block-size)
            }

            .bye {
                animation: 1s linear teleport;
                animation-fill-mode: forwards;
            }

            @keyframes teleport {
                0% {
                    opacity: 1;
                }
                80% {
                    opacity: 0;
                }
                100% {
                    background: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pjxzdmcgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgMTI4IDEyODsiIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDEyOCAxMjgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2ZpbGw6IzFDQTJCQjt9Cgkuc3Qxe2ZpbGw6I0VBQzEwMDt9Cjwvc3R5bGU+PGcgaWQ9Il94MzFfMl8zRF9QcmludGluZyIvPjxnIGlkPSJfeDMxXzFfVlJfR2VhciIvPjxnIGlkPSJfeDMxXzBfVmlydHVhbF9yZWFsaXR5Ii8+PGcgaWQ9Il94MzlfX0F1Z21lbnRlZF9yZWFsaXR5Ii8+PGcgaWQ9Il94MzhfX1RlbGVwb3J0Ij48Zz48ZWxsaXBzZSBjbGFzcz0ic3QxIiBjeD0iNjQiIGN5PSI4OCIgcng9IjUyIiByeT0iMjAiLz48Zz48cmVjdCBoZWlnaHQ9IjgiIHdpZHRoPSI4IiB4PSI5MiIgeT0iMjgiLz48cmVjdCBoZWlnaHQ9IjgiIHdpZHRoPSI4IiB4PSIyOCIgeT0iMTYiLz48cmVjdCBoZWlnaHQ9IjgiIHdpZHRoPSI4IiB4PSI0NCIgeT0iNDAiLz48cGF0aCBkPSJNMTEyLDQwdjM1LjJjLTMuMy0yLjMtNy4zLTQuMi0xMi01LjhWNDRoLTh2MjMuMUM4My4zLDY1LDczLjYsNjQsNjQsNjRjLTQsMC04LDAuMi0xMiwwLjVWNTZoLTh2OS41ICAgICBjLTIuNywwLjQtNS40LDEtOCwxLjZWMzJoLTh2MzcuNGMtNC43LDEuNi04LjcsMy41LTEyLDUuOFY1Nkg4djMyYzAsMTUuNiwyOC45LDI0LDU2LDI0czU2LTguNCw1Ni0yNFY0MEgxMTJ6IE0xNiw4OCAgICAgYzAtNSwxMC4zLTExLjUsMjgtMTQuNHYyOC45QzI2LjMsOTkuNSwxNiw5MywxNiw4OHogTTg4LDEwMS43VjgwaC04djIzYy00LjksMC42LTEwLjIsMS0xNiwxYy00LjIsMC04LjItMC4yLTEyLTAuNVY3Mi41ICAgICBjMy44LTAuMyw3LjgtMC41LDEyLTAuNWMyOS43LDAsNDgsOS4zLDQ4LDE2QzExMiw5Mi42LDEwMy4yLDk4LjUsODgsMTAxLjd6Ii8+PC9nPjwvZz48L2c+PGcgaWQ9Il94MzdfX0dsYXNzZXNzIi8+PGcgaWQ9Il94MzZfX0ZvbGRpbmdfcGhvbmUiLz48ZyBpZD0iX3gzNV9fRHJvbmUiLz48ZyBpZD0iX3gzNF9fUmV0aW5hX3NjYW4iLz48ZyBpZD0iX3gzM19fU21hcnR3YXRjaCIvPjxnIGlkPSJfeDMyX19CaW9uaWNfQXJtIi8+PGcgaWQ9Il94MzFfX0NoaXAiLz48L3N2Zz4=') no-repeat;
                    background-size: 50px 35px;
                    background-position: center center;
                    background-color: #cbdbfc;
                }
            }
        </style>
    </head>

<body>

<!-- Right Panel -->
<div id="right-panel" class="right-panel">
    <!-- Header-->
    <header id="header" class="header">
        <div class="top-left">
            <div class="navbar-header">
                <a class="navbar-brand" href="./"><img src="images/logo.png" alt="Logo"></a>

            </div>
        </div>
    </header>
    <!-- /#header -->
    <!-- Content -->
    <div class="content">
        <!-- Animated -->
    </div>
    <div class="animated fadeIn">
        <!-- Orders -->
        <div class="orders">
            <div class="row">
                <div class="col-xl-8">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="box-title">Explore Map </h4>
                            <hr style = margin-bottom:5px>
                            <div class="frame" style ="margin: 0px 25% 5% 25%">
                                <div class="header">
                                </div>
                                <div class="board"></div>
                                <div class="footer">
                                    <div class="info"></div>
                                </div>
                            </div>
                        </div>


                    </div>

                </div>  <!-- /.col-lg-8 -->


                <div class="col-xl-4">
                    <div class="row2">
                        <div class="col-lg-6 col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="box-title">Exploration status. </h4>
                                </div>
                                <div class="card-body--">
                                    <div class="table-stats order-table ov-h">
                                        <table class="table ">
                                            <thead>
                                            <tr>
                                                <th>Room#</th>
                                                <th>People Count</th>
                                                <th>Status</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td> Room.1 </td>
                                                <td> ${human1} </td>
                                                <td>
                                                    <span class="badge badge-complete">${roomStatus1}</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td> Room.2 </td>
                                                <td> ${human2} </td>
                                                <td>
                                                    <span class="badge badge-complete">${roomStatus2}</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td> Room.3 </td>
                                                <td> ${human3} </td>
                                                <td>
                                                    <span class="badge badge-complete">${roomStatus3}</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td> Room.4 </td>
                                                <td> ${human4}</td>
                                                <td>
                                                    <span class="badge badge-pending"> ${roomStatus4} </span>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div> <!-- /.table-stats -->
                                </div>
                            </div> <!-- /.card -->
                        </div>

                        <div class="col-lg-6 col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="box-title">Robot Status </h4>
                                </div>
                                <div class="card-body--">
                                    <div class="table-stats order-table ov-h">
                                        <table class="table ">
                                            <thead>
                                            <tr>
                                                <th class="serial">#</th>
                                                <th class="avatar">Avatar</th>
                                                <th>Name</th>
                                                <th>Location</th>
                                                <th>Status</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td class="serial">1</td>
                                                <td class="avatar">
                                                    <div class="round-img">
                                                        <a href="#"><img class="rounded-circle" src="../../images/avatar/raspbot.jpg" alt=""></a>
                                                    </div>
                                                </td>
                                                <td> #Raspbot 1</td>
                                                <td>  <span class="name">Gate ${robotLocation1}</span> </td>
                                                <td>
                                                    <span class="ml-status-circle proccessed fa"></span>
                                                    <span class="badge badge-complete">${robotStatus2}</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="serial">2</td>
                                                <td class="avatar">
                                                    <div class="round-img">
                                                        <a href="#"><img class="rounded-circle" src="../../images/avatar/raspbot.jpg" alt=""></a>
                                                    </div>
                                                </td>
                                                <td> #Raspbot 2</td>
                                                <td>  <span class="name">Gate ${robotLocation2}</span> </td>
                                                <td>
                                                    <span class="ml-status-circle error fa"></span>
                                                    <span class="badge badge-pending">${robotStatus2}</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="serial">3</td>
                                                <td class="avatar">
                                                    <div class="round-img">
                                                        <a href="#"><img class="rounded-circle" src="../../images/avatar/ADR019.jpg" alt=""></a>
                                                    </div>
                                                </td>
                                                <td> #PicarPro 1</td>
                                                <td>  <span class="name">Not Depart</span> </td>
                                                <td>
                                                    <span class="ml-status-circle proccessed fa"></span>
                                                    <span class="badge badge-pause">${robotStatus3}</span>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div> <!-- /.col-md-4 -->
            </div>
        </div>
        <!-- /.orders -->



        <!-- /#add-category -->
    </div>
    <!-- .animated -->
</div>
<!-- /.content -->
<div class="clearfix"></div>
<!-- Footer -->
<footer class="site-footer">
    <div class="footer-inner bg-white">
        <div class="row">
            <div class="col-sm-6">
                https://github.com/RA-Rpi-Checkpoint/WEB_Backend
            </div>
            <div class="col-sm-6 text-right">
                Designed by <a href="https://colorlib.com">Colorlib</a>
            </div>
        </div>
    </div>
</footer>
<!-- /.site-footer -->
</div>
<!-- /#right-panel -->

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="../../assets/js/main.js"></script>

<!--  Chart js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

<!--Chartist Chart-->
<script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
<script src="../../assets/js/init/weather-init.js"></script>

<script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
<script src="../../assets/js/init/fullcalendar-init.js"></script>
<!--Local Stuff-->
<script>
    jQuery(document).ready(function($) {
        "use strict";

        // Pie chart flotPie1
        var piedata = [
            { label: "Complete", data: [[1,32]], color: '#5c6bc0'},
            { label: "Incomplete", data: [[1,33]], color: '#ef5350'},
        ];

        $.plot('#flotPie1', piedata, {
            series: {
                pie: {
                    show: true,
                    radius: 1,
                    innerRadius: 0.65,
                    label: {
                        show: true,
                        radius: 2/3,
                        threshold: 1
                    },
                    stroke: {
                        width: 0
                    }
                }
            },
            grid: {
                hoverable: true,
                clickable: true
            }
        });
        // Pie chart flotPie1  End
    });
</script>
<script>
    let maze = [
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
        [1, 0, 0, 1, 1, 1, 1, 1, 3, 3, 3, 1, 1, 1, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1],
        [1, 5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 1],
        [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1],
        [1, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
        [1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 5, 1, 1, 1],
        [1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1],
        [1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 2, 1, 1, 1, 1, 1, 0, 0, 0, 1],
        [1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    ]

    let player = [2, 5]
    let bag = 0

    const ROWS = 12
    const COLS = 20

    const EMPTY = 0
    const WALL = 1
    const PLAYER = 2
    const EXIT = 3
    const EXIT_READY = 6
    const DIAMOND = 4
    const door = 5
    const DIAMOND_COUNT = 12

    const DOWN = 40
    const UP = 38
    const LEFT = 37
    const RIGHT = 39

    window.onload = () => {
        createBoard()
        renderMaze()
    }


    const createBoard = () => {
        for (let row = 0; row < ROWS; row++) {
            for (let col = 0; col < COLS; col++) {
                const block = document.createElement('div')
                block.id = `id-${col}-${row}`
                document.querySelector(".board").appendChild(block);
            }
        }
    }

    const renderMaze = () => {

        for (let row = 0; row < ROWS; row++) {
            for (let col = 0; col < COLS; col++) {
                let itemClass = ''
                switch (maze[row][col]) {
                    case PLAYER:
                        itemClass = 'player'; break
                    case WALL:
                        itemClass = 'wall'; break
                    case PLAYER:
                        itemClass = 'human'; break
                    case EXIT:
                        itemClass = 'exit'; break
                    case EXIT_READY:
                        itemClass = 'exit show'; break
                    case DIAMOND:
                        itemClass = 'diamond'; break
                    case door:
                        itemClass = 'door'; break
                    default:
                        itemClass = 'empty'
                }
                const id = `#id-${col}-${row}`

                document.querySelector(id).className = `block ${itemClass}`
            }
        }
    }

</script>
</body>
</html>
