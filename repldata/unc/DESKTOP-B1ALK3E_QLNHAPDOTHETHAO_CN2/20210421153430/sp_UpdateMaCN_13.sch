drop Procedure [dbo].[sp_UpdateMaCN]
go

SET QUOTED_IDENTIFIER ON
go
SET ANSI_NULLS ON
go
CREATE PROC [dbo].[sp_UpdateMaCN](@manv char(10), @tennv nvarchar(100), @diachi nvarchar(100), @sdt char(10),@macn char(10))
as
	begin
	DELETE FROM NHANVIEN WHERE MANV = @manv
	INSERT INTO LINK.QLNHAPDOTHETHAO.DBO.NHANVIEN(MANV,TENNV,DIACHI,SDT,MACN) values (@manv,@tennv,@diachi,@sdt,@macn)
	end


go
