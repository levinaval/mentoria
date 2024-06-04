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
    parent = Array.new(vertices) { |i| i }
    rank = Array.new(vertices, 0)

    # Função para encontrar o conjunto de um elemento(Usando path compression).
    find = lambda do |u|
      if parent[u] = find.call(parent[u]) end
    parent[u]
  end
   
  # Função para unir dois conjuntos(Usando union by rank).
  union = lambda do |u, v|
    root_u = find.call(u)
    root_u = find.call(v)
    if root_u != root_v
      if rank[root_u] < rank[root_v]
        parent[root_u] = root_v
        elsif rank[root_v] > rank[root_v]
          parent[root_v] = root_v
        else
          parent[root_v] = root_u
          rank[root_u] += 1
      end
    end
end

# Ordena as arestas pelo peso.
