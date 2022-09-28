package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository{
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    
    public ProductRepository(){
        Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");

        Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");

        Product GPU = new Product("P1237", "RTX3080Ti", 1400000);
        GPU.setDescription("8nm, PCIe 4.0, 1695MHz");
        GPU.setCategory("GPU");
        GPU.setManufacturer("MSI");
        GPU.setUnitsInStock(123);
        GPU.setCondition("Mining Edition");
        
        Product CPU = new Product("P1238", "i7 12700K",600000);
        CPU.setDescription("10nm(인텔7) / 8+4코어 / 16+4쓰레드 / 기본 클럭: 3.6GHz / 최대 클럭: 5.0GH");
        CPU.setCategory("CPU");
        CPU.setManufacturer("Intel");
        CPU.setUnitsInStock(1273);
        CPU.setCondition("New");
        
        Product RAM = new Product("P1239","G.SKILL DDR5-6000 CL36 16GB*2", 450000);
        RAM.setDescription("데스크탑용 / DDR5 / 6000MHz (PC5-48000)/16GB");
        RAM.setCategory("RAM");
        RAM.setManufacturer("G.SKILL");
        RAM.setUnitsInStock(37);
        RAM.setCondition("New");
        
        Product SSD = new Product("P1240","삼성전자 870 EVO 4TB", 550000);
        SSD.setDescription("내장형 SSD/ 6.4cm(2.5형) / SATA3 (6Gb/s) / TLC(기타) / 3D낸드 / DDR4 4TB");
        SSD.setCategory("SSD");
        SSD.setManufacturer("Samsung");
        SSD.setUnitsInStock(1442);
        SSD.setCondition("New");
            
        Product mainboard = new Product("P1241","ASUS PRIME H610M-K D4",100000);
        mainboard.setDescription("인텔(소켓1700) / 인텔 H610 / M-ATX (23.4x20.3cm)");
        mainboard.setCategory("MainBoard");
        mainboard.setManufacturer("ASUS");
        mainboard.setUnitsInStock(32);
        mainboard.setCondition("Refurbished");
        
        Product cooler = new Product("P1242","NZXT KRAKEN X73",265000);
        cooler.setDescription("수랭/ 팬 크기: 120mm x3 / 26T / 4핀 / 베어링: FDB / 2000 RPM / 최대 풍량: 73.11 CFM / 최대 풍압: 2.93 mmH2O");
        cooler.setCategory("Cooler");
        cooler.setManufacturer("NZXT");
        cooler.setUnitsInStock(386);
        cooler.setCondition("New");
        
        listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
        
        listOfProducts.add(GPU);
        listOfProducts.add(CPU);
        listOfProducts.add(RAM);
        listOfProducts.add(SSD);
        listOfProducts.add(mainboard);
        listOfProducts.add(cooler);

    }
    public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    public Product getProductById(String productId){
        Product productById = null;
        for (int i = 0; i<listOfProducts.size();i++){
            Product product = listOfProducts.get(i);
            if(product != null && product.getProductId() != null && product.getProductId().equals(productId)){
                productById=product;
                break;
            }
        }
        return productById;
    }
}