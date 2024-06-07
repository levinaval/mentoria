class Graph
  attr_reader :vertices, :edges

  def initialize(vertices)
    @vertices = vertices
    @edges = []
  end

  # Adicionar uma aresta ao grafo.
  def add_edge(u, v, weight)
    @edges << [weight, u, v]
  end

  # Função para encontrar o MST usando o algoritmo de krukal.
end