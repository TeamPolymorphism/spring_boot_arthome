package com.teamPM.neart.service;

import java.util.List;

import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.vo.ProductVO;



public interface ProductService {
	
	public int getTotalCount();
	//리스트
	public List<ProductVO> getProductList(Criteria criteria); 
	
	//상세페이지(조회)
	ProductVO detailProduct(int productid);	
	
	//등록
	void insertProduct(ProductVO productboard);	
	
	//삭제
	void deleteProduct(int productid); 
	
	//수정
	void modifyProduct(ProductVO ProductVO); 
	
	//조회수
	void upHitProduct(int productid); 

}