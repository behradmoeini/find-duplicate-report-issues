import pickle

with open('paraphrases-distilbert-base-nli-stsb-mean-tokens.pickle', 'rb') as handle:
    paraphrases = pickle.load(handle)

#print("Result for " + model_name + ":")
for paraphrase in paraphrases[0:10]:
	score, i, j = paraphrase
	print("{} \t\t {} \t\t Score: {:.4f}".format(sentences[i], sentences[j], score))
