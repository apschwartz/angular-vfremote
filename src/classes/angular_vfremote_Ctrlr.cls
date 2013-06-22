global with sharing class angular_vfremote_Ctrlr {

	public class MyException extends Exception {}

	// VF Remoting method.
	// Double value passed, where double means:
	//		if numeric, multiple reslt by 2.
	//		if exact string "exception", throw an exception event (to demonstrate an exception in VF Remoting).
	//		if any other string, double each character.
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

	@isTest static void unitTest() {
		system.assertEquals('20', valueDoubler('10'));
		system.assertEquals('hheelllloo', valueDoubler('hello'));
		try {
			valueDoubler('exception');
			system.assert(false);
		} catch (Exception e) {
			system.assertEquals('Forced Exception', e.getMessage());
		}
	}
}