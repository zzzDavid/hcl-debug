We would like to use a function as both HeteroCL's function to create schedule or a regular Python function. 

For example: 

```python
import heterocl as hcl
 
def func1(b,c):
    if hclctxt():
        (b, c) =  (b.v, c.v)
    return b + c        # some computation …
```

I think we can do this: 

```python
def hclctxt():
    import heterocl
    from heterocl.schedule import Schedule
    if Schedule._TopFunction is not None:
        return True
    else:
        return False
```