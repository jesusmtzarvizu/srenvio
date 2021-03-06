require 'fedex'
class WelcomeController < ApplicationController
    #protect_from_forgery with: :exception
   
    @@fedex = Fedex::Shipment.new(:key => 'jfjwKS65xft8r8mh',
                                :password => 'QYrbniTyMafyj4LXm4tV7nsq5',
                                :account_number => '802388543',
                                :meter => '119147906',
                                :mode => 'development')

    @@shipper = { :name => "Sender",
                  :company => "Company",
                  :phone_number => "555-555-5555",
                  :address => "Main Street",
                  :city => "Harrison",
                  :state => "AR",
                  :postal_code => "72601",
                  :country_code => "US"}

     @@recipient = { :name => "Recipient",
              :company => "Company",
              :phone_number => "555-555-5555",
              :address => "Main Street",
              :city => "Franklin Park",
              :state => "IL",
              :postal_code => "60131",
              :country_code => "US",
              :residential => "false" }   
              
    @@packages = []
    @@packages << {
    :weight => {:units => "LB", :value => 2},
    :dimensions => {:length => 10, :width => 5, :height => 4, :units => "IN" }
    }
    @@packages << {
    :weight => {:units => "LB", :value => 6},
    :dimensions => {:length => 5, :width => 5, :height => 4, :units => "IN" }
    }

    @@shipping_options = {
  :packaging_type => "YOUR_PACKAGING",
  :drop_off_type => "REGULAR_PICKUP"
}

@@payment_options = {
  :type => "THIRD_PARTY",
  :account_number => "123456789",
  :name => "Third Party Payor",
  :company => "Company",
  :phone_number => "555-555-5555",
  :country_code => "US"
}


@@rate = @@fedex.rate(:shipper=>@@shipper,
                      :recipient => @@recipient,
                      :packages => @@packages,
                      :service_type => "FEDEX_GROUND",
                      :shipping_options => @@shipping_options)
@@ratejson=@@rate.to_json

@@total_net_charge=JSON.parse(@@ratejson)

#@@fedex::Request::TrackingInformation(:tracking_number=>'149331877648230')
@@total=@@total_net_charge[0]['total_net_charge']
    def greeting
        render plain: @@fedex.track(:tracking_number=>'920241085725456')
       
    end
end