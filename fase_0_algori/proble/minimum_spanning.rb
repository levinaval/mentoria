# Classe para representar um Grafo
class Graph
  attr_reader :vertices, :edges

  def initialize(vertices)
    @vertices = vertices
    @edges = []
  end

  # Adiciona uma aresta ao grafo
  def add_edge(u, v, weight)
    @edges << [weight, u, v]
  end

  # Função para encontrar o MST usando o algoritmo de Kruskal
  def kruskal_mst
    # Inicializa o Union-Find
    parent = Array.new(vertices) { |i| i }
    rank = Array.new(vertices, 0)

    # Função para encontrar o conjunto de um elemento (usando path compression)
    find = lambda do |u|
      if parent[u] != u
        parent[u] = find.call(parent[u])
      end
      parent[u]
    end

    # Função para unir dois conjuntos (usando union by rank)
    union = lambda do |u, v|
      root_u = find.call(u)
      root_v = find.call(v)
      if root_u != root_v
        if rank[root_u] < rank[root_v]
          parent[root_u] = root_v
        elsif rank[root_u] > rank[root_v]
          parent[root_v] = root_u
        else
          parent[root_v] = root_u
          rank[root_u] += 1
        end
      end
    end

    # Ordena as arestas pelo peso
    @edges.sort_by! { |weight, u, v| weight }

    mst = []
    total_weight = 0

    # Adiciona as arestas ao MST, garantindo que não formem ciclos
    @edges.each do |weight, u, v|
      if find.call(u) != find.call(v)
        union.call(u, v)
        mst << [u, v, weight]
        total_weight += weight
      end
    end

    [mst, total_weight]
  end
end

# Exemplo de uso
graph = Graph.new(4)
graph.add_edge(0, 1, 10)
graph.add_edge(0, 2, 6)
graph.add_edge(0, 3, 5)
graph.add_edge(1, 3, 15)
graph.add_edge(2, 3, 4)

mst, total_weight = graph.kruskal_mst
puts "Arestas no MST: #{mst}"
puts "Peso total do MST: #{total_weight}"
