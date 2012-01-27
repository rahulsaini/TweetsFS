<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <title>New Twitter Design</title>
    <meta content='TweetsFS | User Favorited Tweets' name='description'/>
    <meta content='Favorite Tweets' name='keywords'/>
    <script type="text/javascript" src="/resources/js/jquery-1.7.1.js"></script>
    <script>
        $(document).ready(function() {
            $('.block').click(function() {
                var id = $(this).attr('id');
                var data_id = $(".data").html();
                var panel = $('.panel');
                var panel_width = $('.panel').css('left');
                if (data_id == id) {
                    panel.animate({left: parseInt(panel.css('left'), 0) == 0 ? +panel.outerWidth() : 0});
                }
                else {
                    if (panel_width == '341px') {
                    }
                    else {
                        panel.animate({left: parseInt(panel.css('left'), 0) == 0 ? +panel.outerWidth() : 0});
                    }
                }
                $('.data').html(id);
                return false;
            });
            $('.close').click(function() {
                var panel = $('.panel');
                panel.animate({left: parseInt(panel.css('left'), 0) == 0 ? +panel.outerWidth() : 0});
                return false;
            });
        });
    </script>
    <style>
        body {
            font-family: 'Georgia', Times New Roman, Times, serif;
            background: #f2f2f2;
        }

        h4 {
            padding: 5px;
        }

        a {
            color: #333
        }

        a:hover {
            color: #cc0000
        }

        #container {
            width: 700px;
            margin: 0 auto;
            background-color: #fff;
            min-height: 500px;
            overflow: auto;

            -moz-border-radius: 5px;
            -webkit-border-radius: 6px;
            border: solid 1px #999999;
        }

        .right {
            float: right;
            width: 350px;
        }

        .left {
            float: left;
            background-color: #fff;
            width: 350px;
            min-height: 300px;
            position: relative;
        }

        .block {
            border-bottom: dashed 1px #999999;
            padding: 15px;
            border-right: solid 1px #999999;
        }

        .block:hover {
            background-color: #ffc72e;
            cursor: pointer;

        }

        #panel-frame {
            position: relative;
            max-width: 700px;
            position: fixed;
        }

        .panel {

            background-color: #f2f2f2;
            width: 340px;
            height: 550px;
            margin-top: 20px;
            position: relative;
            position: absolute;
            border: solid 1px #999999;
            border-left: 0px;
            left: 0;
        }

        .data {
            font-size: 176px

        }

        .head {
            background-color: #ffc72e;
            padding: 10px;
            text-align: right;
        }

        #logo {
            width: 700px;
            margin: 0 auto;
            text-align: left;
        }
    </style>
</head>

<body>

<div id='container'>

<div class='right'>
    <h4>TweetsFS | Showing Favorite Tweets.</h4>
</div>
<div id="panel-frame">
    <div class="panel">
        <div class="head">
            <a href="#" class="close">Close</a>
        </div>
        <div class="data" style="padding:20px"></div>
    </div>
</div>
<div class="left">
<div class="block" id="1">
    1
</div>
<div class="block" id="2">
    2
</div>
<div class="block" id="3">
    3
</div>
<div class="block" id="4">
    4
</div>
<div class="block" id="5">
    5
</div>
<div class="block" id="6">
    6
</div>
<div class="block" id="7">
    7
</div>
<div class="block" id="8">
    8
</div>
<div class="block" id="9">
    9
</div>
<div class="block" id="10">
    10
</div>
<div class="block" id="11">
    11
</div>
<div class="block" id="12">
    12
</div>
<div class="block" id="13">
    13
</div>
<div class="block" id="14">
    14
</div>
<div class="block" id="15">
    15
</div>
<div class="block" id="16">
    16
</div>
<div class="block" id="17">
    17
</div>
<div class="block" id="18">
    18
</div>
<div class="block" id="19">
    19
</div>
<div class="block" id="20">
    20
</div>
<div class="block" id="21">
    21
</div>
<div class="block" id="22">
    22
</div>
<div class="block" id="23">
    23
</div>
<div class="block" id="24">
    24
</div>
<div class="block" id="25">
    25
</div>
<div class="block" id="26">
    26
</div>
<div class="block" id="27">
    27
</div>
<div class="block" id="28">
    28
</div>
<div class="block" id="29">
    29
</div>
<div class="block" id="30">
    30
</div>
<div class="block" id="31">
    31
</div>
<div class="block" id="32">
    32
</div>
<div class="block" id="33">
    33
</div>
<div class="block" id="34">
    34
</div>
<div class="block" id="35">
    35
</div>
<div class="block" id="36">
    36
</div>
<div class="block" id="37">
    37
</div>
<div class="block" id="38">
    38
</div>
<div class="block" id="39">
    39
</div>
<div class="block" id="40">
    40
</div>
<div class="block" id="41">
    41
</div>
<div class="block" id="42">
    42
</div>
<div class="block" id="43">
    43
</div>
<div class="block" id="44">
    44
</div>
<div class="block" id="45">
    45
</div>
<div class="block" id="46">
    46
</div>
<div class="block" id="47">
    47
</div>
<div class="block" id="48">
    48
</div>
<div class="block" id="49">
    49
</div>
<div class="block" id="50">
    50
</div>
<div class="block" id="51">
    51
</div>
<div class="block" id="52">
    52
</div>
<div class="block" id="53">
    53
</div>
<div class="block" id="54">
    54
</div>
<div class="block" id="55">
    55
</div>
<div class="block" id="56">
    56
</div>
<div class="block" id="57">
    57
</div>
<div class="block" id="58">
    58
</div>
<div class="block" id="59">
    59
</div>
<div class="block" id="60">
    60
</div>
<div class="block" id="61">
    61
</div>
<div class="block" id="62">
    62
</div>
<div class="block" id="63">
    63
</div>
<div class="block" id="64">
    64
</div>
<div class="block" id="65">
    65
</div>
<div class="block" id="66">
    66
</div>
<div class="block" id="67">
    67
</div>
<div class="block" id="68">
    68
</div>
<div class="block" id="69">
    69
</div>
<div class="block" id="70">
    70
</div>
<div class="block" id="71">
    71
</div>
<div class="block" id="72">
    72
</div>
<div class="block" id="73">
    73
</div>
<div class="block" id="74">
    74
</div>
<div class="block" id="75">
    75
</div>
<div class="block" id="76">
    76
</div>
<div class="block" id="77">
    77
</div>
<div class="block" id="78">
    78
</div>
<div class="block" id="79">
    79
</div>
<div class="block" id="80">
    80
</div>
<div class="block" id="81">
    81
</div>
<div class="block" id="82">
    82
</div>
<div class="block" id="83">
    83
</div>
<div class="block" id="84">
    84
</div>
<div class="block" id="85">
    85
</div>
<div class="block" id="86">
    86
</div>
<div class="block" id="87">
    87
</div>
<div class="block" id="88">
    88
</div>
<div class="block" id="89">
    89
</div>
<div class="block" id="90">
    90
</div>
<div class="block" id="91">
    91
</div>
<div class="block" id="92">
    92
</div>
<div class="block" id="93">
    93
</div>
<div class="block" id="94">
    94
</div>
<div class="block" id="95">
    95
</div>
<div class="block" id="96">
    96
</div>
<div class="block" id="97">
    97
</div>
<div class="block" id="98">
    98
</div>
<div class="block" id="99">
    99
</div>
</div>
</div>
</body>
</html>