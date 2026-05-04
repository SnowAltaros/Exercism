public static class ProteinTranslation
{
    public static readonly Dictionary<string, string[]> acidAndCodons = new ()
    {
        {"Methionine", new[] {"AUG"}},
        {"Phenylalanine", new[] {"UUU", "UUC"}},
        {"Leucine", new []{"UUA", "UUG"}},
        {"Serine", new []{"UCU", "UCC", "UCA", "UCG"}},
        {"Tyrosine", new []{"UAU", "UAC"}},
        {"Cysteine",  new []{"UGU", "UGC"}},
        {"Tryptophan",  new []{"UGG"}},
        {"Stop",  new []{"UAA", "UAG", "UGA"}},
    };
    
    public static string[] Proteins(string strand)
    {
        List<string> result = new List<string>();
        int i = 0;

        while (i + 3 <= strand.Length)
        {
            string codon = strand.Substring(i, 3);
            string matched = null;

            foreach (var (acid, codons) in acidAndCodons)
            {
                if (codons.Contains(codon))
                {
                    matched = acid;
                    break;
                }
            }
            
            if (matched == "Stop") break;
            if (matched != null) result.Add(matched);

            i += 3;
        }

        return result.ToArray();
    }
}