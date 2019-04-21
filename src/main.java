import java.io.*;
import java.util.*;
import java.util.regex.Pattern;

public class main { 
	
	/*
	public static String removePart(String input, String replace) {
		return input.replace(replace, "");
	}
	
	public static void main(String[] args) throws Exception {
		ArrayList<String> strings = new ArrayList<String>();
		File file = new File("/Users/amir/eclipseWorkspace/compiler/src/cppfile.txt"); 
		BufferedReader input = new BufferedReader(new FileReader(file)); 
		Yylex myObject = new Yylex( input );
		myObject.yylex();
	
//		// --> Start of Detect 2 or more character symbols
		for (String item : myObject.al) {
			if( item.contains("++") ) {
				strings.add("++");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "++"));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("--") ) {
	 			strings.add("--");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "--"));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("+=") ) {
	 			strings.add("+=");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "+="));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("-=") ) {
	 			strings.add("-=");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "-+"));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("/=") ) {
	 			strings.add("/=");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "/="));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("*=") ) {
	 			strings.add("*=");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "*="));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("==") ) {
	 			strings.add("==");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "=="));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("!=") ) {
	 			strings.add("!=");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "!="));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains(">=") ) {
	 			strings.add(">=");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), ">="));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("<=") ) {
	 			strings.add("<=");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "<="));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("||") ) {
	 			strings.add("||");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "||"));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("&&") ) {
	 			strings.add("&&");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "&&"));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("<<") ) {
	 			strings.add("<<");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "<<"));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains(">>") ) {
	 			strings.add(">>");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), ">>"));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains(">>=") ) {
	 			strings.add(">>+");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), ">>="));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("<<=") ) {
	 			strings.add("<<=");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "<<+"));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("&=") ) {
	 			strings.add("&=");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "&="));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("^=") ) {
	 			strings.add("^=");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "^="));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("//") ) {
				strings.add("//");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "//"));
				strings.remove(strings.get(strings.size()-2));
	 		} else if ( item.contains("/*") ) {
				strings.add("/*");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), "/*"));
				strings.remove(strings.get(strings.size()-2));
	 		}  else if ( item.contains("") ) {
				strings.add("");
				strings.add(item);
				strings.add(main.removePart(strings.get(strings.size()-1), ""));
				strings.remove(strings.get(strings.size()-2));
	 		} else {
	 			strings.add(item);
	 		}
		  }
//		// End of Detect 2 or more character symbols <--
//		
//		// Start of Tokenize letters -->
		for (String item : myObject.al) {
			if( item.contains("++") ) {
	 		} else if ( item.contains("--") ) {
	 		} else if ( item.contains("+=") ) {
	 		} else if ( item.contains("-=") ) {
	 		} else if ( item.contains("/=") ) {
	 		} else if ( item.contains("*=") ) {
	 		} else if ( item.contains("==") ) {
	 		} else if ( item.contains("!=") ) {
	 		} else if ( item.contains(">=") ) {
	 		} else if ( item.contains("<=") ) {
	 		} else if ( item.contains("||") ) {
	 		} else if ( item.contains("&&") ) {
	 		} else if ( item.contains("<<") ) {
	 		} else if ( item.contains(">>") ) {
	 		} else if ( item.contains(">>=") ) {
	 		} else if ( item.contains("<<=") ) {
	 		} else if ( item.contains("&=") ) {
	 		} else if ( item.contains("^=") ) {
	 		} else if ( item.contains("//") ) {
	 		} else if ( item.contains("/*") ) {
	 		} else if ( item.contains("") ) {
	 		} else if(item.matches("^[a-zA-Z]*$")){
//	 			// DO NOTHING !
	 		} else if(item.length() == 0 ){
	 			System.out.println("Here");
	 		} else if( item.length() > 1 ) {
	 			char [] tmp = item.toCharArray();
				for (char itemak : tmp) {
					strings.add( strings.indexOf(item), String.valueOf(itemak) );
				}
				strings.remove(strings.indexOf(item));
	 		}
//			// End of Tokenize letters <--
		}
		System.out.println("Obj:" + myObject.al);
		System.out.println("strings:" + strings);
	} 
	 */

	
	public static void main(String[] args) throws Exception {
		ArrayList<String> strings = new ArrayList<String>();
		File file = new File("/Users/amir/eclipseWorkspace/compiler/src/cppfile.txt"); 
		BufferedReader input = new BufferedReader(new FileReader(file)); 
		Yylex myObject = new Yylex( input );
		myObject.yylex();
		System.out.println(myObject.tokenized);
	}
}
 