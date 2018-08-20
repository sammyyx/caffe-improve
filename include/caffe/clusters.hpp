#include <mpi.h>
#include "caffe/proto/caffe.pb.h"
#include "caffe/type.hpp"

namespace Clusters{

  void Init();
  void Finalize();
  int node_rank();
  int node_count();

}
