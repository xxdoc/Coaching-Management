VERSION 5.00
Begin VB.Form frm_assoc_sc 
   BackColor       =   &H00F2F2F2&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Student � Course"
   ClientHeight    =   6405
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9795
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6405
   ScaleWidth      =   9795
   Begin VB.CommandButton btnFirst 
      Appearance      =   0  'Flat
      BackColor       =   &H00F2F2F2&
      Height          =   495
      Left            =   3135
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   5760
      Width           =   625
   End
   Begin VB.CommandButton btnPrev 
      Appearance      =   0  'Flat
      BackColor       =   &H00F2F2F2&
      Height          =   495
      Left            =   3765
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   5760
      Width           =   625
   End
   Begin VB.CommandButton btnNext 
      Appearance      =   0  'Flat
      BackColor       =   &H00F2F2F2&
      Height          =   495
      Left            =   4395
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   5760
      Width           =   625
   End
   Begin VB.CommandButton btnLast 
      Appearance      =   0  'Flat
      BackColor       =   &H00F2F2F2&
      Height          =   495
      Left            =   5025
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   5760
      Width           =   625
   End
   Begin VB.CommandButton btnRec_Add 
      BackColor       =   &H00F2F2F2&
      Caption         =   "ADD"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   10
      ToolTipText     =   "Add a NEW Record"
      Top             =   5760
      Width           =   1215
   End
   Begin VB.CommandButton btnRec_Edit 
      BackColor       =   &H00F2F2F2&
      Caption         =   "EDIT"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   11
      ToolTipText     =   "EDIT the currently displayed record"
      Top             =   5760
      Width           =   1215
   End
   Begin VB.CommandButton btnRec_Save 
      BackColor       =   &H00F2F2F2&
      Caption         =   "SAVE"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6000
      Style           =   1  'Graphical
      TabIndex        =   12
      ToolTipText     =   "Save all the changes done to the database"
      Top             =   5760
      Width           =   1215
   End
   Begin VB.CommandButton btnRec_Delete 
      BackColor       =   &H00F2F2F2&
      Caption         =   "DELETE"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7320
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   5760
      Width           =   1095
   End
   Begin VB.CommandButton btnRec_Refresh 
      BackColor       =   &H00F2F2F2&
      Caption         =   "REFRESH"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   8520
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   5760
      Width           =   1095
   End
   Begin VB.Frame frameStudent 
      BackColor       =   &H00F2F2F2&
      Caption         =   "Full Student List"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2295
      Left            =   240
      TabIndex        =   29
      Top             =   2880
      Width           =   4575
      Begin VB.ListBox lstStudents 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         ItemData        =   "frm_student_course.frx":0000
         Left            =   240
         List            =   "frm_student_course.frx":0002
         TabIndex        =   4
         ToolTipText     =   "Student_ID - First_Name Last_Name"
         Top             =   360
         Width           =   3975
      End
   End
   Begin VB.Frame frameCourse 
      BackColor       =   &H00F2F2F2&
      Caption         =   "All Available Courses"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2295
      Left            =   5040
      TabIndex        =   28
      Top             =   2880
      Width           =   4575
      Begin VB.ListBox lstCourses 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         ItemData        =   "frm_student_course.frx":0004
         Left            =   240
         List            =   "frm_student_course.frx":0006
         TabIndex        =   5
         ToolTipText     =   "Course_ID - Class Course_Name Course_Type"
         Top             =   360
         Width           =   3975
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00F2F2F2&
      Caption         =   "Association"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   240
      TabIndex        =   23
      Top             =   1440
      Width           =   9375
      Begin VB.TextBox txtInfo 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   3
         Left            =   6840
         TabIndex        =   3
         Top             =   840
         Width           =   2175
      End
      Begin VB.TextBox txtInfo 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   0
         Left            =   2040
         TabIndex        =   0
         Top             =   360
         Width           =   2175
      End
      Begin VB.TextBox txtInfo 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "MM/dd/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   1
         Left            =   2040
         TabIndex        =   1
         Top             =   840
         Width           =   2175
      End
      Begin VB.TextBox txtInfo 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   2
         Left            =   6840
         TabIndex        =   2
         Top             =   360
         Width           =   2175
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Date Ended :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   5160
         TabIndex        =   27
         Top             =   840
         Width           =   1455
      End
      Begin VB.Label Label50 
         BackColor       =   &H00F2F2F2&
         BackStyle       =   0  'Transparent
         Caption         =   "Student ID :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   360
         TabIndex        =   26
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label Label3 
         BackColor       =   &H00F2F2F2&
         BackStyle       =   0  'Transparent
         Caption         =   "Course ID :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   360
         TabIndex        =   25
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Date Started :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   5160
         TabIndex        =   24
         Top             =   360
         Width           =   1455
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00CCCCCC&
         X1              =   4680
         X2              =   4680
         Y1              =   120
         Y2              =   1320
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00F2F2F2&
      Height          =   735
      Left            =   240
      TabIndex        =   21
      Top             =   600
      Width           =   9375
      Begin VB.ComboBox cmbSearch_Field 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         ItemData        =   "frm_student_course.frx":0008
         Left            =   3600
         List            =   "frm_student_course.frx":000A
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   16
         ToolTipText     =   "Table Field to Search IN"
         Top             =   240
         Width           =   1935
      End
      Begin VB.TextBox txtSearch_Input 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   1080
         TabIndex        =   15
         ToolTipText     =   "Text to search FOR"
         Top             =   240
         Width           =   2415
      End
      Begin VB.ComboBox cmbSearch_Type 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         ItemData        =   "frm_student_course.frx":000C
         Left            =   5640
         List            =   "frm_student_course.frx":000E
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   17
         ToolTipText     =   "Search Types"
         Top             =   240
         Width           =   1095
      End
      Begin VB.CommandButton btnSearch_Submit 
         BackColor       =   &H00F2F2F2&
         Caption         =   "GO"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   8400
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   240
         Width           =   735
      End
      Begin VB.ComboBox cmbSearch_Start 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         ItemData        =   "frm_student_course.frx":0010
         Left            =   6840
         List            =   "frm_student_course.frx":0012
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   18
         ToolTipText     =   "Start searching FROM"
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label Label17 
         BackStyle       =   0  'Transparent
         Caption         =   "Search :"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   22
         Top             =   270
         Width           =   855
      End
   End
   Begin VB.Label lblResult 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00F7F7F7&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   240
      TabIndex        =   30
      Top             =   5400
      Width           =   9375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Students and Associated Courses"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   255
      Left            =   240
      TabIndex        =   20
      Top             =   120
      Width           =   9375
   End
