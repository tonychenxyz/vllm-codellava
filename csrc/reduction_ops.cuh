#pragma once

namespace vllm {

template <typename T>
struct MaxOp {
  __host__ __device__ T operator()(const T lhs, const T rhs) const {
    return lhs > rhs ? lhs : rhs;
  }
};

}  // namespace vllm

