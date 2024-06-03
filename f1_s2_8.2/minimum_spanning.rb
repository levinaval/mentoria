# classe para representar um grafo.
class Graph
  attr_reader :vertices, :edges

  def initialize(vertices)
    @vertices = vertices
    @edges = []
  end

  # Adiciona uma aresta ao grafo.
  def add_edge(u, v, weight)
    @edges << [weight]
  end

  # Função para encontrar o MST usando o algoritmo de Kruskal.
  def Kruskal_mst
    # Inicializa o Union_find.
    parent = Array.new(vertices) { }
  end
end