End
Attribute VB_Name = "frm_assoc_sc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public blnEdit, blnAdd As Boolean
Dim sngTemp As Integer, strTemp As String

Private Sub Form_Load()

    btnFirst.Picture = LoadPicture(Dir_Icon & "first.gif")
    btnPrev.Picture = LoadPicture(Dir_Icon & "back.gif")
    btnNext.Picture = LoadPicture(Dir_Icon & "next.gif")
    btnLast.Picture = LoadPicture(Dir_Icon & "last.gif")
    
    List_Students
    List_Courses
    
    Search_Form_Fill
    
    Lock_Controls
    Load_SC_Rec

End Sub

Private Sub Load_SC_Rec()

    Set db_RS(18) = New ADODB.RecordSet
    
    db_SQL = "SELECT student_id, course_id, date_started, date_ended " _
            & "FROM cm_student_course ORDER BY student_id"
    
    objDB.Query db_SQL, db_RS(18)

    ReLoad_SC_Rec

End Sub

Private Sub ReLoad_SC_Rec()

    For i = 0 To 3
        txtInfo(i).text = db_RS(18).fields(i) & ""
        txtInfo(i).Tag = txtInfo(i).text
    Next i
    
    Select_List_Items

End Sub

Private Sub Lock_Controls()

    For i = 0 To 3
        txtInfo(i).Locked = True
    Next i
    
    btnRec_Save.Enabled = False
    btnRec_Delete.Enabled = False

End Sub

