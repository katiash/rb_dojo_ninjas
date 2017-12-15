class Dojo < ActiveRecord::Base
    has_many :ninjas, dependent: :destroy # :ninjas is a symbol 
    validates :name, presence: true # :name is also a symbol (a hash with options for the "validates" 
    #validation may come after)
    validates :city, :state, presence:true
    validates :state, length:{is: 2}

    ################ VALIDATION OPTIONS #####################
    # The possible length constraint options are:
    # 
    # :minimum - The attribute cannot have less than the specified length.
    # :maximum - The attribute cannot have more than the specified length.
    # :in (or :within) - 
    #        The attribute length must be included in a given interval. 
    #        The value for this option must be a range.
    # :is - The attribute length must be equal to the given value.
    #   
    # ##########  APPLICATIONS OF THESE: #################
    #   validates :name, length: { minimum: 2 }
    #   validates :bio, length: { maximum: 500 }
    #   validates :password, length: { in: 6..20 }
    #   validates :registration_number, length: { is: 6 }

    ############### CREATE A PLACEHOLDER FOR FORM LIKE SO #############################
    # The default error messages depend on the type of length validation being performed. 
    # You can personalize these messages using the :wrong_length, :too_long, and :too_short options 
    # and then %{count} as a placeholder for the number corresponding to the length constraint being used. 
    # You can still use the :message option to specify an error message.

end
