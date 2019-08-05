class InvoicesController < ApplicationController
  require 'json'
    def invoice_list
        @invoices = JSON.parse(File.read('app/views/invoices/invoice_list.json'))
        @collection = JSON.parse(File.read('app/views/invoices/collections.json'))
    end

    def index
        invoice_list
    end
end
