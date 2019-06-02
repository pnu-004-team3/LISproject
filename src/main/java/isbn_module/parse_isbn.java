package isbn_module;

import java.util.Scanner;
import java.io.BufferedReader;

import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;
 
import org.w3c.dom.Document;

import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import java.io.IOException;


 
public class parse_isbn {
    
   public static String isbn_a(String str) throws IOException {
       
       
        BufferedReader br 
        = null;
        //DocumentBuilderFactory 생성
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        DocumentBuilder builder;
        Document doc = null;
        
        // 각각 정보를 저장할 변수 
        String isbn = null;
        
        
        
        
        try {
           
           String decoded_str = "";
           String temp_str = "";
           byte[] bytes = str.getBytes(); 
           for (byte b : bytes) { 
              temp_str = String.format("0x%02X ", b); // "0x44 "
              temp_str = "%"+ temp_str.substring(2, 4);
              decoded_str += temp_str;
              } 

           // 입력부분에 맞게 마지막 부분을 isbn이나 title로 변경 가능 
            String urlstr = "http://www.nl.go.kr/app/nl/search/openApi/search.jsp?"
                  + "key=dfdb67353df57e9dee518c45c8bd28d7&category=dan&detailSearch=true&f1="
                  + "title&v1=" + decoded_str;
            
            URL url = new URL(urlstr);
            HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
            
            //응답 읽기
            br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
            String result = "";
            String line;
            while ((line = br.readLine()) != null) {
                result = result + line.trim();// result = URL로 XML을 읽은 값
            }

            
            // xml 파싱하기
            InputSource is = new InputSource(new StringReader(result));
            builder = factory.newDocumentBuilder();
            doc = builder.parse(is);
            XPathFactory xpathFactory = XPathFactory.newInstance();
            XPath xpath = xpathFactory.newXPath();
            

            
            XPathExpression expr_isbn = xpath.compile("//item/isbn");   // 다른 정보 추가하려면 한 블락 복사 후에 xml 엘리멘트 하나 잡아서 똑같이 해주시면 됩니다.
            {
               NodeList nodeList_isbn = (NodeList) expr_isbn.evaluate(doc, XPathConstants.NODESET);
               NodeList child = nodeList_isbn.item(0).getChildNodes();
               Node node = child.item(0);
               System.out.println(node.getTextContent());
               
             // 1권,2권 이렇게 있는 경우 isbn이 여러 개 나올 경우가 있음. ex) 만화 토지
               // 그래서 임시적으로 맨 처음 isbn만 저장 되도록 해놓음.
               String string = node.getTextContent();
               String[] strings = string.split(" ");
             isbn = strings[0];  
            }
          
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return isbn;
    }
   
   public static String author(String str) throws IOException {
       
       
        BufferedReader br 
        = null;
        //DocumentBuilderFactory 생성
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        DocumentBuilder builder;
        Document doc = null;
        
        // 각각 정보를 저장할 변수 
        String author = null;
        
      
        
        
        try {
           
           String decoded_str = "";
           String temp_str = "";
           byte[] bytes = str.getBytes(); 
           for (byte b : bytes) { 
              temp_str = String.format("0x%02X ", b); // "0x44 "
              temp_str = "%"+ temp_str.substring(2, 4);
              decoded_str += temp_str;
              } 

           // 입력부분에 맞게 마지막 부분을 isbn이나 title로 변경 가능 
            String urlstr = "http://www.nl.go.kr/app/nl/search/openApi/search.jsp?"
                  + "key=dfdb67353df57e9dee518c45c8bd28d7&category=dan&detailSearch=true&f1="
                  + "title&v1=" + decoded_str;
            
            URL url = new URL(urlstr);
            HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
            
            //응답 읽기
            br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
            String result = "";
            String line;
            while ((line = br.readLine()) != null) {
                result = result + line.trim();// result = URL로 XML을 읽은 값
            }

            
            // xml 파싱하기
            InputSource is = new InputSource(new StringReader(result));
            builder = factory.newDocumentBuilder();
            doc = builder.parse(is);
            XPathFactory xpathFactory = XPathFactory.newInstance();
            XPath xpath = xpathFactory.newXPath();
            

            
            XPathExpression expr_AUTHOR = xpath.compile("//item/author_info");
            {
               NodeList nodeList_AUTHOR = (NodeList) expr_AUTHOR.evaluate(doc, XPathConstants.NODESET);
               NodeList child = nodeList_AUTHOR.item(0).getChildNodes();
               Node node = child.item(0);
              System.out.println(node.getTextContent());
              author = node.getTextContent(); 
            }
          
          
          
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return author;
    }
   
   public static String publisher(String str) throws IOException {
       
       
        BufferedReader br 
        = null;
        //DocumentBuilderFactory 생성
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        DocumentBuilder builder;
        Document doc = null;
        
        // 각각 정보를 저장할 변수 
        String publisher=null;
        

        try {
           
           String decoded_str = "";
           String temp_str = "";
           byte[] bytes = str.getBytes(); 
           for (byte b : bytes) { 
              temp_str = String.format("0x%02X ", b); // "0x44 "
              temp_str = "%"+ temp_str.substring(2, 4);
              decoded_str += temp_str;
              } 

           // 입력부분에 맞게 마지막 부분을 isbn이나 title로 변경 가능 
            String urlstr = "http://www.nl.go.kr/app/nl/search/openApi/search.jsp?"
                  + "key=dfdb67353df57e9dee518c45c8bd28d7&category=dan&detailSearch=true&f1="
                  + "title&v1=" + decoded_str;
            
            URL url = new URL(urlstr);
            HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
            
            //응답 읽기
            br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
            String result = "";
            String line;
            while ((line = br.readLine()) != null) {
                result = result + line.trim();// result = URL로 XML을 읽은 값
            }

            
            // xml 파싱하기
            InputSource is = new InputSource(new StringReader(result));
            builder = factory.newDocumentBuilder();
            doc = builder.parse(is);
            XPathFactory xpathFactory = XPathFactory.newInstance();
            XPath xpath = xpathFactory.newXPath();
            
          
            XPathExpression expr_Publisher = xpath.compile("//item/pub_info");
            {
               NodeList nodeList_Publisher = (NodeList) expr_Publisher.evaluate(doc, XPathConstants.NODESET);
               NodeList child = nodeList_Publisher.item(0).getChildNodes();
               Node node = child.item(0);
              System.out.println(node.getTextContent());
              publisher = node.getTextContent(); 
            }
            

          
          
          
          
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return publisher;
    }
   
   public static String pubyear(String str) throws IOException {
       
       
        BufferedReader br 
        = null;
        //DocumentBuilderFactory 생성
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        DocumentBuilder builder;
        Document doc = null;
        
        // 각각 정보를 저장할 변수 
        String pubyear=null;
        

        
        try {
           
           String decoded_str = "";
           String temp_str = "";
           byte[] bytes = str.getBytes(); 
           for (byte b : bytes) { 
              temp_str = String.format("0x%02X ", b); // "0x44 "
              temp_str = "%"+ temp_str.substring(2, 4);
              decoded_str += temp_str;
              } 

           // 입력부분에 맞게 마지막 부분을 isbn이나 title로 변경 가능 
            String urlstr = "http://www.nl.go.kr/app/nl/search/openApi/search.jsp?"
                  + "key=dfdb67353df57e9dee518c45c8bd28d7&category=dan&detailSearch=true&f1="
                  + "title&v1=" + decoded_str;
            
            URL url = new URL(urlstr);
            HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
            
            //응답 읽기
            br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
            String result = "";
            String line;
            while ((line = br.readLine()) != null) {
                result = result + line.trim();// result = URL로 XML을 읽은 값
            }

            
            // xml 파싱하기
            InputSource is = new InputSource(new StringReader(result));
            builder = factory.newDocumentBuilder();
            doc = builder.parse(is);
            XPathFactory xpathFactory = XPathFactory.newInstance();
            XPath xpath = xpathFactory.newXPath();
            
            

          
            XPathExpression expr_Publish_year = xpath.compile("//item/pub_year_info");
            {
               NodeList nodeList_Publish_year = (NodeList) expr_Publish_year.evaluate(doc, XPathConstants.NODESET);
               NodeList child = nodeList_Publish_year.item(0).getChildNodes();
               Node node = child.item(0);
              System.out.println(node.getTextContent());
              pubyear = node.getTextContent(); 
            }
          

          
          
          
          
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return pubyear;
    }
   
   public static String title(String str) throws IOException {
       
       
        BufferedReader br 
        = null;
        //DocumentBuilderFactory 생성
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        DocumentBuilder builder;
        Document doc = null;
        
        // 각각 정보를 저장할 변수 
        String title=null;

        
        try {
           
           String decoded_str = "";
           String temp_str = "";
           byte[] bytes = str.getBytes(); 
           for (byte b : bytes) { 
              temp_str = String.format("0x%02X ", b); // "0x44 "
              temp_str = "%"+ temp_str.substring(2, 4);
              decoded_str += temp_str;
              } 

           // 입력부분에 맞게 마지막 부분을 isbn이나 title로 변경 가능 
            String urlstr = "http://www.nl.go.kr/app/nl/search/openApi/search.jsp?"
                  + "key=dfdb67353df57e9dee518c45c8bd28d7&category=dan&detailSearch=true&f1="
                  + "title&v1=" + decoded_str;
            
            URL url = new URL(urlstr);
            HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
            
            //응답 읽기
            br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
            String result = "";
            String line;
            while ((line = br.readLine()) != null) {
                result = result + line.trim();// result = URL로 XML을 읽은 값
            }

            
            // xml 파싱하기
            InputSource is = new InputSource(new StringReader(result));
            builder = factory.newDocumentBuilder();
            doc = builder.parse(is);
            XPathFactory xpathFactory = XPathFactory.newInstance();
            XPath xpath = xpathFactory.newXPath();
            
            
            
            XPathExpression expr_TITLE = xpath.compile("//item/title_info");
            {   
               NodeList nodeList_TITLE = (NodeList) expr_TITLE.evaluate(doc, XPathConstants.NODESET);
               NodeList child = nodeList_TITLE.item(0).getChildNodes();
                Node node = child.item(0);
                System.out.println(node.getTextContent());
                title = node.getTextContent(); 
            }
            
          

          
          
          
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return title;
    }
}
