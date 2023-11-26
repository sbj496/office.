Sub ProcessData()

'打开需要读取的数据文件
Workbooks.Open Filename:="D:\Data.xlsx" 

'读取Sheet1中A1:D100的数据范围
Dim data As Range
Set data = Worksheets("Sheet1").Range("A1:D100")

'统计Sheet1中第3列的总数
Dim sum As Double
sum = Application.WorksheetFunction.Sum(Worksheets("Sheet1").Columns(3))

'在Sheet2的A1单元格输出总数
Worksheets("Sheet2").Range("A1").Value = sum 

'关闭打开的数据文件,不保存
Workbooks("Data.xlsx").Close SaveChanges:=False

End Sub