Private Sub UnLock_Controls()

    For i = 2 To 3
        txtInfo(i).Locked = False
    Next i

    btnRec_Save.Enabled = True
    'btnRec_Delete.Enabled = True

End Sub

Private Sub Lock_Navigation()

    btnFirst.Enabled = False
    btnPrev.Enabled = False
    btnNext.Enabled = False
    btnLast.Enabled = False
    
    btnRec_Refresh.Enabled = False
    btnSearch_Submit.Enabled = False

End Sub

Private Sub UnLock_Navigation()

    btnFirst.Enabled = True
    btnPrev.Enabled = True
    btnNext.Enabled = True
    btnLast.Enabled = True
    
    btnRec_Refresh.Enabled = True
    btnSearch_Submit.Enabled = True

End Sub

Private Sub btnRec_Add_Click()

    If blnAdd <> True Then
    
        btnRec_Add.Caption = "CANCEL"
        btnRec_Edit.Enabled = False
        
        UnLock_Controls
        Lock_Navigation
        
        For i = 0 To 3
            txtInfo(i).text = ""
        Next i
        
        lstCourses.ListIndex = 0
        lstStudents.ListIndex = 0
            
        blnAdd = True
    
    Else
    
        btnRec_Add.Caption = "ADD"
        btnRec_Edit.Enabled = True
        
        Lock_Controls
        UnLock_Navigation
        btnRec_Refresh_Click
    
        blnAdd = False
    
    End If

End Sub

Private Sub btnRec_Edit_Click()

    If blnEdit <> True Then
    
        btnRec_Edit.Caption = "CANCEL"
        btnRec_Add.Enabled = False
        
        UnLock_Controls
        Lock_Navigation
        
        blnEdit = True
    
    Else
    
        btnRec_Edit.Caption = "EDIT"
        btnRec_Add.Enabled = True
        
        Lock_Controls
        UnLock_Navigation
        btnRec_Refresh_Click
        
        blnEdit = False
    
    End If

End Sub

Private Sub btnRec_Save_Click()

    If blnEdit = True Then

        Set db_RS(20) = New ADODB.RecordSet

        db_SQL = "UPDATE cm_student_course SET " _
                & "STUDENT_ID = " & txtInfo(0).text & ", " _
                & "COURSE_ID = " & txtInfo(1).text & ", " _
                & "DATE_STARTED = TO_DATE('" & txtInfo(2).text & "'), " _
                & "DATE_ENDED = TO_DATE('" & txtInfo(3).text & "') " _
                & "WHERE STUDENT_ID = " & txtInfo(0).Tag _
                & " AND COURSE_ID = " & txtInfo(1).Tag

        objDB.Execute db_SQL, sngTemp

        frm_test3.Show
        frm_test3.fill (db_SQL & " . And sngTemp is = " & sngTemp)

        If sngTemp > 0 Then
            lblResult.Caption = "Data edited / updated accordingly."
        Else
            lblResult.Caption = "Data could NOT be edited / updated."
        End If
        
    ElseIf blnAdd = True Then
    
        Set db_RS(20) = New ADODB.RecordSet
        
        db_SQL = "INSERT INTO cm_student_course" _
                & "(STUDENT_ID, COURSE_ID, DATE_STARTED, DATE_ENDED) " _
                & "VALUES( " _
                & txtInfo(0).text & ", " _
                & txtInfo(1).text & ", TO_DATE('" _
                & txtInfo(2).text & "'), TO_DATE('" _
                & txtInfo(3).text & "'))"
    
        objDB.Execute db_SQL, sngTemp
        
        frm_test3.Show
        frm_test3.fill (db_SQL & " . And sngTemp is = " & sngTemp)
        
        If sngTemp > 0 Then
            lblResult.Caption = "New Data added accordingly."
        Else
            lblResult.Caption = "New Data could NOT be added."
        End If
                
        btnRec_Add_Click
        btnLast_Click
        btnRec_Edit_Click

    End If

End Sub

Private Sub btnFirst_Click()
    objDB.Move "first", db_RS(18)
    ReLoad_SC_Rec
End Sub

