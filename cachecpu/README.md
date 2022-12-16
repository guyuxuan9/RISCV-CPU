## Summary

### Different versions
1. **Directly mapped cache memory** in the **non-pipelined** CPU (normalcache/cachemem.sv)
2. **Directly mapped cache memory** in the **pipelined** CPU (pipelinecache_new/cachemem.sv)
3. **2-way associative cache memory** for the **pipelined** CPU (2-way_cache/associative_cache.sv)

### Implementation
The two different types of cache memory are very similar. 
For the **directly mapped cache memory** we needed to compare the tag of the memory address to the tag of the cache memory, and also check whether V was high or low, meaning whether there was already data in the set or not. We did this by using an AND gate and then we also implemented a cache_WE wire, because cache should not be written unless an instruction is.
We did the same for the **2-way associative cache**, but we had to make the DATAWIDTH bigger. We then added another AND gate for the second hit, then an OR gate for the two individual hits to create an overall hit. Finally we added a mux gate to choose between the two data outputs, depending on which hit was high.

### Tests
All tests and results are in the **Tests** folder (cache_images and cachemem_tests.md)

### Task Distribution
1. Zach implemented the **directly mapped cache memory**
2. Johanna implemented the **2-way associative cache memory**
3. Zach, Johanna and Yuxuan tested and debugged for all of it