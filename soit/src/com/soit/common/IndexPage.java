package com.soit.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexPage implements DBCommand {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {
      
      return "main/main.tiles";
   }
}