Private Sub btnLast_Click()
    objDB.Move "last", db_RS(18)
    ReLoad_SC_Rec
End Sub

Private Sub btnNext_Click()
    objDB.Move "next", db_RS(18)
    ReLoad_SC_Rec
End Sub

Private Sub btnPrev_Click()
    objDB.Move "prev", db_RS(18)
    ReLoad_SC_Rec
End Sub

Private Sub btnRec_Refresh_Click()

    objDB.ReQuery db_RS(18)
    ReLoad_SC_Rec

End Sub

Private Sub List_Students()

    lstStudents.Clear
    
    Set db_RS(21) = New ADODB.RecordSet
    
    db_SQL = "SELECT student_id, first_name, last_name " _
            & "FROM cm_student ORDER BY first_name"
    
    objDB.Query db_SQL, db_RS(21)
    
    With db_RS(21)
        If .RecordCount > 0 Then
        
            For i = 0 To (.RecordCount - 1)
    
                strTemp = Format$(!student_id, "000") & "  -  " & !first_name & " " & !last_name
                
                lstStudents.AddItem strTemp
                objDB.Move "next", db_RS(21)
                
            Next i

        End If
        strTemp = ""
    End With

End Sub

Private Sub List_Courses()

    lstCourses.Clear
    
    Set db_RS(22) = New ADODB.RecordSet
    
    db_SQL = "SELECT course_id, course_name, class, type " _
            & "FROM cm_course ORDER BY class, course_name, type"
    
    objDB.Query db_SQL, db_RS(22)
    
    With db_RS(22)
        If .RecordCount > 0 Then
        
            For i = 0 To (.RecordCount - 1)
    
                strTemp = Format$(!course_id, "00") & " - Class " & !Class _
                        & vbTab & !course_name & vbTab & "(" & !Type & ")"
                        
                lstCourses.AddItem strTemp
                objDB.Move "next", db_RS(22)
                
            Next i

        End If
        strTemp = ""
    End With

End Sub

Private Sub Select_List_Items()

    Select_List_Item lstStudents, txtInfo(0), True
    
    Select_List_Item lstCourses, txtInfo(1), True

End Sub

Private Sub Search_Form_Fill()

    Set db_RS(19) = New ADODB.RecordSet
    
    db_SQL = "SELECT column_name FROM user_tab_cols WHERE table_name = 'CM_STUDENT_COURSE'"
    objDB.Query db_SQL, db_RS(19)
    
    For i = 0 To (db_RS(19).RecordCount - 1)
    
        cmbSearch_Field.AddItem LCase(db_RS(19).fields(0))
        objDB.Move "next", db_RS(19)
        
    Next i
    
    cmbSearch_Type.AddItem "Exact", 0
    cmbSearch_Type.AddItem "Like", 1
    
    cmbSearch_Start.AddItem "Current Record", 0
    cmbSearch_Start.AddItem "Beginning", 1
    
    cmbSearch_Field.ListIndex = 3
    cmbSearch_Type.ListIndex = 1
    cmbSearch_Start.ListIndex = 1

End Sub

Private Sub btnSearch_Submit_Click()

    Search_Recordset Me, db_RS(18)
    ReLoad_SC_Rec

End Sub

Private Sub txtSearch_Input_GotFocus()
    btnSearch_Submit.Default = True
End Sub

Private Sub txtSearch_Input_LostFocus()
    btnSearch_Submit.Default = False
End Sub

Private Sub lstStudents_Click()

    If blnEdit = True Or blnAdd = True Then
        txtInfo(0).text = Get_Identifier(lstStudents.List(lstStudents.ListIndex))
    End If

End Sub

Private Sub lstCourses_Click()

    If blnEdit = True Or blnAdd = True Then
        txtInfo(1).text = Get_Identifier(lstCourses.List(lstCourses.ListIndex))
    End If
    
End Sub

Private Sub lstStudents_DblClick()
    frm_students.View Get_Identifier(lstStudents.List(lstStudents.ListIndex))
End Sub

Private Sub lstCourses_DblClick()
    frm_courses.View Get_Identifier(lstCourses.List(lstCourses.ListIndex))
End Sub
