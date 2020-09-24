VERSION 5.00
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   1245
   ClientLeft      =   270
   ClientTop       =   435
   ClientWidth     =   5145
   LinkTopic       =   "Form1"
   ScaleHeight     =   1245
   ScaleWidth      =   5145
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrRefresh 
      Interval        =   8000
      Left            =   600
      Top             =   0
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   0
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.Label lblUsers 
      AutoSize        =   -1  'True
      Caption         =   "There are currently 0 people using this program!"
      Height          =   195
      Left            =   840
      TabIndex        =   0
      Top             =   600
      Width           =   3360
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'
'   *************************************************************************
'   *************************************************************************
'   ****                                                                 ****
'   ****    Show how many people are using your program                  ****
'   ****    Created by Webmonster aka James                              ****
'   ****    My msn: Webmonster123@Hotmail.com                            ****
'   ****                                                                 ****
'   *************************************************************************
'   *************************************************************************
'


Const URL As String = "your site url here/users.php"

Private Sub Form_Load()
lblUsers.Caption = "There are currently " & Inet1.OpenURL(URL & "?type=1") & " people using this program!"
End Sub

Private Sub tmrRefresh_Timer()
lblUsers.Caption = "Refreshing..."
lblUsers.Caption = "There are currently " & Inet1.OpenURL(URL) & " people using this program!"
End Sub

Private Sub Form_Unload(cancel As Integer)
Inet1.OpenURL (URL & "?type=2")
End Sub
