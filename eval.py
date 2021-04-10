#import pickle
import pickle5 as pickle

with open('paraphrases-distilbert-base-nli-stsb-mean-tokens.pickle', 'rb') as handle:
    paraphrases = pickle.load(handle)
    
with open('reports.pickle', 'rb') as handle:
    sentences = pickle.load(handle)

#paraphrases = [p[2] < 1 for p in paraphrases]

#paraphrases = [(i) for i in paraphrases if i[0] < 1.0]
c = 0
for paraphrase in paraphrases:
    score, i, j = paraphrase
    if i == j:
       continue
    print("{} \t\t {} \t\t Score: {:.4f}".format([i], [j], score))

