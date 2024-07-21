library("DESeq2")
library("gprofiler2")

# get input and output csv args
args <- commandArgs(trailingOnly=TRUE)
input_csv <- args[1]
output_csv <- args[2]

col_1 <- args[3]
col_2 <- args[4]

# Load the count data and sample information
countData <- read.table(input_csv, header=TRUE, row.names=1)

# Ensure the correct number of columns are considered
print(colnames(countData))

# Define the sample conditions
colData <- data.frame(row.names=colnames(countData), condition=c(col_1, col_1, col_1, col_2, col_2, col_2))

# Prepare the DESeq2 dataset
dds <- DESeqDataSetFromMatrix(countData=countData, colData=colData, design=~condition)

# Run the differential expression analysis
dds <- DESeq(dds)
res <- results(dds)

# Extract significant genes based on adjusted p-value and log2FoldChange
significant_genes <- subset(res, !is.na(padj) & !is.na(log2FoldChange) & padj < 0.05 & abs(log2FoldChange) > 1) 
write.csv(as.data.frame(significant_genes), file=output_csv)

# # keep only the significant genes


# # write out the results
# write.csv(as.data.frame(res), file=output_csv)