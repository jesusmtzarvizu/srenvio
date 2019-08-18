class WelcomeController < ApplicationController
    protect_from_forgery with: :exception

    def greeting
        render html: "Hello World!"
    end
end