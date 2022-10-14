# NumPy Learning


```python
import numpy as np
```

- The Basics


```python
a = np.array([1,2,3,4])
print(a)
```

    [1 2 3 4]
    


```python
b = np.array([[2,35,5],[2,5,25]])
print(b)

```

    [[ 2 35  5]
     [ 2  5 25]]
    


```python
# Get Dimension
b.ndim
```




    2




```python
# Get Shape
b.shape
```




    (2, 3)




```python
# Get type
a.dtype
```




    dtype('int32')




```python
# Get Size
a.itemsize
```




    4




```python
# Get total size
a.size * a.itemsize
```




    16



### Acessing/Changing specific elements, rows, colums, ets


```python
a = np.array([[2342,2342,234],[2,52,5]])
print(a)
```

    [[2342 2342  234]
     [   2   52    5]]
    


```python
# Get Specific elenment [r,c]
a[1,2]
```




    5




```python
# Get row
a[0,:]
```




    array([2342, 2342,  234])




```python
# Get Colum
a[:,1]
```




    array([2342,   52])



## 3D example


```python
b = np.array([[[1,2],[3,4]],[[4,5],[6,7]]])
print(b)
```

    [[[1 2]
      [3 4]]
    
     [[4 5]
      [6 7]]]
    


```python
# Get specific element 
b[0,1,:]
```




    array([3, 4])




```python

```
