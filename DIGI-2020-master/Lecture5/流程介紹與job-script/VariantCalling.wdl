workflow VariantCalling{
  call haplotypeCaller
}

task haplotypeCaller{
      File GATK
      File RefFasta
      File RefIndex
      File RefDict
      String sampleName
      File inputBam
      File bamIndex

      command {
        java -jar ${GATK}\
             -T HaplotypeCaller\
             -R ${RefFasta} \
             -I ${inputBam} \
             -o ${sampleName}.rawIndelsSnps.vcf
      }

      output {
        File rawVCF = "${sampleName}.rawIndelsSnps.vcf"
      }
}
