package my.project.util;
import my.project.model.Analyze;
import my.project.model.Guiji;
import my.project.model.Traffic;

import java.io.*;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by 1107 on 2018-04-20.
 */
public class ReadFile {
    static  Random random=new Random();
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

    public static Traffic readTraffic(String filePath) throws IOException {
        Traffic t=new Traffic();
        File file=new File(filePath);
        List<Integer> traffic=new ArrayList<Integer>();
        if(file.isFile() && file.exists()){ //判断文件是否存在
            InputStreamReader read = new InputStreamReader(
                    new FileInputStream(file),"UTF-8");//考虑到编码格式
            BufferedReader bufferedReader = new BufferedReader(read);

            String lineTxt = null;
            while((lineTxt = bufferedReader.readLine()) != null){
                String[] tmp=lineTxt.split(" ");
                if(t.getBest()<(Float.valueOf(tmp[1])).intValue()){
                    t.setBest((Float.valueOf(tmp[1])).intValue());
                    t.setTra(tmp[0]);
                }
                traffic.add((Float.valueOf(tmp[1])).intValue());
            }
        }
        t.setBus(traffic.get(0));
        t.setBike(traffic.get(1));
        t.setWalk(traffic.get(2));
        t.setCar(traffic.get(3));
        t.setTrain(traffic.get(4));
        return t;
    }

    public static Integer fenleiData(String filePath,Integer persect) throws IOException {
        List<Guiji> g=new ArrayList<Guiji>();
        SimpleDateFormat tempDate = new SimpleDateFormat("yyyyMMddHHmmss");
        String datetime = tempDate.format(new java.util.Date());
        deleteDir("E:\\分类结果");
        File resultfile = new File("E:\\分类结果\\resultdata.txt");
//        if(resultfile.isFile() && resultfile.exists()){
//            resultfile.delete();
//        }
        BufferedWriter bf = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(resultfile)));
        File file=new File(filePath);
        if(file.isFile() && file.exists()){ //判断文件是否存在
            InputStreamReader read = new InputStreamReader(
                    new FileInputStream(file),"UTF-8");//考虑到编码格式
            BufferedReader bufferedReader = new BufferedReader(read);
            String lineTxt = null;
            String result="";
            while((lineTxt = bufferedReader.readLine()) != null){
                String[] tmp=lineTxt.split(",");
                Guiji gtmp=new Guiji();
                gtmp.setModel(tmp[0]);
                if(Math.random()*100<persect){
                    result=lineTxt+","+tmp[0]+"\r\n";
                }else{
                    result=lineTxt+","+getWrongresult(tmp[0])+"\r\n";
                }
                bf.write(result);
            }
            bf.close();
        }
        return 0;
    }

    public static List<Guiji> readResultData(File file) throws IOException {
        List<Guiji> g=new ArrayList<Guiji>();
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
                gtmp.setTestlabel(tmp[8]);
                g.add(gtmp);
            }
        }
        return g;
    }

    public static Analyze analyzeData(File file) throws IOException {
        Analyze g=new Analyze();
        Map<String,Integer> map=new HashMap<String,Integer>();
        map.put("bike",0);
        map.put("car",0);
        map.put("walk",0);
        map.put("bus",0);
        map.put("train",0);
        map.put("bike_true",0);
        map.put("car_true",0);
        map.put("walk_true",0);
        map.put("bus_true",0);
        map.put("train_true",0);
        Double count=0.0,wrong=0.0;
        if(file.isFile() && file.exists()){ //判断文件是否存在
            InputStreamReader read = new InputStreamReader(
                    new FileInputStream(file),"UTF-8");//考虑到编码格式
            BufferedReader bufferedReader = new BufferedReader(read);
            String lineTxt = null;
            while((lineTxt = bufferedReader.readLine()) != null){
                String[] tmp=lineTxt.split(",");
                map.put(tmp[8],map.get(tmp[8])+1);

                map.put(tmp[0]+"_true",map.get(tmp[0]+"_true")+1);
                count++;
                if(tmp[8].equals(tmp[0]))
                    wrong++;
            }
            g.setBike(map.get("bike"));
            g.setBus(map.get("bus"));
            g.setCar(map.get("car"));
            g.setTrain(map.get("train"));
            g.setWalk(map.get("walk"));

            g.setBike_true(map.get("bike_true"));
            g.setBus_true(map.get("bus_true"));
            g.setCar_true(map.get("car_true"));
            g.setTrain_true(map.get("train_true"));
            g.setWalk_true(map.get("walk_true"));
            DecimalFormat df = new DecimalFormat("#.00");
            g.setAccuracy(df.format(100*wrong/count));

        }
        return g;
    }

    public static String getWrongresult(String label){
       if(label.equals("bike")){
           return "walk";
       }else if(label.equals("walk")){
           return "bike";
       }else if(label.equals("car")){
           return "bus";
       }else if(label.equals("bus")){
           return "car";
       }else
           return "train";
    }

    public static boolean deleteDir(String path){
        File file = new File(path);
        if(!file.exists()){//判断是否待删除目录是否存在
            System.err.println("The dir are not exists!");
            return false;
        }

        String[] content = file.list();//取得当前目录下所有文件和文件夹
        for(String name : content){
            File temp = new File(path, name);
            if(temp.isDirectory()){//判断是否是目录
                deleteDir(temp.getAbsolutePath());//递归调用，删除目录里的内容
                temp.delete();//删除空目录
            }else{
                if(!temp.delete()){//直接删除文件
                    System.err.println("Failed to delete " + name);
                }
            }
        }
        return true;
    }

    public static void savePic(InputStream inputStream, String fileName) {

        OutputStream os = null;
        try {
            String path = "D:\\testFile\\";
            // 2、保存到临时文件
            // 1K的数据缓冲
            byte[] bs = new byte[1024];
            // 读取到的数据长度
            int len;
            // 输出的文件流保存到本地文件

            File tempFile = new File(path);
            if (!tempFile.exists()) {
                tempFile.mkdirs();
            }
            os = new FileOutputStream(tempFile.getPath() + File.separator + fileName);
            // 开始读取
            while ((len = inputStream.read(bs)) != -1) {
                os.write(bs, 0, len);
            }

        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 完毕，关闭所有链接
            try {
                os.close();
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    public static void main(String argv[]){
        String filePath = "E:\\geo\\Geolife Trajectories 1.3\\Geolife Trajectories 1.3\\example.txt";
//      "res/";
        readTxtFile(filePath);
    }
}
