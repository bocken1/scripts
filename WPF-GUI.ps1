#Build the GUI
[xml]$xaml = @"
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Name="WPFGUI" Title="WPF GUI" WindowStartupLocation = "CenterScreen" 
    Width = "800" Height = "600" ShowInTaskbar = "True">
    <StackPanel > 
        <CheckBox x:Name="Item1" Content = 'Item1'/>
        <CheckBox x:Name="Item2" Content = 'Item2'/>
        <CheckBox x:Name="Item3" Content = 'Item3'/>  
        <TextBox />      
    </StackPanel>

</Window>
"@ 

$reader=(New-Object System.Xml.XmlNodeReader $xaml)
$Window=[Windows.Markup.XamlReader]::Load( $reader )
<#
$window.ToolTip = "This is a window. Cool, isn't it?"

$Window.FontSize = 24
$Window.FontStyle = 'Italic' #"Normal", "Italic", or "Oblique
$Window.FontWeight = 'Bold' #http://msdn.microsoft.com/en-us/library/system.windows.fontweights
$Window.Foreground = 'Red'
$Window.Content = "This is a test!"

$Window.Add_MouseRightButtonDown({
    $Window.close()
})

$Window.Add_Closed({
    Write-Verbose "Performing cleanup"
})



$Window.Add_Loaded({
    Write-Verbose "Starting up application"
})
#>
   
$Item1 = $Window.FindName('Item1')
$Item2 = $Window.FindName('Item2')
$Item3 = $Window.FindName('Item3')

$Window.Showdialog()

$Item1.IsChecked
$Item2.IsChecked
$Item3.IsChecked