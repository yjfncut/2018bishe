package my.project.util;
import my.project.model.Guiji;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by 1107 on 2018-04-20.
 */
public class ReadFile {
    /**
     * 功能：Java读取txt文件的内容
     * 步骤：1：先获得文件句柄
     * 2：获得文件句柄当做是输入一个字节码流，需要对这个输入流进行读取
     * 3：读取到输入流后，需要读取生成字节流
     * 4：一行一行的输出。readline()。
     * 备注：需要考虑的是异常情况
     * @param filePath
     */
    public static String readTxtFile(String filePath){
        try {
            String title = "<table border='1' width=\"100%\">"
                    + "<tr>"
                    + "<th width=\"15%\">纬度</th>"
                    + "<th width=\"15%\">经度</th>"
                    + "<th width=\"10%\">高度</th>"
                    + "<th width=\"30%\">时间戳</th>"
                    + "<th width=\"15%\">日期</th>"
                    + "<th width=\"15%\">时间</th>";
            StringBuffer content = new StringBuffer();
            content.append(title);
            String encoding="UTF-8";
            File file=new File(filePath);
            if(file.isFile() && file.exists()){ //判断文件是否存在
                InputStreamReader read = new InputStreamReader(
                        new FileInputStream(file),encoding);//考虑到编码格式
                BufferedReader bufferedReader = new BufferedReader(read);
                String lineTxt = null;
                while((lineTxt = bufferedReader.readLine()) != null){
                    String[] tmp=lineTxt.split(",");
                    String line =  "<tr>"
                            + "<th>"+tmp[0]+"</th>"
                            + "<th>"+tmp[1]+"</th>"
                            + "<th>"+tmp[3]+"</th>"
                            + "<th>"+tmp[4]+"</th>"
                            + "<th>"+tmp[5]+"</th>"
                            + "<th>"+tmp[6]+"</th>"
                            + "</tr>";
                    content.append(line);
                    System.out.println(lineTxt);
                }

                System.out.println(bufferedReader.readLine());

                read.close();
                return content.toString();
            }else{
                System.out.println("找不到指定的文件");
            }
        } catch (Exception e) {
            System.out.println("读取文件内容出错");
            e.printStackTrace();
        }
        return null;
    }
    public static List<Guiji> readTraData(String filePath) throws IOException {
        List<Guiji> g=new ArrayList<Guiji>();

        File file=new File(filePath);
        if(file.isFile() && file.exists()){ //判断文件是否存在
            InputStreamReader read = new InputStreamReader(
                    new FileInputStream(file),"UTF-8");//考虑到编码格式
            BufferedReader bufferedReader = new BufferedReader(read);
            String lineTxt = null;
            while((lineTxt = bufferedReader.readLine()) != null){
                String[] tmp=lineTxt.split(",");
                Guiji gtmp=new Guiji();
                gtmp.setModel(tmp[0]);
                gtmp.setPeofvelocity(Float.valueOf(tmp[1]));
                gtmp.setPeofangle(Float.valueOf(tmp[2]));
                gtmp.setAv(Float.valueOf(tmp[3]));
                gtmp.setDv(Float.valueOf(tmp[4]));
                gtmp.setHcr(Float.valueOf(tmp[5]));
                gtmp.setSr(Float.valueOf(tmp[6]));
                gtmp.setVcr(Float.valueOf(tmp[7]));
                g.add(gtmp);
            }
    }
        return g;
    }
    public static void main(String argv[]){
        String filePath = "E:\\geo\\Geolife Trajectories 1.3\\Geolife Trajectories 1.3\\example.txt";
//      "res/";
        readTxtFile(filePath);
    }
}
