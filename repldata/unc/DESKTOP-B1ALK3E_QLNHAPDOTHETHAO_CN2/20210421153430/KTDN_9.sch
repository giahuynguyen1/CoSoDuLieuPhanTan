drop Procedure [dbo].[KTDN]
go

SET QUOTED_IDENTIFIER ON
go
SET ANSI_NULLS ON
go
CREATE proc [dbo].[KTDN](@manv char(10),@tennv char(10))
AS
	BEGIN
		IF EXISTS (SELECT 1 FROM NHANVIEN NV WHERE NV.MANV=@manv AND NV.TENNV=@tennv)
		BEGIN
			RETURN 1;	
		END
		ELSE 
			RETURN 0;
	END

go
