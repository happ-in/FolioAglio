package file;

public class FileDTO {
	String FileName;
	String FileRealName;
	public String getFileName() {
		return FileName;
	}
	public void setFileName(String fileName) {
		FileName = fileName;
	}
	public String getFileRealName() {
		return FileRealName;
	}
	public void setFileRealName(String fileRealName) {
		FileRealName = fileRealName;
	}
	public FileDTO(String fileName, String fileRealName) {
		super();
		FileName = fileName;
		FileRealName = fileRealName;
	}
}
