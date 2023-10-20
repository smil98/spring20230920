package com.example.spring20230920.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("main33")
public class Controller33 {

    @GetMapping("sub1")
    public void method1() {}

    @PostMapping("sub2")
    public void method2(String name, Integer age, MultipartFile myFile) throws IOException {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
        if(myFile != null) {
            String fileName = myFile.getOriginalFilename();
            System.out.println("fileName = " + fileName);
            String path = "C:\\Temp\\upload_" + fileName;
            InputStream inputStream = myFile.getInputStream();
            FileOutputStream outputStream = new FileOutputStream(path);
            BufferedInputStream bis = new BufferedInputStream(inputStream);
            BufferedOutputStream bos = new BufferedOutputStream(outputStream);

            try(bis; bos; inputStream; outputStream) {
                byte[] data = new byte[1024];
                int len = 0;
                while((len = bis.read(data)) != -1) {
                    bos.write(data, 0, len);
                }
                bos.flush();
            }
        }
    }

    @GetMapping("sub3")
    public void method3() {}

    @PostMapping("sub4")
    public void method4(MultipartFile upload) throws IOException {
        if(upload != null) {
            String fileName = upload.getOriginalFilename();
            String path = "C:\\Temp\\copy_" + fileName;
            InputStream inputStream = upload.getInputStream();
            FileOutputStream outputStream = new FileOutputStream(path);
            BufferedInputStream bis = new BufferedInputStream(inputStream);
            BufferedOutputStream bos = new BufferedOutputStream(outputStream);

            try(bis; bos; inputStream; outputStream) {
                byte[] data = new byte[1024];
                int len = 0;
                while((len = bis.read(data)) != -1) {
                    bos.write(data, 0, len);
                }
                bos.flush();
            }
        }
    }

    @GetMapping("sub5")
    public void method5() {}

    @PostMapping("sub6")
    public void method6(MultipartFile[] files) throws IOException {
        System.out.println("files.length = " + files.length);
        //even if not select would equal 1

        for(MultipartFile file : files) {
            if(file.getSize() > 0) {
                String fileName = file.getOriginalFilename();
                String path = "C:\\Temp\\copy_" + fileName;
                BufferedInputStream bis = new BufferedInputStream(file.getInputStream());
                BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(path));

                try(bis; bos) {
                    byte[] data = new byte[1024];
                    int len = 0;
                    while((len = bis.read(data)) != -1) {
                        bos.write(data, 0, len);
                    }
                    bos.flush();
                }
            }
        }
    }

    @GetMapping("sub7")
    public void method7() {

    }

    @PostMapping("sub8")
    public void method8(@RequestParam(value = "files", required = false) MultipartFile[] files) throws IOException {
        for(MultipartFile file : files) {
            if(file.getSize() > 0) {
                String fileName = file.getOriginalFilename();
                String path = "C:\\Temp\\upload\\" + fileName;
                File dir = new File(path);
                if(!dir.exists()) {
                    dir.mkdirs();
                }


                BufferedInputStream bis = new BufferedInputStream(file.getInputStream());
                BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(path));

                try(bis; bos) {
                    byte[] data = new byte[2048];
                    int len = 0;
                    while((len = bis.read(data)) != -1) {
                        bos.write(data, 0, len);
                    }
                    bos.flush();
                }
            }
        }
    }
}
