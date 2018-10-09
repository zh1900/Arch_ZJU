<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Buzzer" />
        <signal name="RSTN" />
        <signal name="BTN_y(3:0)" />
        <signal name="BTN_x(4:0)" />
        <signal name="SW(15:0)" />
        <signal name="readn" />
        <signal name="CR" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="seg_clk" />
        <signal name="V5" />
        <signal name="rst" />
        <signal name="clk_100mhz" />
        <signal name="clk_div(20)" />
        <signal name="clk_div(31:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="BTN_OK(3:0)" />
        <signal name="V0" />
        <signal name="RDY" />
        <signal name="led_sout" />
        <signal name="LED_PEN" />
        <signal name="led_clrn" />
        <signal name="led_clk" />
        <signal name="XLXN_21(31:0)" />
        <signal name="XLXN_22(7:0)" />
        <signal name="XLXN_23(7:0)" />
        <signal name="XLXN_24(31:0)" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32(4:0)" />
        <signal name="XLXN_39(8:0)" />
        <signal name="XLXN_40(31:0)" />
        <signal name="XLXN_41(31:0)" />
        <signal name="BTN_OK(3)" />
        <signal name="BTN_OK(2)" />
        <signal name="SW_OK(6:0)" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Output" name="BTN_x(4:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Input" name="readn" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="led_sout" />
        <port polarity="Output" name="LED_PEN" />
        <port polarity="Output" name="led_clrn" />
        <port polarity="Output" name="led_clk" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2017-3-29T16:0:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(142,240,255);fillstyle:Solid" width="256" x="32" y="-140" height="140" />
            <line x2="0" y1="-80" y2="-80" x1="32" />
            <line x2="0" y1="-112" y2="-112" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="320" y1="-112" y2="-112" style="linewidth:W" x1="288" />
            <line x2="320" y1="-32" y2="-32" x1="288" />
        </blockdef>
        <blockdef name="SSeg7_Dev">
            <timestamp>2017-3-29T16:0:0</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="32" />
            <line x2="368" y1="-160" y2="-160" x1="384" />
            <line x2="368" y1="-224" y2="-224" x1="384" />
            <line x2="368" y1="-96" y2="-96" x1="384" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(174,185,255);fillstyle:Solid" width="336" x="32" y="-372" height="360" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="368" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="-336" y2="-336" x1="32" />
            <line x2="0" y1="-304" y2="-304" x1="32" />
            <line x2="0" y1="-272" y2="-272" x1="32" />
        </blockdef>
        <blockdef name="SPIO">
            <timestamp>2017-3-29T16:0:0</timestamp>
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="464" y1="-224" y2="-224" style="linewidth:W" x1="448" />
            <line x2="32" y1="-176" y2="-176" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="64" />
            <line x2="32" y1="-80" y2="-80" x1="64" />
            <line x2="464" y1="-192" y2="-192" style="linewidth:W" x1="448" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="448" />
            <line x2="448" y1="-128" y2="-128" x1="464" />
            <line x2="464" y1="-96" y2="-96" x1="448" />
            <line x2="448" y1="-32" y2="-32" x1="464" />
            <line x2="464" y1="-64" y2="-64" x1="448" />
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-260" height="256" />
        </blockdef>
        <blockdef name="SAnti_jitter">
            <timestamp>2017-3-29T16:0:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="Single">
            <timestamp>2018-5-17T9:0:32</timestamp>
            <rect width="64" x="320" y="212" height="24" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="384" />
        </blockdef>
        <blockdef name="TestModule">
            <timestamp>2018-5-17T8:59:47</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <rect width="64" x="400" y="-364" height="24" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="336" x="64" y="-512" height="576" />
        </blockdef>
        <block symbolname="buf" name="XLXI_1">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="SAnti_jitter" name="XLXI_7">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="clk_div" name="XLXI_8">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin name="SW2" />
            <blockpin signalname="clk_div(31:0)" name="clkdiv(31:0)" />
            <blockpin name="Clk_CPU" />
        </block>
        <block symbolname="SSeg7_Dev" name="XLXI_5">
            <blockpin signalname="XLXN_23(7:0)" name="LES(7:0)" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
            <blockpin signalname="seg_sout" name="seg_sout" />
            <blockpin signalname="seg_clrn" name="seg_clrn" />
            <blockpin signalname="XLXN_22(7:0)" name="point(7:0)" />
            <blockpin signalname="XLXN_21(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="V5" name="SW0" />
            <blockpin signalname="V5" name="flash" />
            <blockpin signalname="seg_clk" name="seg_clk" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_div(20)" name="Start" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_15">
            <blockpin signalname="V0" name="G" />
        </block>
        <block symbolname="SPIO" name="XLXI_6">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_24(31:0)" name="P_Data(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="V5" name="EN" />
            <blockpin signalname="clk_div(20)" name="Start" />
            <blockpin signalname="led_clk" name="led_clk" />
            <blockpin name="GPIOf0(13:0)" />
            <blockpin name="LED_out(15:0)" />
            <blockpin name="counter_set(1:0)" />
            <blockpin signalname="led_clrn" name="led_clrn" />
            <blockpin signalname="LED_PEN" name="LED_PEN" />
            <blockpin signalname="led_sout" name="led_sout" />
        </block>
        <block symbolname="Single" name="XLXI_21">
            <blockpin signalname="XLXN_30" name="clk" />
            <blockpin signalname="XLXN_31" name="rst" />
            <blockpin signalname="XLXN_32(4:0)" name="reg_addr(4:0)" />
            <blockpin signalname="XLXN_40(31:0)" name="reg_data(31:0)" />
            <blockpin signalname="XLXN_39(8:0)" name="PC(8:0)" />
            <blockpin signalname="XLXN_41(31:0)" name="instr(31:0)" />
            <blockpin name="sim(31:0)" />
        </block>
        <block symbolname="TestModule" name="XLXI_22">
            <blockpin signalname="BTN_OK(3)" name="clk_btn" />
            <blockpin signalname="BTN_OK(2)" name="rst_btn" />
            <blockpin signalname="SW_OK(6:0)" name="SW_in(6:0)" />
            <blockpin signalname="XLXN_39(8:0)" name="PC(8:0)" />
            <blockpin signalname="XLXN_41(31:0)" name="instr(31:0)" />
            <blockpin signalname="XLXN_40(31:0)" name="reg_data(31:0)" />
            <blockpin signalname="XLXN_30" name="clk_out" />
            <blockpin signalname="XLXN_31" name="rst_out" />
            <blockpin signalname="XLXN_32(4:0)" name="reg_addr(4:0)" />
            <blockpin signalname="XLXN_21(31:0)" name="Seg_HEX(31:0)" />
            <blockpin signalname="XLXN_22(7:0)" name="Seg_points(7:0)" />
            <blockpin signalname="XLXN_23(7:0)" name="Seg_LES(7:0)" />
            <blockpin signalname="XLXN_24(31:0)" name="LED(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="112" y="2704" name="XLXI_1" orien="R0" />
        <branch name="Buzzer">
            <wire x2="368" y1="2672" y2="2672" x1="336" />
        </branch>
        <iomarker fontsize="28" x="368" y="2672" name="Buzzer" orien="R0" />
        <instance x="640" y="384" name="XLXI_7" orien="R0">
        </instance>
        <branch name="BTN_y(3:0)">
            <wire x2="672" y1="224" y2="224" x1="272" />
        </branch>
        <branch name="BTN_x(4:0)">
            <wire x2="416" y1="288" y2="288" x1="272" />
            <wire x2="416" y1="272" y2="288" x1="416" />
            <wire x2="672" y1="272" y2="272" x1="416" />
        </branch>
        <branch name="readn">
            <wire x2="656" y1="416" y2="416" x1="240" />
            <wire x2="672" y1="352" y2="352" x1="656" />
            <wire x2="656" y1="352" y2="416" x1="656" />
        </branch>
        <iomarker fontsize="28" x="224" y="96" name="RSTN" orien="R180" />
        <iomarker fontsize="28" x="272" y="224" name="BTN_y(3:0)" orien="R180" />
        <iomarker fontsize="28" x="272" y="288" name="BTN_x(4:0)" orien="R180" />
        <branch name="SW(15:0)">
            <wire x2="448" y1="352" y2="352" x1="256" />
            <wire x2="448" y1="320" y2="352" x1="448" />
            <wire x2="672" y1="320" y2="320" x1="448" />
        </branch>
        <iomarker fontsize="28" x="240" y="416" name="readn" orien="R180" />
        <iomarker fontsize="28" x="256" y="352" name="SW(15:0)" orien="R180" />
        <branch name="RSTN">
            <wire x2="656" y1="96" y2="96" x1="224" />
            <wire x2="656" y1="96" y2="160" x1="656" />
            <wire x2="672" y1="160" y2="160" x1="656" />
        </branch>
        <branch name="CR">
            <wire x2="1072" y1="160" y2="160" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="160" name="CR" orien="R0" />
        <instance x="2096" y="1136" name="XLXI_5" orien="R0">
        </instance>
        <branch name="seg_sout">
            <wire x2="2576" y1="912" y2="912" x1="2480" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="2576" y1="976" y2="976" x1="2480" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="2576" y1="1040" y2="1040" x1="2480" />
        </branch>
        <branch name="seg_clk">
            <wire x2="2576" y1="848" y2="848" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2576" y="848" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="2576" y="912" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="2576" y="976" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="2576" y="1040" name="seg_clrn" orien="R0" />
        <instance x="-16" y="2512" name="XLXI_12" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="48" y="2541" type="branch" />
            <wire x2="48" y1="2512" y2="2592" x1="48" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="48" y="2672" type="branch" />
            <wire x2="112" y1="2672" y2="2672" x1="48" />
        </branch>
        <instance x="704" y="672" name="XLXI_8" orien="R0">
        </instance>
        <branch name="rst">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="368" type="branch" />
            <wire x2="1104" y1="368" y2="368" x1="1040" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="592" type="branch" />
            <wire x2="704" y1="592" y2="592" x1="608" />
        </branch>
        <branch name="clk_100mhz">
            <wire x2="336" y1="160" y2="160" x1="240" />
            <wire x2="336" y1="160" y2="192" x1="336" />
            <wire x2="672" y1="192" y2="192" x1="336" />
        </branch>
        <iomarker fontsize="28" x="240" y="160" name="clk_100mhz" orien="R180" />
        <branch name="clk_100mhz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="560" type="branch" />
            <wire x2="704" y1="560" y2="560" x1="608" />
        </branch>
        <branch name="clk_100mhz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="800" type="branch" />
            <wire x2="2096" y1="800" y2="800" x1="2000" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="832" type="branch" />
            <wire x2="2096" y1="832" y2="832" x1="2000" />
        </branch>
        <branch name="clk_div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="864" type="branch" />
            <wire x2="2096" y1="864" y2="864" x1="2000" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="912" type="branch" />
            <wire x2="2096" y1="912" y2="912" x1="2000" />
        </branch>
        <branch name="clk_div(31:0)">
            <wire x2="1120" y1="560" y2="560" x1="1024" />
        </branch>
        <branch name="SW_OK(15:0)">
            <wire x2="1104" y1="336" y2="336" x1="1040" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <wire x2="1104" y1="288" y2="288" x1="1040" />
        </branch>
        <instance x="64" y="2624" name="XLXI_15" orien="R0" />
        <branch name="V0">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="128" y="2448" type="branch" />
            <wire x2="128" y1="2448" y2="2496" x1="128" />
        </branch>
        <branch name="RDY">
            <wire x2="1072" y1="224" y2="224" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="224" name="RDY" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="976" type="branch" />
            <wire x2="2096" y1="976" y2="976" x1="2000" />
        </branch>
        <text style="fontsize:30;fontname:Arial;textcolor:rgb(0,0,128)" x="1124" y="292">BTN_OK(3:0)</text>
        <text style="fontsize:30;fontname:Arial;textcolor:rgb(0,0,128)" x="1128" y="340">SW_OK(15:0)</text>
        <text style="fontsize:30;fontname:Arial;textcolor:rgb(0,0,128)" x="1144" y="564">clkdiv(31:0)</text>
        <instance x="2016" y="384" name="XLXI_6" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2768" y="304" name="led_clk" orien="R0" />
        <iomarker fontsize="28" x="2768" y="368" name="led_sout" orien="R0" />
        <iomarker fontsize="28" x="2768" y="432" name="LED_PEN" orien="R0" />
        <iomarker fontsize="28" x="2768" y="496" name="led_clrn" orien="R0" />
        <branch name="clk_100mhz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="160" type="branch" />
            <wire x2="2048" y1="160" y2="160" x1="1984" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="208" type="branch" />
            <wire x2="2048" y1="208" y2="208" x1="1984" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="256" type="branch" />
            <wire x2="2048" y1="256" y2="256" x1="1984" />
        </branch>
        <branch name="clk_div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="304" type="branch" />
            <wire x2="2048" y1="304" y2="304" x1="1984" />
        </branch>
        <branch name="led_sout">
            <wire x2="2496" y1="288" y2="288" x1="2480" />
            <wire x2="2496" y1="288" y2="304" x1="2496" />
            <wire x2="2592" y1="304" y2="304" x1="2496" />
            <wire x2="2592" y1="304" y2="368" x1="2592" />
            <wire x2="2768" y1="368" y2="368" x1="2592" />
        </branch>
        <branch name="LED_PEN">
            <wire x2="2496" y1="320" y2="320" x1="2480" />
            <wire x2="2496" y1="320" y2="336" x1="2496" />
            <wire x2="2544" y1="336" y2="336" x1="2496" />
            <wire x2="2544" y1="336" y2="432" x1="2544" />
            <wire x2="2768" y1="432" y2="432" x1="2544" />
        </branch>
        <branch name="led_clrn">
            <wire x2="2496" y1="352" y2="352" x1="2480" />
            <wire x2="2496" y1="352" y2="496" x1="2496" />
            <wire x2="2768" y1="496" y2="496" x1="2496" />
        </branch>
        <branch name="led_clk">
            <wire x2="2624" y1="256" y2="256" x1="2480" />
            <wire x2="2624" y1="256" y2="304" x1="2624" />
            <wire x2="2768" y1="304" y2="304" x1="2624" />
        </branch>
        <instance x="672" y="1360" name="XLXI_22" orien="R0">
        </instance>
        <branch name="XLXN_21(31:0)">
            <wire x2="1616" y1="1072" y2="1072" x1="1136" />
            <wire x2="1616" y1="1024" y2="1072" x1="1616" />
            <wire x2="2096" y1="1024" y2="1024" x1="1616" />
        </branch>
        <branch name="XLXN_22(7:0)">
            <wire x2="1632" y1="1136" y2="1136" x1="1136" />
            <wire x2="1632" y1="1056" y2="1136" x1="1632" />
            <wire x2="2096" y1="1056" y2="1056" x1="1632" />
        </branch>
        <branch name="XLXN_23(7:0)">
            <wire x2="1648" y1="1200" y2="1200" x1="1136" />
            <wire x2="1648" y1="1088" y2="1200" x1="1648" />
            <wire x2="2096" y1="1088" y2="1088" x1="1648" />
        </branch>
        <branch name="XLXN_24(31:0)">
            <wire x2="1584" y1="1264" y2="1264" x1="1136" />
            <wire x2="1584" y1="352" y2="1264" x1="1584" />
            <wire x2="2048" y1="352" y2="352" x1="1584" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1232" y1="880" y2="880" x1="1136" />
            <wire x2="1232" y1="880" y2="1584" x1="1232" />
            <wire x2="1312" y1="1584" y2="1584" x1="1232" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1216" y1="944" y2="944" x1="1136" />
            <wire x2="1216" y1="944" y2="1648" x1="1216" />
            <wire x2="1312" y1="1648" y2="1648" x1="1216" />
        </branch>
        <branch name="XLXN_32(4:0)">
            <wire x2="1200" y1="1008" y2="1008" x1="1136" />
            <wire x2="1200" y1="1008" y2="1712" x1="1200" />
            <wire x2="1312" y1="1712" y2="1712" x1="1200" />
        </branch>
        <instance x="1312" y="1680" name="XLXI_21" orien="R0">
        </instance>
        <branch name="XLXN_39(8:0)">
            <wire x2="672" y1="1200" y2="1200" x1="592" />
            <wire x2="592" y1="1200" y2="1504" x1="592" />
            <wire x2="1760" y1="1504" y2="1504" x1="592" />
            <wire x2="1760" y1="1504" y2="1776" x1="1760" />
            <wire x2="1760" y1="1776" y2="1776" x1="1696" />
        </branch>
        <branch name="XLXN_40(31:0)">
            <wire x2="672" y1="1328" y2="1328" x1="608" />
            <wire x2="608" y1="1328" y2="1488" x1="608" />
            <wire x2="1744" y1="1488" y2="1488" x1="608" />
            <wire x2="1744" y1="1488" y2="1712" x1="1744" />
            <wire x2="1744" y1="1712" y2="1712" x1="1696" />
        </branch>
        <branch name="XLXN_41(31:0)">
            <wire x2="672" y1="1392" y2="1392" x1="624" />
            <wire x2="624" y1="1392" y2="1472" x1="624" />
            <wire x2="1728" y1="1472" y2="1472" x1="624" />
            <wire x2="1728" y1="1472" y2="1840" x1="1728" />
            <wire x2="1728" y1="1840" y2="1840" x1="1696" />
        </branch>
        <branch name="BTN_OK(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="1008" type="branch" />
            <wire x2="624" y1="1008" y2="1008" x1="480" />
            <wire x2="672" y1="1008" y2="1008" x1="624" />
        </branch>
        <branch name="BTN_OK(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="1072" type="branch" />
            <wire x2="560" y1="1072" y2="1072" x1="480" />
            <wire x2="672" y1="1072" y2="1072" x1="560" />
        </branch>
        <branch name="SW_OK(6:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="1136" type="branch" />
            <wire x2="672" y1="1136" y2="1136" x1="480" />
        </branch>
    </sheet>
</drawing>