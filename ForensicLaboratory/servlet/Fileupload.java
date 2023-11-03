package servlet;

import impli.Regimple;
import inter.Reginter;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.extractor.WordExtractor;

import bean.Filebean;

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.parser.PdfTextExtractor;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

/**
 * Servlet implementation class Fileupload
 */
@WebServlet("/Fileupload")
public class Fileupload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fileupload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("fileupload");
		
String pat=request.getParameter("p");
		   
	     String name=request.getParameter("user");
		  
		MultipartParser mp =new MultipartParser(request, 999999999);
		
		Part part = null;
		ArrayList paramValues = new ArrayList();
		
		FilePart filepart = null;
		ParamPart param=null;
		File file1 = null;
		String filepath1 = null;
		String filetype=null;
		String filepath2 = null;
		String filename = null;
		
		long size=0;
		String path=getServletContext().getRealPath("");
		
		System.out.println("path0000000000000000000000=="+path);
		
		
		String editpath=path.substring(0, path.indexOf("."));
		
		System.out.println("edithpath1111111111111111======"+editpath);
		
		String fullpath=editpath+"hospitalmanagement\\WebContent\\local\\";
		
		
		System.out.println("fullpath333333333333333=="+fullpath);
		
		while((part=mp.readNextPart())!=null)
		{
			
			if(part.isFile())
			{
				
				filepart=(FilePart)part;
				
				
			 filename=filepart.getFileName();
				
				System.out.println("filename9999999999999999=="+filename);
				
			 fullpath=fullpath+filename;
				
				System.out.println("fullpath5555555555555555555=="+fullpath);
				
				
				
				File file=new File(fullpath);
			 size=filepart.writeTo(file);
				
				System.out.println("size6666666666666=="+size);
				
		 filetype=filepart.getContentType();
				System.out.println("filetype88888888888---"+filetype);
				
			}
			else if(part.isParam())
			{
				param = (ParamPart) part;
				String tagName =param.getName();
				System.out.println("tagName ============= " + tagName);
				String tagValue = param.getStringValue();
				System.out.println("tagValue ************ " + tagValue);
				 
				paramValues.add(tagValue);
				paramValues.add(tagName);
				
			}
		
		}
			// FileInputStrean get bytes from file

			String filecontent = "";
			String encrpt = null;
			  String encontent = null;
			 

			if (filename.endsWith(".txt")) {// if open

	//file encrypted and store into filepath1
				
				FileInputStream fis = new FileInputStream(fullpath);
				byte[] b = new byte[fis.available()];
				fis.read(b);
				String reading = new String(b);
				filecontent = filecontent + reading;
                System.out.println("filecontent=" + filecontent);
               
                try {//try1 open
                	
                	
        			encontent = AES.encrypt99(filecontent);
        				System.out.println("encontent===="+encontent);
             filepath1 = editpath + "\\hospital management\\WebContent\\Encrypt\\"+filename;
                  file1 = new File(filepath1);
                        file1.createNewFile();
                        if (!file1.exists()) {file1.createNewFile();}// If file doesn't exists, then create it
                        FileWriter fw = new FileWriter(file1.getAbsoluteFile());
        				BufferedWriter bw = new BufferedWriter(fw);
                        bw.write(encontent);// Write in file
                        bw.close();// Close connection
                        System.out.println("fileeeeeeeeeeeeeeeee" + filepath1);
           
              //file decrypted and store into filepath2
                        String decontent= AES.crypt(encontent);
        				System.out.println("decontent===="+decontent);
        		    filepath2 = editpath + "\\hospital management\\WebContent\\Decrypt\\"+filename;
                        File file2 = new File(filepath2);
                        file2.createNewFile();
                        if (!file1.exists()) {file1.createNewFile();}// If file doesn't exists, then create it
                        FileWriter fw1 = new FileWriter(file2.getAbsoluteFile());
        				BufferedWriter bw1 = new BufferedWriter(fw1);
                        bw1.write(decontent);// Write in file
                        bw1.close();// Close connection
                        System.out.println("fileeeeeeeeeeeeeeeee" + filepath2);
           
                        
                        } catch (Exception e) {
					
					e.printStackTrace();
				}
                
                
			}
			else if (filename.endsWith(".docx")) 
			{  
				WordExtractor extractor = null;
				
				FileInputStream fis2=new FileInputStream(fullpath);
				System.out.println("file is"+fis2);
				HWPFDocument document=new HWPFDocument(fis2);
				extractor = new WordExtractor(document);
				String [] fileData = extractor.getParagraphText();
				String mydate=extractor.getTextFromPieces();
				System.out.println("DATASSSSSSSSSSSSSSSSSss "+fileData);
				System.out.println("THE MYYYYYYYYYYY "+mydate);
				String text1=null;
				System.out.println("filedata len  "+fileData.length);
			}
			
			else if(filename.endsWith(".pdf"))
			{ 
				//System.out.println("padf file name"+file1.getName());
			
		
			PdfReader pdfReader=new PdfReader(fullpath);
				String	Text7 = null;
				int pages=pdfReader.getNumberOfPages();
				for(int i1=1;i1<pages;i1++)
				{
					 filecontent=PdfTextExtractor.getTextFromPage(pdfReader, i1);
					System.out.println("page:"+i1+" "+filecontent);
					Text7=Text7+filecontent;
					
				}
				System.out.println("Pdf full content ="+Text7);
		
			try {
				encrpt = Encrypt.encrypt(filecontent);
			Document document=new Document(PageSize.A4);
			/*  File file=new File("C:\\Users\\spiro13\\Desktop\\naga\\"+pdffilename);
			  System.out.println(file.delete());*/
			PdfWriter.getInstance(document, new FileOutputStream(new File(filepath2+filename)));
			//FileOutputStream fileOutputStream=new FileOutputStream("C:\\Users\\spiro13\\Desktop\\naga\\pdffilename1.pdf");
			Chunk chunk=new Chunk(encrpt);
			document.open();
			Font font=new Font();
			font.setStyle(Font.BOLD);
			Paragraph p1=new Paragraph(chunk);
			p1.setAlignment(Element.ALIGN_LEFT);
			document.add(p1);
			document.close();
			System.out.println("pdf writing is completed");
			//fileOutputStream.write(encrpt.getBytes());
			System.out.println(encrpt);
			} catch(Exception e)
			{
				e.printStackTrace();
			}
               
			try {
				
				//try1 open
                	
                
			encontent = AES.encrypt99(filecontent);
				System.out.println("encontent===="+encontent);
     filepath1 = editpath + "\\hospitalmanagement\\WebContent\\Encrypt\\"+filename;
          file1 = new File(filepath1);
                file1.createNewFile();
                if (!file1.exists()) {file1.createNewFile();}// If file doesn't exists, then create it
                FileWriter fw = new FileWriter(file1.getAbsoluteFile());
				BufferedWriter bw = new BufferedWriter(fw);
                bw.write(encontent);// Write in file
                bw.close();// Close connection
                System.out.println("fileeeeeeeeeeeeeeeee" + filepath1);
   
      //file decrypted and store into filepath2
                String decontent= AES.crypt(encontent);
				System.out.println("decontent===="+decontent);
		    filepath2 = editpath + "\\hospitalmanagement\\WebContent\\Decrypt\\"+filename;
                File file2 = new File(filepath2);
                file2.createNewFile();
                if (!file1.exists()) {file1.createNewFile();}// If file doesn't exists, then create it
                FileWriter fw1 = new FileWriter(file2.getAbsoluteFile());
				BufferedWriter bw1 = new BufferedWriter(fw1);
                bw1.write(decontent);// Write in file
                bw1.close();// Close connection
                System.out.println("fileeeeeeeeeeeeeeeee" + filepath2);
   
                
                }// try close
           
			catch (Exception e) {
				System.out.println(e);
			}
			
			}
		
			Filebean b=new Filebean();
			b.setFilename(filename);

			b.setFiletype(filetype);
			
	        b.setSecretkey(paramValues.get(0).toString());
	        
	        
	        System.out.println("secretkey======="+paramValues.get(0).toString());
			b.setFilesize(String.valueOf(size));
		    b.setFilecontent(filecontent);
	        b.setFileencrypt(encontent);
	        b.setDecrypt(filecontent);
	        b.setName(name);
	        b.setPatient(pat);
	        Reginter i=new Regimple();
	
	   	 Reginter dd=new Regimple();
	   	 int j=dd.fileup(b);
	
	if(j==1)
	{
		response.sendRedirect("Doctor_upload_success.jsp");
	}
	else
	{
	System.out.println("error.jsp");
	}
		
		}
	
}
