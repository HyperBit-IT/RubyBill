# frozen_string_literal: true

module RubyBill
  module ModelsSB
    # Data structures for SBArticles
    def SBArticleData = Struct.new(:Codice, :Descrizione, :AltraDescrizione, :TipoArticolo,
                                   :TipoSpesa, :TipoCalcoloSpesa, :TipoCalcoloPercentualeSpesa,
                                   :CalcoloSpesaPercentuale, :IDUnitaMisura, :IDCodiceIVA,
                                   :FLPrezzoIvato, :PrezzoUnitario, :PrezzoIvato, :LastUpdate)
  end
end
