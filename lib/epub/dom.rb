module Epub
  module DOM
    ELEMENT_NODE                = 1 
    ATTRIBUTE_NODE              = 2 
    TEXT_NODE                   = 3 
    CDATA_SECTION_NODE          = 4 
    ENTITY_REFERENCE_NODE       = 5 
    ENTITY_NODE                 = 6 
    PROCESSING_INSTRUCTION_NODE = 7 
    COMMENT_NODE                = 8 
    DOCUMENT_NODE               = 9 
    DOCUMENT_TYPE_NODE          = 10
    DOCUMENT_FRAGMENT_NODE      = 11
    NOTATION_NODE               = 12
    
    def self.walk(dom, &block)
      yield(dom) if dom.is_a?(Nokogiri::XML::Element)
      
      for node in dom.children
        walk(node, &block) if node.type == ELEMENT_NODE
      end
    end

  end
end