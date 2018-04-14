package doyoung.command;

import java.io.File;
import java.io.IOException;
import java.util.Random;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileCollecter {

	public FileCollecter() {
	}

	public FileCollecter(ImageCommand command, MultipartFile report) {
		long date = System.currentTimeMillis();
		Random random = new Random();
		int randomInt = random.nextInt(50); /*"/doyoung/"+ */
		String fileName = date + "_" + randomInt;
		
		if(FilenameUtils.getExtension(report.getOriginalFilename()).equals("jpg")) {
			fileName += ".jpg";
		}
		
		if(FilenameUtils.getExtension(report.getOriginalFilename()).equals("png")) {
			fileName +=".png";
		}
		File file = new File("C:\\springws\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\MavenWeb\\doyoung\\"+fileName);
		System.out.println(file.getName());
		try {
			report.transferTo(file);
		} catch (IllegalStateException e) {
			e.printStackTrace();  
		} catch (IOException e) {
			e.printStackTrace();
		}
		command.setPath("\\MavenWeb\\doyoung\\"+fileName);
		command.setFile_name(report.getOriginalFilename());
		command.setP_size(""+report.getSize());
		this.command = command;
		System.out.println(command.getPath());
	}


	private ImageCommand command;
	private MultipartFile report;

	public MultipartFile getReport() {
		return report;
	}

	public void setReport(MultipartFile report) {
		this.report = report;
	}

	public ImageCommand getCommand() {
		return command;
	}

	public void setCommand(ImageCommand command) {
		this.command = command;
	}

}
