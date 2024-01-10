let titles_model = ["CLIP", "Vision Language", "Vision-Language"];
let titles_method = ["Pre-train", "Pretrain", "Finetune", "Fine-tuning", "Multimodal", "Multi-modal", "Prompt", "Open-Vocabulary"];
let titles =  titles_model + titles_method;
let authors_array = ["Kaiming", "Muhammad Uzair Khattak"];

let conferences = [
    // AI
    "AAAI", "ACM MM", "IJCAI", "SIGGRAPH",
    // CV
    "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICME", "WACV",
    // DM
    "KDD", "SIGMOD", "WWW",
    // IR
    "SIGIR",
    // ML
     "ICLR", "ICML", "NeurIPS", "NIPS", "UAI",
    // NLP
    "ACL", "EMNLP", "NAACL",
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
