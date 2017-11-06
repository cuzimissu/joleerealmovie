package movie;

import java.io.File;

public class PicFile {

	void fileDelete(ReviewVO re )
	{
		if(re.sysfile!=null && !re.sysfile.equals("")&& !re.sysfile.equals("null"))
		{
			File ff = new File(re.path+"\\"+re.sysfile);
			ff.delete();
		}
	}
}
