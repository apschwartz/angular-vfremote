global with sharing class angular_vfremote_Ctrlr {
	public angular_vfremote_Ctrlr() {}

	@RemoteAction
	global static  string myMethod(String name) {
		return name + name;
	}	
}