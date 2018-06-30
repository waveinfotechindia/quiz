<?php namespace App\Http\Controllers\Admin;
use Auth;
use App\Posts;
use App\Pages;
use App\User;
use Redirect;
//use App\Http\Controllers\Controller;
use App\Http\Requests;

use Illuminate\Http\Request;

// note: use true and false for active Pages in postgresql database
// here '0' and '1' are used for active Pages because of mysql database

class PagesController extends MainAdminController {

	public function __construct()
    {
		 $this->middleware('auth');	
         
    }
	public function pages_list()
	{
		//die('dsfg');
		$posts = Pages::where('author_id','1')->orderBy('created_at','desc')->paginate(5);
		$title = 'Latest Posts';
		return view('admin.pages.pages')->withPosts($posts)->withTitle($title);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create(Request $request)
	{
			return view('admin.pages.create-page');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function addpost(Request $request)
	{
		$post = new Pages();
		$post->title = $request->get('title');
		$post->body = $request->get('body');
		$post->slug = str_slug($post->title);
		
		$duplicate = Pages::where('slug',$post->slug)->first();
		if($duplicate)
		{
			return redirect('admin/new-page')->withErrors('Title already exists.')->withInput();
		}	
		
		$post->author_id = $request->user()->id;
		if($request->has('save'))
		{
			$post->active = 0;
			$message = 'page saved successfully';			
		}			
		else 
		{
			$post->active = 1;
			$message = 'page published successfully';
		}
		$post->save();
		return redirect('admin/edit-page/'.$post->slug)->withMessage($message);
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($slug)
	{
		$post = Pages::where('slug',$slug)->first();

		if($post)
		{
			if($post->active == false)
				return redirect('/')->withErrors('requested page not found');
			$comments = $post->comments;	
		}
		else 
		{
			return redirect('/')->withErrors('requested page not found');
		}
		return view('admin.pages.show')->withPost($post)->withComments($comments);
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit(Request $request,$slug)
	{
	
	
	if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }
       // echo "hi"; die;
		$post = Pages::where('slug',$slug)->first();
		if($post)
			return view('admin.pages.edit-page')->with('post',$post);
		else 
		{
			return redirect('/')->withErrors('you have not sufficient permissions');
		}
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Request $request)
	{
		//
		$post_id = $request->input('post_id');
		$post = Pages::find($post_id);
		if($post && ($post->author_id == $request->user()->id ))
		{
			$title = $request->input('title');
			$slug = str_slug($title);
			$duplicate = Pages::where('slug',$slug)->first();
			if($duplicate)
			{
				if($duplicate->id != $post_id)
				{
					return redirect('admin/edit-page/'.$post->slug)->withErrors('Title already exists.')->withInput();
				}
				else 
				{
					$post->slug = $slug;
				}
			}
			
			$post->title = $title;
			$post->body = $request->input('body');
			
			if($request->has('save'))
			{
				$post->active = 0;
				$message = 'Page saved successfully';
				$landing = 'admin/edit-page/'.$post->slug;
			}			
			else {
				$post->active = 1;
				$message = 'Page updated successfully';
				$landing = 'admin/edit-page/'.$post->slug;
			}
			$post->save();
	 		return redirect($landing)->withMessage($message);
		}
		else
		{
			return redirect('/')->withErrors('you have not sufficient permissions');
		}
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy(Request $request, $id)
	{
		//
		$post = Pages::find($id);
		if($post && ($post->author_id == $request->user()->id || $request->user()->is_admin()))
		{
			$post->delete();
			$data['message'] = 'Page deleted Successfully';
		}
		else 
		{
			$data['errors'] = 'Invalid Operation. You have not sufficient permissions';
		}
		
		return redirect('admin/pages')->with($data);
	}
}
