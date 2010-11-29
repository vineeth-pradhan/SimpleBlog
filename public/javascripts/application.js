// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function commentBoxSlideUp(){
	Effect.SlideUp('new_comment',{duration: 0.3});
	Effect.Appear('new_comment_link',{duration:0.1});
	Effect.ScrollTo('new_comment',{offset:9000000});	
	return false;
}

function slideDownNewCommentBox(){
	Effect.SlideDown('new_comment',{duration: 0.3});
	Effect.Fade('new_comment_link',{duration: 0.5});
	Effect.ScrollTo('new_comment',{offset:9000000});
    return false;
}
