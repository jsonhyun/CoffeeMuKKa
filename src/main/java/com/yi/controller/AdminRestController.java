package com.yi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yi.service.CafeService;

@RestController
@RequestMapping("/restAdmin/*")
public class AdminRestController {

	@Autowired
	private CafeService cafeService;
	
	/*-------- cafe ------------------------------------------------------------------*/
	@RequestMapping(value = "/adminCafeOwnerNo", method = RequestMethod.GET)
	public ResponseEntity<Integer> selectAdminCafeByOwnerNo(String ownerNo){
		ResponseEntity<Integer> entity = null;
		
		try {
			int result = cafeService.selectAdminCafeByOwnerNo(ownerNo);
			entity = new ResponseEntity<Integer>(result, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
}
