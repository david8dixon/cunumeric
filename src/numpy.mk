# Copyright 2021 NVIDIA Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# List all the application source files that need OpenMP separately
# since we have to add the -fopenmp flag to  CC_FLAGS for them
GEN_CPU_SRC += binary_op.cc                         \
							 binary_op_util.cc                    \
							 broadcast_binary_op.cc               \
							 scalar_binary_op.cc                  \
							 core.cc                              \
							 deserializer.cc                      \
							 scalar.cc                            \
							 fill.cc                              \
							 scalar_unary_red.cc                  \
							 unary_red_util.cc                    \
							 unary_red.cc                         \
							 unary_op.cc                          \
							 unary_op_util.cc                     \
							 scalar_unary_op.cc                   \
							 arange.cc                            \
							 arg.cc                               \
							 argmin.cc                            \
							 bincount.cc                          \
							 clip.cc                              \
							 close.cc                             \
							 contains.cc                          \
							 convert_to_half.cc                   \
							 convert_to_float.cc                  \
							 convert_to_double.cc                 \
							 convert_to_int16.cc                  \
							 convert_to_int32.cc                  \
							 convert_to_int64.cc                  \
							 convert_to_uint16.cc                 \
							 convert_to_uint32.cc                 \
							 convert_to_uint64.cc                 \
							 convert_to_bool.cc                   \
							 convert_to_complex64.cc              \
							 convert_to_complex128.cc             \
							 convert_scalar.cc                    \
							 copy.cc                              \
							 diag.cc                              \
							 dot.cc                               \
							 equal_reduce.cc                      \
							 eye.cc                               \
							 greater_equal_reduce.cc              \
							 greater_reduce.cc                    \
							 item.cc                              \
							 less_equal_reduce.cc                 \
							 less_reduce.cc                       \
							 mapper.cc                            \
							 nonzero.cc                           \
							 norm.cc                              \
							 not_equal_reduce.cc                  \
							 proj.cc                              \
							 rand.cc                              \
							 scan.cc                              \
							 shard.cc                             \
							 sort.cc                              \
							 tile.cc                              \
							 trans.cc                             \
							 where.cc                             \
							 numpy.cc # This must always be the last file!
                        # It guarantees we do our registration callback
                        # only after all task variants are recorded

ifeq ($(strip $(USE_OPENMP)),1)
GEN_CPU_SRC += binary_op_omp.cc           \
							 broadcast_binary_op_omp.cc \
							 fill_omp.cc                \
							 scalar_unary_red_omp.cc    \
							 unary_red_omp.cc           \
							 unary_op_omp.cc
endif

GEN_GPU_SRC += binary_op.cu                         \
							 broadcast_binary_op.cu               \
							 fill.cu                              \
							 scalar_unary_red.cu                  \
							 unary_red.cu                         \
							 unary_op.cu                          \
							 arange.cu                            \
							 arg.cu                               \
							 argmin.cu                            \
							 bincount.cu                          \
							 clip.cu                              \
							 close.cu                             \
							 contains.cu                          \
							 convert_to_half.cu                   \
							 convert_to_float.cu                  \
							 convert_to_double.cu                 \
							 convert_to_int16.cu                  \
							 convert_to_int32.cu                  \
							 convert_to_int64.cu                  \
							 convert_to_uint16.cu                 \
							 convert_to_uint32.cu                 \
							 convert_to_uint64.cu                 \
							 convert_to_bool.cu                   \
							 convert_to_complex64.cu              \
							 convert_to_complex128.cu             \
							 copy.cu                              \
							 diag.cu                              \
							 dot.cu                               \
							 equal_reduce.cu                      \
							 eye.cu                               \
							 greater_equal_reduce.cu              \
							 greater_reduce.cu                    \
							 item.cu				                      \
							 less_equal_reduce.cu                 \
							 less_reduce.cu                       \
							 nonzero.cu                           \
							 norm.cu                              \
							 not_equal_reduce.cu                  \
							 rand.cu                              \
							 scan.cu                              \
							 sort.cu                              \
							 tile.cu                              \
							 trans.cu                             \
							 where.cu
