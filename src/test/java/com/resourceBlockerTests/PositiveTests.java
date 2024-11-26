package com.resourceBlockerTests;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.Test;

public class PositiveTests {
	
	@Test
	public void loginTest() {
		
		System.out.println("test started");
		
		//create driver
		WebDriver driver = new ChromeDriver();
		System.out.println("browser started");
		
		// open page
		String url = "http://localhost:8080/";
		driver.get(url);
		
		sleep(1);
		
		driver.manage().window().maximize();
		System.out.println("page opened");
		
		sleep(1);
		
		
		
		driver.close();
		System.out.println("test finished");
	}

	/**
	 * delays the test by n seconds
	 * @param seconds
	 */
	private void sleep(int seconds) {
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
