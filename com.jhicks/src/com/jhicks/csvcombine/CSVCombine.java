package com.jhicks.csvcombine;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Java application taht will take in an input and output location for 
 * csv files and combine them together. When combinging, all the headers
 * but the first are discarded.
 * @author Jeren Hicks
 *
 */
public class CSVCombine {
	/** logger to push log messages to.*/
	private final static Logger LOGGER = Logger.getLogger(CSVCombine.class.getName());
	/** default directory for input.*/
	private final static String INPUT_DIRECTORY_DEFAULT = "C:\\test";
	/** default directory for output.*/
	private final static String OUTPUT_DIRECTORY_DEFAULT = "\\output";

	/**
	 * Handles Running the main application. Takes in an input and output. If they are
	 * not specified, falls back to a basic at C:/test for input and C:/test/output for
	 * output.
	 * @param args - 
	 * 			args[0] - input file
	 * 			args[1] - output file
	 */
    public static void main(String[] args) {
    	String inputDirectory = null;
    	String outputDirectory = null;
    	if (args.length >= 1) {
    		inputDirectory = args[0];
    	}
    	if (args.length >= 2) {
    		outputDirectory = args[1];
    	}
        try {
            mergeCsvFiles(inputDirectory, outputDirectory);
        } catch (IOException e) {
        	LOGGER.log(Level.SEVERE, "Error processing Merge files. Reason: " + e.getMessage());
        }
    }

    /**
     * Handles merging the csv files into one, removing the headers.
     * @param inputDirectory - where the csv files will be found to combine.
     * @param outputDirectory - where the output will be pumped once done.
     * @throws IOException - if there are any issues that comes from writing the file.
     */
    private static void mergeCsvFiles(String inputDirectory, String outputDirectory) throws IOException {

        // Variables
        ArrayList<File> files = new ArrayList<File>();
        Iterator<File> iterFiles;
        File fileOutput;
        BufferedWriter fileWriter;
        BufferedReader fileReader;
        String csvFinal = "combined.csv";
        String header = null;
        
        //if no values, set defaults
        if (inputDirectory == null || inputDirectory.isEmpty()) {
        	inputDirectory = INPUT_DIRECTORY_DEFAULT;
        	LOGGER.log(Level.INFO, "No input directory specified. Falling back to : " + inputDirectory);
        }
        if (outputDirectory == null || inputDirectory.isEmpty()) {
        	outputDirectory = inputDirectory + OUTPUT_DIRECTORY_DEFAULT;
        	LOGGER.log(Level.INFO, "No output directory specified. Falling back to : " + outputDirectory);
        }
        String outputFile = outputDirectory + "\\" + csvFinal;
        
        File inputFile = new File(inputDirectory);
        
        files = new ArrayList<File>(Arrays.asList(inputFile.listFiles(new FileFilter() {
            @Override
            public boolean accept(File pathname) {
                String name = pathname.getName().toLowerCase();
                boolean accept = name.endsWith(".csv") && pathname.isFile();
                if (accept) {
                	LOGGER.log(Level.INFO, "Found File: " + name);
                }
                return accept;
            }
        })));

        // Files: Output
        //get output location
        File outputLocation = new File(outputDirectory);
        if (outputLocation.exists()) {
        	LOGGER.log(Level.INFO, "Found a directory at output location. Deleting...");
        	outputLocation.delete();
        }
    	outputLocation.mkdirs();
    	LOGGER.log(Level.INFO, "Creating output location at : " + outputLocation);

         
        fileOutput = new File(outputFile);
        if (fileOutput.exists()) {
            fileOutput.delete();
        }
        try {
            fileOutput.createNewFile();
        } catch (IOException e) {
        	LOGGER.log(Level.SEVERE, "Could not create output file. Reason: " + e.getMessage());
        }

        iterFiles = files.iterator();
        fileWriter = new BufferedWriter(new FileWriter(outputFile, true));

        // Headers
        Scanner scanner = new Scanner(files.get(0));
        if (scanner.hasNextLine()) {
            header = scanner.nextLine();
        }
        scanner.close();

        fileWriter.write(header);
        fileWriter.newLine();
        
        LOGGER.log(Level.INFO, "Starting to combine files");
        while (iterFiles.hasNext()) {

            String line;// = null;
            String[] firstLine;// = null;

            File nextFile = iterFiles.next();
            fileReader = new BufferedReader(new FileReader(nextFile));

            if ((line = fileReader.readLine()) != null)
                firstLine = line.split(";");

            while ((line = fileReader.readLine()) != null) {
                fileWriter.write(line);
                fileWriter.newLine();
            }
            fileReader.close();
        }

        fileWriter.close();
        LOGGER.log(Level.INFO, "Finished Combining. File can be found at " + outputFile);

    }
    

}