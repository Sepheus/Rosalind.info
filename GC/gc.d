/* http://rosalind.info/problems/gc/ */
import std.stdio;
import std.file;
import std.string;

void main(string[] args) {
    if(args.length == 2) {
        immutable filename = args[1];
        double bestCount = 0;
        string bestName;
        if(filename.exists) {
            File file = File(filename, "r");
            while(!file.eof()) {
                string name;
                string sequence;
                try {
                    file.readf(">%s\n%s\n", name, sequence);
                    int count;
                    foreach(ref l; sequence) {
                        if(l == 'C' || l == 'G') { 
                            count++;
                        }
                    }
                    double pct = count/cast(double)sequence.length;
                    if(pct > bestCount) {
                        bestCount = pct;
                        bestName = name;
                    }
                }
                catch(Exception e) { }
            }
            bestName.writeln;
            "%f".writefln(bestCount*100);
        }
        else { "File %s does not exist".writefln(filename); }
    }
    else { "Usage ./gc file".writeln; }
}