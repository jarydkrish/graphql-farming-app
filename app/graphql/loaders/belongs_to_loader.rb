module Loaders
  class BelongsToLoader < GraphQL::Batch::Loader
    def initialize(model, column = :id)
      @model = model
      @column = column.to_s
      @column_type = model.type_for_attribute(@column)
    end

    def load(key)
      super(@column_type.cast(key))
    end

    def perform(keys)
      query(keys).each { |record| fulfill(record.public_send(@column), record) }
      keys.each { |key| fulfill(key, nil) unless fulfilled?(key) }
    end

    private

    def query(keys)
      scope = @model
      scope.where(@column => keys)
    end
  end
end
