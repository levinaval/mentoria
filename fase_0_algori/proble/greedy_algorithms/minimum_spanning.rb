# Classe para representar um grafo.
class Graph
    attr_reader :vertices, :edges

    def initialize(vertices)
        @vertices = vertices
        @edges = []
    end

    # adiciona uma areta ao grafo.
    def add_edge(u, v, weight)
        @edges << [weight, u, v]
    end

    # Função para encontrar o MST usando o algoritmo de Kruskal.
    def kruskal_mst
        # Inicializa o Union-Find
        parent = Array.new(vertices) { |i| i}
        rank = Array.new(vertices, 0)

        # Função para encontrar o conjunto de um elemento (usando path compression)
        find = lambda do |u|
            if parent[u] != u 
                parent[u] = find.call(parent[u])
            end
            parent[u]
        end
        
    end
end