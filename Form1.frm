VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Menampilkan Bagian Lain dari Form"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5745
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   5745
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox Check1 
      Caption         =   "Check1"
      Height          =   255
      Left            =   1800
      TabIndex        =   1
      Top             =   1560
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1920
      TabIndex        =   0
      Top             =   960
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Resize()
    Check1.Move 20, 20
    Label1.Move 20, Check1.Height + 150
End Sub

Private Sub Check1_Click()
    If Check1.Value = 1 Then
        Form1.Height = 600 + Check1.Height + _
                       Label1.Height
    Else
        Form1.Height = 600 + Check1.Height - 30
    End If
End Sub

Private Sub Form_Load()
    Check1.Caption = "Tampilkan..."
    Label1.Caption = "Terima kasih..."
    Form1.Height = 600 + Check1.Height - 30
End Sub



