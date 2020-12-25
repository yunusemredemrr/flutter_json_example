
class Model {

  String model_Adi;
  int fiyat;
  bool benzinli;

	Model.fromJsonMap(Map<String, dynamic> map): 
		model_Adi = map["model_Adi"],
		fiyat = map["fiyat"],
		benzinli = map["benzinli"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['model_Adi'] = model_Adi;
		data['fiyat'] = fiyat;
		data['benzinli'] = benzinli;
		return data;
	}
}
