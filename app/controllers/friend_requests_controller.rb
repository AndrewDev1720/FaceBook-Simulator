class FriendRequestsController < ApplicationController
    def create
        FriendRequest.create!(friend_request_params)
        redirect_to user_path(params[:receiver_id])
    end
    
    def destroy
        receiver_id = params[:receiver_id].to_i
        requestor_id = params[:requestor_id].to_i
        if(requestor_id == current_user.id)
            User.find(receiver_id).friend_requests.where(requestor_id: current_user.id).delete_all
            redirect_to user_path(receiver_id)
        else
            current_user.friend_requests.where(requestor_id: requestor_id).delete_all
            redirect_to user_path(requestor_id)
        end
    end

    private def friend_request_params()
        params.permit(:requestor_id, :receiver_id)
    end
end