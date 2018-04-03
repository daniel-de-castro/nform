class RepliesController < ApplicationController
      
      def create
        @post = Post.find(params[:post_id])
        @reply = @post.replies.create(params[:reply].permit(:user_id, :body))
        @reply.user_id=current_user.id if current_user
        @reply.save

  if @reply.save
    redirect_to post_path(@post)
  else
    render 'new'
  end
      
      #------------------------------------------------------
      
      #def create
       #     @post = Post.find(params[:post_id])
        #    @reply = @post.replies.create(reply_params)
         #   @reply.user = current_user
         #   #@reply = current_user.replies.build(params[:reply]) # current_user is a devise helper method
            
         #   redirect_to post_path(@post)
      #end
      
      #private 
      #def reply_params
      #      params.require(:reply).permit(:username, :body) #was :author
      #end
      
end
end
