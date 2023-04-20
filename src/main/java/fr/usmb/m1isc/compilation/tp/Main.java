package fr.usmb.m1isc.compilation.tp;

import java_cup.runtime.Symbol;

import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) throws Exception {
		System.out.println("Start !");
		LexicalAnalyzer yy;
		if (args.length > 0) {
			System.out.println("arg !");
			yy = new LexicalAnalyzer(new FileReader(args[0]));
		} else {
			System.out.println("no-arg !");
			yy = new LexicalAnalyzer(new FileReader("./test/test.txt"));
		}
		@SuppressWarnings("deprecation")
		parser p = new parser (yy);
		Symbol s = p.parse( );
		String code = ((Node)s.value).compile();

		BufferedWriter writer = new BufferedWriter(new FileWriter( "rendu.asm", false ));

		System.out.println("writing to : rendu.txt");
		writer.append( code );
		writer.close();
		System.out.println("Done !");
    }
}