using System.IO;
using System.Threading.Tasks;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;

namespace funcFileProcStorage
{
    public class FuncFileProcBlob
    {
        private readonly ILogger<funcFileProcBlob> _logger;

        public funcFileProcBlob(ILogger<funcFileProcBlob> logger)
        {
            _logger = logger;
        }

        [Function(nameof(funcFileProcBlob))]
        [QueueOutput("output-queue")]
        public async Task Run([BlobTrigger("samples-workitems/{name}", Connection = "")] Stream stream, string name)
        {
            using var blobStreamReader = new StreamReader(stream);
            var content = await blobStreamReader.ReadToEndAsync();
            _logger.LogInformation($"C# Blob trigger function Processed blob\n Name: {name} \n Data: {content}");

            string[] messages = {
                            $"Content = {content}",
                            $"ProcDate = { DateTime.Now.ToString()}"};
        }
    }
}
