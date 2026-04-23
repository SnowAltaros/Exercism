public static class Dominoes
{
    public static bool CanChain(IEnumerable<(int, int)> dominoes)
    {
        var list = dominoes.ToList();
        
        if (list.Count == 0) return true;
        if (list.Count == 1) return list[0].Item1 == list[0].Item2;

        return TryToChain(list, new List<(int, int)>());
    }

    private static bool TryToChain(List<(int, int)> list, List<(int, int)> chain)
    {
        if (list.Count == 0) return chain.First().Item1 == chain.Last().Item2;

        for (int i = 0; i < list.Count; i++)
        {
            var domino = list[i];

            foreach (var candidat in new[] {domino, FlipDomino(domino)})
            {
                if (chain.Count == 0 || chain.Last().Item2 == candidat.Item1)
                {
                    chain.Add(candidat);
                    list.RemoveAt(i);
                    
                    if (TryToChain(list, chain)) return true;
                    
                    list.Insert(i, candidat);
                    chain.RemoveAt(chain.Count - 1);
                }
            }
        }
        
        return false;
    }

    
    private static (int, int) FlipDomino((int, int) domino) => (domino.Item2, domino.Item1);
}