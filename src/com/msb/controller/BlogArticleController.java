package com.msb.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.jboss.logging.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.msb.model.BlogArticle;
import com.msb.model.CompetitionText;
import com.msb.model.SchoolUser;
import com.msb.service.ArticleService;
import com.msb.service.SchoolUserService;

@Controller
public class BlogArticleController {
	
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private SchoolUserService userService;
	
	@RequestMapping(value = "/srichaitanya/submit-article", method = RequestMethod.POST)
	public ModelAndView submitArticle(@ModelAttribute("article") BlogArticle article,
			HttpSession session, BindingResult result) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		ModelAndView modelAndView = new ModelAndView();
		int isUserPremium = userData.getPremium();
		if(isUserPremium==1) {
			modelAndView.addObject("isPremium", true);
		} else {
			modelAndView.addObject("isPremium", false);
		}
		article.setUser_saved(userData.getUsername());
		//article.setShr_code(generateArticleShareCode());
		boolean saved = articleService.saveArtcile(article);
		if (saved)
			return new ModelAndView("redirect:/srichaitanya/user/write-article?success=true");
		else
			return new ModelAndView("redirect:/srichaitanya/user/write-article?success=false");

	}
	
	@RequestMapping(value="/srichaitanya/premium/articles",method=RequestMethod.GET)
	public ModelAndView showArticles(@PathVariable String category, @PathVariable int offset, HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		}
		int totalArticlesCount = articleService.getBlogArticlesCount(category);
		modelAndView.addObject("totalArticlesCount", totalArticlesCount);
		System.out.println("totalArticlesCount"+totalArticlesCount);
		List<BlogArticle> articles=articleService.getBlogArtciles(category, 10, offset);
		modelAndView.addObject("articles", articles);
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		modelAndView.addObject("category", category);
		modelAndView.setViewName("/srichaitanya/premium/articles-list");
		
		return modelAndView;
	}

	
	@RequestMapping(value="/srichaitanya/user/premium/articles/{category}/{offset}",method=RequestMethod.GET)
	public ModelAndView showSrichaitanyaArticles(@PathVariable String category, @PathVariable int offset, HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		}
		int totalArticlesCount = articleService.getBlogArticlesCount(category);
		modelAndView.addObject("totalArticlesCount", totalArticlesCount);
		System.out.println("totalArticlesCount"+totalArticlesCount);
		List<BlogArticle> articles=articleService.getBlogArtciles(category, 10, offset);
		modelAndView.addObject("articles", articles);
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		modelAndView.addObject("category", category);
		modelAndView.setViewName("/srichaitanya/premium/articles-list");
		
		return modelAndView;
	}
	 
	
	@RequestMapping(value="/srichaitanya/premium/article/{id}",method=RequestMethod.GET)
	public ModelAndView showFullArticle(@PathVariable int id, HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		}
		BlogArticle article=articleService.getBlogArticle(id);
		modelAndView.addObject("article", article);
		modelAndView.setViewName("/srichaitanya/premium/article");
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		int nextArticle=articleService.getNextOrPreviousBlogArticleCode(article.getArticle_category(),article.getArticle_id(), true, false);
		int previousArticle=articleService.getNextOrPreviousBlogArticleCode(article.getArticle_category(),article.getArticle_id(), false, true);	
		if(nextArticle!=0)
		modelAndView.addObject("nextArticle", nextArticle);
		if(previousArticle!=0)
		modelAndView.addObject("previousArticle", previousArticle);
		modelAndView.setViewName("/srichaitanya/premium/article");
		return modelAndView;
	}
	
	
	/* blog controllers for school section  starts ----*/
	
	@RequestMapping(value = "/school/submit-article", method = RequestMethod.POST)
	public ModelAndView submitSchoolArticle(@ModelAttribute("article") BlogArticle article,
			HttpSession session, BindingResult result) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		ModelAndView modelAndView = new ModelAndView();
		int isUserPremium = userData.getPremium();
		if(isUserPremium==1) {
			modelAndView.addObject("isPremium", true);
		} else {
			modelAndView.addObject("isPremium", false);
		}
		article.setUser_saved(userData.getUsername());
		//article.setShr_code(generateArticleShareCode());
		boolean saved = articleService.saveArtcile(article);
		if (saved)
			return new ModelAndView("redirect:/school/user/write-article?success=true");
		else
			return new ModelAndView("redirect:/school/user/write-article?success=false");

	}

	@RequestMapping(value="/school/articles/{category}/{offset}",method=RequestMethod.GET)
	public ModelAndView showSchoolArticles(@PathVariable String category, @PathVariable int offset, HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		}
		int totalArticlesCount = articleService.getBlogArticlesCount(category);
		modelAndView.addObject("totalArticlesCount", totalArticlesCount);
		System.out.println("totalArticlesCount"+totalArticlesCount);
		List<BlogArticle> articles=articleService.getBlogArtciles(category, 10, offset);
		modelAndView.addObject("articles", articles);
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		modelAndView.addObject("category", category);
		modelAndView.setViewName("/school/premium/articles-list");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/school/article/{id}",method=RequestMethod.GET)
	public ModelAndView showSchoolFullArticle(@PathVariable int id, HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		}
		BlogArticle article=articleService.getBlogArticle(id);
		modelAndView.addObject("article", article);
		if(article != null) {
			articleService.incNoOfViews(id);
		}
		SchoolUser blogUser = userService.getStudentDetails(article.getUser_saved());
		modelAndView.addObject("blogUser", blogUser.getName());
		modelAndView.setViewName("/school/premium/article");
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		int nextArticle=articleService.getNextOrPreviousBlogArticleCode(article.getArticle_category(),article.getArticle_id(), true, false);
		int previousArticle=articleService.getNextOrPreviousBlogArticleCode(article.getArticle_category(),article.getArticle_id(), false, true);	
		if(nextArticle!=0)
		modelAndView.addObject("nextArticle", nextArticle);
		if(previousArticle!=0)
		modelAndView.addObject("previousArticle", previousArticle);
		modelAndView.setViewName("/school/premium/article");
		return modelAndView;
	}
	
	@RequestMapping(value="/school/user/userarticles",method=RequestMethod.GET)
	public ModelAndView showUserArticles(HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		
		if (userData != null) {
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		}
		modelAndView.addObject("userData", userData);
		List<BlogArticle> articles=articleService.getUserBlogArtciles(userData.getUsername(), 10, 0);
		modelAndView.addObject("articles", articles);
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		modelAndView.setViewName("/school/premium/userarticles");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/userarticles",method=RequestMethod.GET)
	public ModelAndView userArticles(HttpSession session, @Param String usr){
		ModelAndView modelAndView=new ModelAndView();
		//SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		
		SchoolUser userData = userService.getStudentDetails(usr);
		//List<BlogArticle> userArticles = articleService.getUserBlogArtciles(usr, 0, 0);
		
		modelAndView.addObject("userData", userData);
		//modelAndView.addObject("userArticles", userArticles);
		List<BlogArticle> articles=articleService.getUserBlogArtciles(usr, 0, 0);
		modelAndView.addObject("articles", articles);
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		modelAndView.setViewName("/school/premium/userarticles");
		
		return modelAndView;
	}
	
	/* Lotus articles controller */
	
	@RequestMapping(value = "/lotus/submit-article", method = RequestMethod.POST)
	public ModelAndView submitSchoolLotusArticle(@ModelAttribute("article") BlogArticle article,
			HttpSession session, BindingResult result) {

		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		ModelAndView modelAndView = new ModelAndView();
		int isUserPremium = userData.getPremium();
		if(isUserPremium==1) {
			modelAndView.addObject("isPremium", true);
		} else {
			modelAndView.addObject("isPremium", false);
		}
		article.setUser_saved(userData.getUsername());
		//article.setShr_code(generateArticleShareCode());
		boolean saved = articleService.saveArtcile(article);
		if (saved)
			return new ModelAndView("redirect:/lotus/user/write-article?success=true");
		else
			return new ModelAndView("redirect:/lotus/user/write-article?success=false");

	}

	@RequestMapping(value="/lotus/user/premium/articles/{category}/{offset}",method=RequestMethod.GET)
	public ModelAndView showSchoolLotusArticles(@PathVariable String category, @PathVariable int offset, HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		}
		int totalArticlesCount = articleService.getBlogArticlesCount(category);
		modelAndView.addObject("totalArticlesCount", totalArticlesCount);
		System.out.println("totalArticlesCount"+totalArticlesCount);
		List<BlogArticle> articles=articleService.getBlogArtciles(category, 10, offset);
		modelAndView.addObject("articles", articles);
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		modelAndView.addObject("category", category);
		modelAndView.setViewName("/lotus/premium/articles-list");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/lotus/user/premium/article/{id}",method=RequestMethod.GET)
	public ModelAndView showSchoolLotusFullArticle(@PathVariable int id, HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		if (userData != null) {
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		}
		BlogArticle article=articleService.getBlogArticle(id);
		modelAndView.addObject("article", article);
		modelAndView.setViewName("/lotus/premium/article");
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		int nextArticle=articleService.getNextOrPreviousBlogArticleCode(article.getArticle_category(),article.getArticle_id(), true, false);
		int previousArticle=articleService.getNextOrPreviousBlogArticleCode(article.getArticle_category(),article.getArticle_id(), false, true);	
		if(nextArticle!=0)
		modelAndView.addObject("nextArticle", nextArticle);
		if(previousArticle!=0)
		modelAndView.addObject("previousArticle", previousArticle);
		modelAndView.setViewName("/lotus/premium/article");
		return modelAndView;
	}
	
	@RequestMapping(value="/lotus/user/premium/userarticles",method=RequestMethod.GET)
	public ModelAndView showUserLotusArticles(HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		SchoolUser userData = (SchoolUser) session.getAttribute("SchoolStudent");
		
		if (userData != null) {
			
			int isUserPremium = userData.getPremium();
			if(isUserPremium==1) {
				modelAndView.addObject("isPremium", true);
			} else {
				modelAndView.addObject("isPremium", false);
			}
		}
		modelAndView.addObject("userData", userData);
		List<BlogArticle> articles=articleService.getUserBlogArtciles(userData.getUsername(), 10, 0);
		modelAndView.addObject("articles", articles);
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		modelAndView.setViewName("/lotus/premium/userarticles");
		
		return modelAndView;
	}

}
