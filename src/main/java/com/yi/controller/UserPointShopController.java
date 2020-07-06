package com.yi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/*")
public class UserPointShopController {
	
	/*MuKKa 상품권*/
	@RequestMapping(value = "/pointShop/giftCard", method = RequestMethod.GET)
	public String giftCardList() throws Exception{
		return "/user/userPointShopGiftCardList";
	}
	/*커피 & 차*/
	@RequestMapping(value = "/pointShop/coffeeNtea", method = RequestMethod.GET)
	public String coffeeNteaList() throws Exception{
		return "/user/userPointShopcoffeeNteaList";
	}	
	/*커피 용품*/
	@RequestMapping(value = "/pointShop/coffeeGoods", method = RequestMethod.GET)
	public String coffeeGoodsList() throws Exception{
		return "/user/userPointShopcoffeeGoodsList";
	}	
	/*기타*/	
	@RequestMapping(value = "/pointShop/shopEtc", method = RequestMethod.GET)
	public String shopEtcList() throws Exception{
		return "/user/userPointShopshopEtcList";
	}
}
