require File.join(File.dirname(__FILE__), 'spec_helper')
require 'rdf/spec/mutable'

describe RDF::Mutable do
  before :each do
    # The available reference implementations are `RDF::Repository` and
    # `RDF::Graph`, but a plain Ruby array will do fine as well:
    #@mutable = [].extend(RDF::Mutable) # FIXME
    @mutable = RDF::Repository.new
  end

  # @see lib/rdf/spec/mutable.rb in rdf-spec
  it_should_behave_like RDF_Mutable
end
