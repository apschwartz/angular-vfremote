global with sharing class angular_vfremote_Ctrlr {
	public angular_vfremote_Ctrlr() {}

	public class MyException extends Exception {}

	@RemoteAction
	global static  string valueDoubler(String inputValue) {
		String result = '';

		if (inputValue == 'exception')
			throw new MyException('Forced Exception');

		if (inputValue.isNumeric())
			result = String.valueOf(Integer.valueOf(inputValue) * 2);
		else
			for (Integer i=0; i<inputValue.length(); i++)
				result += inputValue.mid(i,1) + inputValue.mid(i,1);
		
		return result;
	}	
}