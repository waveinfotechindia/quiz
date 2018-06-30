<option value="">Select Sub Category</option>
@foreach($subcategories as $i => $subcategory)
<option value="{{$subcategory->cat_id}}">{{$subcategory->category_name}}</option>
@endforeach