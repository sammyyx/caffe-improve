#include "caffe/clusters.hpp"

namespace Clusters{

  int node_rank_;
  int node_count_;

  void Init() {
    MPI_Init(NULL, NULL);
    MPI_Comm_rank(MPI_COMM_WORLD, &node_rank_);
    MPI_Comm_size(MPI_COMM_WORLD, &node_count_);
  }

  void Finalize() {
    MPI_Finalize();
  }

  int node_rank() {
    return node_rank_;
  }
  
  int node_count() {
    return node_count_;
  }
}
