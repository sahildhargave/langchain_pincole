import 'package:langchain/langchain.dart';

abstract class LangChainService {
  Future<void> createPinConeIndex(String indexName, int vectorDimension);
  Future<void> updatePineConeIndex(String indexname, List<Document> docs);
  Future<String> queryPineConeVectorStore(String indexNmae, String query);
}
