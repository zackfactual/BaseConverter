<%@ Page Title="Base Converter | Radish Point" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RadishPoint._Default" %>

<asp:content id="defaultContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <h1>Converter</h1>

        <h2>Origin numeral system:</h2>
        <asp:DropDownList ID="originDropDownList" runat="server">
            <asp:ListItem Value="1" Text="Base 1 (Unary)"></asp:ListItem>
            <asp:ListItem Value="2" Text="Base 2 (Binary)"></asp:ListItem>
            <asp:ListItem Value="3" Text="Base 3 (Ternary)"></asp:ListItem>
            <asp:ListItem Value="4" Text="Base 4 (Quaternary)"></asp:ListItem>
            <asp:ListItem Value="5" Text="Base 5 (Quinary)"></asp:ListItem>
            <asp:ListItem Value="6" Text="Base 6 (Senary)"></asp:ListItem>
            <asp:ListItem Value="7" Text="Base 7 (Septenary)"></asp:ListItem>
            <asp:ListItem Value="8" Text="Base 8 (Octal)"></asp:ListItem>
            <asp:ListItem Value="9" Text="Base 9 (Nonary)"></asp:ListItem>
            <asp:ListItem Selected="True" Value="10" Text="Base 10 (Decimal)"></asp:ListItem>
            <asp:ListItem Value="11" Text="Base 11 (Undecimal)"></asp:ListItem>
            <asp:ListItem Value="12" Text="Base 12 (Duodecimal)"></asp:ListItem>
            <asp:ListItem Value="13" Text="Base 13 (Tridecimal)"></asp:ListItem>
            <asp:ListItem Value="14" Text="Base 14 (Tetradecimal)"></asp:ListItem>
            <asp:ListItem Value="15" Text="Base 15 (Pentadecimal)"></asp:ListItem>
            <asp:ListItem Value="16" Text="Base 16 (Hexadecimal)"></asp:ListItem>
            <asp:ListItem Value="17" Text="Base 17 (Septemdecimal)"></asp:ListItem>
            <asp:ListItem Value="18" Text="Base 18 (Octodecimal)"></asp:ListItem>
            <asp:ListItem Value="19" Text="Base 19 (Nonadecimal)"></asp:ListItem>
            <asp:ListItem Value="20" Text="Base 20 (Vigesimal)"></asp:ListItem>
            <asp:ListItem Value="21" Text="Base 21 (Unvigesimal)"></asp:ListItem>
            <asp:ListItem Value="22" Text="Base 22 (Duovigesimal)"></asp:ListItem>
            <asp:ListItem Value="23" Text="Base 23 (Trivigesimal)"></asp:ListItem>
            <asp:ListItem Value="24" Text="Base 24 (Tetravigesimal)"></asp:ListItem>
            <asp:ListItem Value="25" Text="Base 25 (Pentavigesimal)"></asp:ListItem>
            <asp:ListItem Value="26" Text="Base 26 (Hexavigesimal)"></asp:ListItem>
            <asp:ListItem Value="27" Text="Base 27 (Septemvigesimal)"></asp:ListItem>
            <asp:ListItem Value="28" Text="Base 28 (Octovigesimal)"></asp:ListItem>
            <asp:ListItem Value="29" Text="Base 29 (Nonavigesimal)"></asp:ListItem>
            <asp:ListItem Value="30" Text="Base 30 (Trigesimal)"></asp:ListItem>
            <asp:ListItem Value="31" Text="Base 31 (Untrigesimal)"></asp:ListItem>
            <asp:ListItem Value="32" Text="Base 32 (Duotrigesimal)"></asp:ListItem>
            <asp:ListItem Value="33" Text="Base 33 (Tritrigesimal)"></asp:ListItem>
            <asp:ListItem Value="34" Text="Base 34 (Tetratrigesimal)"></asp:ListItem>
            <asp:ListItem Value="35" Text="Base 35 (Pentatrigesimal)"></asp:ListItem>
            <asp:ListItem Value="36" Text="Base 36 (Hexatrigesimal)"></asp:ListItem>
            <asp:ListItem Value="37" Text="Base 37 (Septemtrigesimal)"></asp:ListItem>
            <asp:ListItem Value="38" Text="Base 38 (Octotrigesimal)"></asp:ListItem>
            <asp:ListItem Value="39" Text="Base 39 (Nonatrigesimal)"></asp:ListItem>
            <asp:ListItem Value="40" Text="Base 40 (Tetragesimal)"></asp:ListItem>
            <asp:ListItem Value="41" Text="Base 41 (Untetragesimal)"></asp:ListItem>
            <asp:ListItem Value="42" Text="Base 42 (Duotetragesimal)"></asp:ListItem>
            <asp:ListItem Value="43" Text="Base 43 (Tritetragesimal)"></asp:ListItem>
            <asp:ListItem Value="44" Text="Base 44 (Tetratetragesimal)"></asp:ListItem>
            <asp:ListItem Value="45" Text="Base 45 (Pentatetragesimal)"></asp:ListItem>
            <asp:ListItem Value="46" Text="Base 46 (Hexatetragesimal)"></asp:ListItem>
            <asp:ListItem Value="47" Text="Base 47 (Septemtetragesimal)"></asp:ListItem>
            <asp:ListItem Value="48" Text="Base 48 (Octotetragesimal)"></asp:ListItem>
            <asp:ListItem Value="49" Text="Base 49 (Nonatetragesimal)"></asp:ListItem>
            <asp:ListItem Value="50" Text="Base 50 (Pentagesimal)"></asp:ListItem>
            <asp:ListItem Value="51" Text="Base 51 (Unpentagesimal)"></asp:ListItem>
            <asp:ListItem Value="52" Text="Base 52 (Duopentagesimal)"></asp:ListItem>
            <asp:ListItem Value="53" Text="Base 53 (Tripentagesimal)"></asp:ListItem>
            <asp:ListItem Value="54" Text="Base 54 (Tetrapentagesimal)"></asp:ListItem>
            <asp:ListItem Value="55" Text="Base 55 (Pentapentagesimal)"></asp:ListItem>
            <asp:ListItem Value="56" Text="Base 56 (Hexapentagesimal)"></asp:ListItem>
            <asp:ListItem Value="57" Text="Base 57 (Septempentagesimal)"></asp:ListItem>
            <asp:ListItem Value="58" Text="Base 58 (Octopentagesimal)"></asp:ListItem>
            <asp:ListItem Value="59" Text="Base 59 (Nonapentagesimal)"></asp:ListItem>
            <asp:ListItem Value="60" Text="Base 60 (Hexagesimal)"></asp:ListItem>
            <asp:ListItem Value="61" Text="Base 61 (Unhexagesimal)"></asp:ListItem>
            <asp:ListItem Value="62" Text="Base 62 (Duohexagesimal)"></asp:ListItem>
            <asp:ListItem Value="63" Text="Base 63 (Trihexagesimal)"></asp:ListItem>
            <asp:ListItem Value="64" Text="Base 64 (Tetrahexagesimal)"></asp:ListItem>
            <asp:ListItem Value="65" Text="Base 65 (Pentahexagesimal)"></asp:ListItem>
            <asp:ListItem Value="66" Text="Base 66 (Hexahexagesimal)"></asp:ListItem>
            <asp:ListItem Value="67" Text="Base 67 (Septemhexagesimal)"></asp:ListItem>
            <asp:ListItem Value="68" Text="Base 68 (Octohexagesimal)"></asp:ListItem>
            <asp:ListItem Value="69" Text="Base 69 (Nonahexagesimal)"></asp:ListItem>
            <asp:ListItem Value="70" Text="Base 70 (Septemgesimal)"></asp:ListItem>
            <asp:ListItem Value="71" Text="Base 71 (Unseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="72" Text="Base 72 (Duoseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="73" Text="Base 73 (Triseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="74" Text="Base 74 (Tetraseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="75" Text="Base 75 (Pentaseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="76" Text="Base 76 (Hexaseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="77" Text="Base 77 (Septemseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="78" Text="Base 78 (Octoseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="79" Text="Base 79 (Nonaseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="80" Text="Base 80 (Octogesimal)"></asp:ListItem>
            <asp:ListItem Value="81" Text="Base 81 (Unoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="82" Text="Base 82 (Duooctogesimal)"></asp:ListItem>
            <asp:ListItem Value="83" Text="Base 83 (Trioctogesimal)"></asp:ListItem>
            <asp:ListItem Value="84" Text="Base 84 (Tetraoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="85" Text="Base 85 (Pentaoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="86" Text="Base 86 (Hexaoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="87" Text="Base 87 (Septemoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="88" Text="Base 88 (Octooctogesimal)"></asp:ListItem>
            <asp:ListItem Value="89" Text="Base 89 (Nonaoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="90" Text="Base 90 (Nonagesimal)"></asp:ListItem>
            <asp:ListItem Value="91" Text="Base 91 (Unnonagesimal)"></asp:ListItem>
            <asp:ListItem Value="92" Text="Base 92 (Duononagesimal)"></asp:ListItem>
            <asp:ListItem Value="93" Text="Base 93 (Trinonagesimal)"></asp:ListItem>
            <asp:ListItem Value="94" Text="Base 94 (Tetranonagesimal)"></asp:ListItem>
            <asp:ListItem Value="95" Text="Base 95 (Pentanonagesimal)"></asp:ListItem>
            <asp:ListItem Value="96" Text="Base 96 (Hexanonagesimal)"></asp:ListItem>
            <asp:ListItem Value="97" Text="Base 97 (Septemnonagesimal)"></asp:ListItem>
            <asp:ListItem Value="98" Text="Base 98 (Octononagesimal)"></asp:ListItem>
            <asp:ListItem Value="99" Text="Base 99 (Nonanonagesimal)"></asp:ListItem>
            <asp:ListItem Value="100" Text="Base 100 (Centesimal)"></asp:ListItem>
        </asp:DropDownList>
        
        <h2>Target numeral system:</h2>
        <asp:DropDownList ID="targetDropDownList" runat="server">
            <asp:ListItem Value="1" Text="Base 1 (Unary)"></asp:ListItem>
            <asp:ListItem Selected="True" Value="2" Text="Base 2 (Binary)"></asp:ListItem>
            <asp:ListItem Value="3" Text="Base 3 (Ternary)"></asp:ListItem>
            <asp:ListItem Value="4" Text="Base 4 (Quaternary)"></asp:ListItem>
            <asp:ListItem Value="5" Text="Base 5 (Quinary)"></asp:ListItem>
            <asp:ListItem Value="6" Text="Base 6 (Senary)"></asp:ListItem>
            <asp:ListItem Value="7" Text="Base 7 (Septenary)"></asp:ListItem>
            <asp:ListItem Value="8" Text="Base 8 (Octal)"></asp:ListItem>
            <asp:ListItem Value="9" Text="Base 9 (Nonary)"></asp:ListItem>
            <asp:ListItem Value="10" Text="Base 10 (Decimal)"></asp:ListItem>
            <asp:ListItem Value="11" Text="Base 11 (Undecimal)"></asp:ListItem>
            <asp:ListItem Value="12" Text="Base 12 (Duodecimal)"></asp:ListItem>
            <asp:ListItem Value="13" Text="Base 13 (Tridecimal)"></asp:ListItem>
            <asp:ListItem Value="14" Text="Base 14 (Tetradecimal)"></asp:ListItem>
            <asp:ListItem Value="15" Text="Base 15 (Pentadecimal)"></asp:ListItem>
            <asp:ListItem Value="16" Text="Base 16 (Hexadecimal)"></asp:ListItem>
            <asp:ListItem Value="17" Text="Base 17 (Septemdecimal)"></asp:ListItem>
            <asp:ListItem Value="18" Text="Base 18 (Octodecimal)"></asp:ListItem>
            <asp:ListItem Value="19" Text="Base 19 (Nonadecimal)"></asp:ListItem>
            <asp:ListItem Value="20" Text="Base 20 (Vigesimal)"></asp:ListItem>
            <asp:ListItem Value="21" Text="Base 21 (Unvigesimal)"></asp:ListItem>
            <asp:ListItem Value="22" Text="Base 22 (Duovigesimal)"></asp:ListItem>
            <asp:ListItem Value="23" Text="Base 23 (Trivigesimal)"></asp:ListItem>
            <asp:ListItem Value="24" Text="Base 24 (Tetravigesimal)"></asp:ListItem>
            <asp:ListItem Value="25" Text="Base 25 (Pentavigesimal)"></asp:ListItem>
            <asp:ListItem Value="26" Text="Base 26 (Hexavigesimal)"></asp:ListItem>
            <asp:ListItem Value="27" Text="Base 27 (Septemvigesimal)"></asp:ListItem>
            <asp:ListItem Value="28" Text="Base 28 (Octovigesimal)"></asp:ListItem>
            <asp:ListItem Value="29" Text="Base 29 (Nonavigesimal)"></asp:ListItem>
            <asp:ListItem Value="30" Text="Base 30 (Trigesimal)"></asp:ListItem>
            <asp:ListItem Value="31" Text="Base 31 (Untrigesimal)"></asp:ListItem>
            <asp:ListItem Value="32" Text="Base 32 (Duotrigesimal)"></asp:ListItem>
            <asp:ListItem Value="33" Text="Base 33 (Tritrigesimal)"></asp:ListItem>
            <asp:ListItem Value="34" Text="Base 34 (Tetratrigesimal)"></asp:ListItem>
            <asp:ListItem Value="35" Text="Base 35 (Pentatrigesimal)"></asp:ListItem>
            <asp:ListItem Value="36" Text="Base 36 (Hexatrigesimal)"></asp:ListItem>
            <asp:ListItem Value="37" Text="Base 37 (Septemtrigesimal)"></asp:ListItem>
            <asp:ListItem Value="38" Text="Base 38 (Octotrigesimal)"></asp:ListItem>
            <asp:ListItem Value="39" Text="Base 39 (Nonatrigesimal)"></asp:ListItem>
            <asp:ListItem Value="40" Text="Base 40 (Tetragesimal)"></asp:ListItem>
            <asp:ListItem Value="41" Text="Base 41 (Untetragesimal)"></asp:ListItem>
            <asp:ListItem Value="42" Text="Base 42 (Duotetragesimal)"></asp:ListItem>
            <asp:ListItem Value="43" Text="Base 43 (Tritetragesimal)"></asp:ListItem>
            <asp:ListItem Value="44" Text="Base 44 (Tetratetragesimal)"></asp:ListItem>
            <asp:ListItem Value="45" Text="Base 45 (Pentatetragesimal)"></asp:ListItem>
            <asp:ListItem Value="46" Text="Base 46 (Hexatetragesimal)"></asp:ListItem>
            <asp:ListItem Value="47" Text="Base 47 (Septemtetragesimal)"></asp:ListItem>
            <asp:ListItem Value="48" Text="Base 48 (Octotetragesimal)"></asp:ListItem>
            <asp:ListItem Value="49" Text="Base 49 (Nonatetragesimal)"></asp:ListItem>
            <asp:ListItem Value="50" Text="Base 50 (Pentagesimal)"></asp:ListItem>
            <asp:ListItem Value="51" Text="Base 51 (Unpentagesimal)"></asp:ListItem>
            <asp:ListItem Value="52" Text="Base 52 (Duopentagesimal)"></asp:ListItem>
            <asp:ListItem Value="53" Text="Base 53 (Tripentagesimal)"></asp:ListItem>
            <asp:ListItem Value="54" Text="Base 54 (Tetrapentagesimal)"></asp:ListItem>
            <asp:ListItem Value="55" Text="Base 55 (Pentapentagesimal)"></asp:ListItem>
            <asp:ListItem Value="56" Text="Base 56 (Hexapentagesimal)"></asp:ListItem>
            <asp:ListItem Value="57" Text="Base 57 (Septempentagesimal)"></asp:ListItem>
            <asp:ListItem Value="58" Text="Base 58 (Octopentagesimal)"></asp:ListItem>
            <asp:ListItem Value="59" Text="Base 59 (Nonapentagesimal)"></asp:ListItem>
            <asp:ListItem Value="60" Text="Base 60 (Hexagesimal)"></asp:ListItem>
            <asp:ListItem Value="61" Text="Base 61 (Unhexagesimal)"></asp:ListItem>
            <asp:ListItem Value="62" Text="Base 62 (Duohexagesimal)"></asp:ListItem>
            <asp:ListItem Value="63" Text="Base 63 (Trihexagesimal)"></asp:ListItem>
            <asp:ListItem Value="64" Text="Base 64 (Tetrahexagesimal)"></asp:ListItem>
            <asp:ListItem Value="65" Text="Base 65 (Pentahexagesimal)"></asp:ListItem>
            <asp:ListItem Value="66" Text="Base 66 (Hexahexagesimal)"></asp:ListItem>
            <asp:ListItem Value="67" Text="Base 67 (Septemhexagesimal)"></asp:ListItem>
            <asp:ListItem Value="68" Text="Base 68 (Octohexagesimal)"></asp:ListItem>
            <asp:ListItem Value="69" Text="Base 69 (Nonahexagesimal)"></asp:ListItem>
            <asp:ListItem Value="70" Text="Base 70 (Septemgesimal)"></asp:ListItem>
            <asp:ListItem Value="71" Text="Base 71 (Unseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="72" Text="Base 72 (Duoseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="73" Text="Base 73 (Triseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="74" Text="Base 74 (Tetraseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="75" Text="Base 75 (Pentaseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="76" Text="Base 76 (Hexaseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="77" Text="Base 77 (Septemseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="78" Text="Base 78 (Octoseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="79" Text="Base 79 (Nonaseptemgesimal)"></asp:ListItem>
            <asp:ListItem Value="80" Text="Base 80 (Octogesimal)"></asp:ListItem>
            <asp:ListItem Value="81" Text="Base 81 (Unoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="82" Text="Base 82 (Duooctogesimal)"></asp:ListItem>
            <asp:ListItem Value="83" Text="Base 83 (Trioctogesimal)"></asp:ListItem>
            <asp:ListItem Value="84" Text="Base 84 (Tetraoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="85" Text="Base 85 (Pentaoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="86" Text="Base 86 (Hexaoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="87" Text="Base 87 (Septemoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="88" Text="Base 88 (Octooctogesimal)"></asp:ListItem>
            <asp:ListItem Value="89" Text="Base 89 (Nonaoctogesimal)"></asp:ListItem>
            <asp:ListItem Value="90" Text="Base 90 (Nonagesimal)"></asp:ListItem>
            <asp:ListItem Value="91" Text="Base 91 (Unnonagesimal)"></asp:ListItem>
            <asp:ListItem Value="92" Text="Base 92 (Duononagesimal)"></asp:ListItem>
            <asp:ListItem Value="93" Text="Base 93 (Trinonagesimal)"></asp:ListItem>
            <asp:ListItem Value="94" Text="Base 94 (Tetranonagesimal)"></asp:ListItem>
            <asp:ListItem Value="95" Text="Base 95 (Pentanonagesimal)"></asp:ListItem>
            <asp:ListItem Value="96" Text="Base 96 (Hexanonagesimal)"></asp:ListItem>
            <asp:ListItem Value="97" Text="Base 97 (Septemnonagesimal)"></asp:ListItem>
            <asp:ListItem Value="98" Text="Base 98 (Octononagesimal)"></asp:ListItem>
            <asp:ListItem Value="99" Text="Base 99 (Nonanonagesimal)"></asp:ListItem>
            <asp:ListItem Value="100" Text="Base 100 (Centesimal)"></asp:ListItem>
        </asp:DropDownList>

        <h2>Number to convert:</h2>
        <asp:TextBox ID="inputTextBox" runat="server"></asp:TextBox>

        <asp:Button ID="convertButton" runat="server" Text="Convert" CssClass="btn btn-primary" OnClick="convertButton_Click" />

        <asp:Label ID="resultLabel" runat="server" Text="Results..."></asp:Label>
        <p class="text-danger">*Results precise up to 324 fractional digits</p>
        <p class="text-danger">*Letters case-sensitive (A = 10, a = 36)</p>

        <h3>Character Key</h3>
        <div class="flex-container">
            <div>0 = 0</div>
            <div>1 = 1</div>
            <div>2 = 2</div>
            <div>3 = 3</div>
            <div>4 = 4</div>
            <div>5 = 5</div>
            <div>6 = 6</div>
            <div>7 = 7</div>
            <div>8 = 8</div>
            <div>9 = 9</div>
            <div>A = 10</div>
            <div>B = 11</div>
            <div>C = 12</div>
            <div>D = 13</div>
            <div>E = 14</div>
            <div>F = 15</div>
            <div>G = 16</div>
            <div>H = 17</div>
            <div>I = 18</div>
            <div>J = 19</div>
            <div>K = 20</div>
            <div>L = 21</div>
            <div>M = 22</div>
            <div>N = 23</div>
            <div>O = 24</div>
            <div>P = 25</div>
            <div>Q = 26</div>
            <div>R = 27</div>
            <div>S = 28</div>
            <div>T = 29</div>
            <div>U = 30</div>
            <div>V = 31</div>
            <div>W = 32</div>
            <div>X = 33</div>
            <div>Y = 34</div>
            <div>Z = 35</div>
            <div>a = 36</div>
            <div>b = 37</div>
            <div>c = 38</div>
            <div>d = 39</div>
            <div>e = 40</div>
            <div>f = 41</div>
            <div>g = 42</div>
            <div>h = 43</div>
            <div>i = 44</div>
            <div>j = 45</div>
            <div>k = 46</div>
            <div>l = 47</div>
            <div>m = 48</div>
            <div>n = 49</div>
            <div>o = 50</div>
            <div>p = 51</div>
            <div>q = 52</div>
            <div>r = 53</div>
            <div>s = 54</div>
            <div>t = 55</div>
            <div>u = 56</div>
            <div>v = 57</div>
            <div>w = 58</div>
            <div>x = 59</div>
            <div>y = 60</div>
            <div>z = 61</div>
            <div>/ = 62</div>
            <div>: = 63</div>
            <div>; = 64</div>
            <div>( = 65</div>
            <div>) = 66</div>
            <div>$ = 67</div>
            <div>&amp; = 68</div>
            <div>@ = 69</div>
            <div>&quot; = 70</div>
            <div>, = 71</div>
            <div>? = 72</div>
            <div>! = 73</div>
            <div>&#39; = 74</div>
            <div>[ = 75</div>
            <div>] = 76</div>
            <div>{ = 77</div>
            <div>} = 78</div>
            <div># = 79</div>
            <div>% = 80</div>
            <div>^ = 81</div>
            <div>* = 82</div>
            <div>+ = 83</div>
            <div>= = 84</div>
            <div>_ = 85</div>
            <div>\ = 86</div>
            <div>| = 87</div>
            <div>~ = 88</div>
            <div>&lt; = 89</div>
            <div>&gt; = 90</div>
            <div>€ = 91</div>
            <div>£ = 92</div>
            <div>¥ = 93</div>
            <div>• = 94</div>
            <div>₽ = 95</div>
            <div>¢ = 96</div>
            <div>₩ = 97</div>
            <div>§ = 98</div>
            <div>¿ = 99</div>
        </div>
    </div>
</asp:content>
