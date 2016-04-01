.class public Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;
.super Ljava/lang/Object;
.source "DepthFirstSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DepthFirstSearch"


# instance fields
.field private final mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DEBUG:Z

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;, "Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch<TE;>;"
    .local p1, "graph":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "graph is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_d
    iput-object p1, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    .line 44
    return-void
.end method

.method private addDescendants(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;, "Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    .local p2, "outDescendantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;>;"
    iget-boolean v2, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->marked:Z

    if-nez v2, :cond_26

    .line 107
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_20

    const-string v2, "DepthFirstSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding descendant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_20
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->marked:Z

    .line 109
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    iget-object v2, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v2, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 112
    iget-object v2, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v2, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 113
    .local v0, "childVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    invoke-direct {p0, v0, p2}, addDescendants(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;Ljava/util/ArrayList;)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 121
    .end local v0    # "childVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_45
    return-void
.end method

.method private doDfs(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;, "Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    .local p2, "outTraversedVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;>;"
    iget-boolean v3, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->marked:Z

    if-nez v3, :cond_a

    .line 84
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->marked:Z

    .line 87
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v3, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->incidenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    .line 88
    iget-object v3, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->incidenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;

    .line 90
    .local v0, "edge":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    iget-object v3, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v3, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->destination(Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v2

    .line 91
    .local v2, "vertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    iget-boolean v3, v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->marked:Z

    if-nez v3, :cond_28

    .line 92
    invoke-direct {p0, v2, p2}, doDfs(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 87
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 95
    .end local v0    # "edge":Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Edge<TE;>;"
    .end local v2    # "vertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_2b
    return-object p2
.end method

.method private reinitializeVertices()V
    .registers 4

    .prologue
    .line 67
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;, "Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch<TE;>;"
    iget-object v2, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 68
    .local v1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->marked:Z

    goto :goto_a

    .line 69
    .end local v1    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_1a
    return-void
.end method


# virtual methods
.method public doDfsForAllVertices()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;, "Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch<TE;>;"
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "DepthFirstSearch"

    const-string v4, "doDfsForAllVertices"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, "traversedVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;>;"
    iget-object v3, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3b

    .line 54
    invoke-virtual {p0}, getRootVertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 57
    .local v2, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    iget-boolean v3, v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->marked:Z

    if-nez v3, :cond_24

    .line 58
    invoke-direct {p0, v2, v1}, doDfs(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_24

    .line 61
    .end local v2    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_38
    invoke-direct {p0}, reinitializeVertices()V

    .line 63
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3b
    return-object v1
.end method

.method public getDescendantsOf(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;, "Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    .local p2, "outDescendantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;>;"
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "DepthFirstSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDescendantsOf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1c
    invoke-direct {p0, p1, p2}, addDescendants(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;Ljava/util/ArrayList;)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 102
    invoke-direct {p0}, reinitializeVertices()V

    .line 103
    return-void
.end method

.method public getLeaf(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;)",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;, "Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    const/4 v2, 0x0

    .line 131
    .local v2, "leaf":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    const-string v4, "DepthFirstSearch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finding leaf of subgraph "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v4, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->marked:Z

    if-nez v4, :cond_2c

    .line 133
    iget-object v4, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v4, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2c

    .line 134
    move-object v2, p1

    move-object v3, v2

    .line 148
    .end local v2    # "leaf":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    .local v3, "leaf":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :goto_2b
    return-object v3

    .line 138
    .end local v3    # "leaf":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    .restart local v2    # "leaf":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_2c
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->marked:Z

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    iget-object v4, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v4, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_52

    .line 140
    iget-object v4, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v4, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 141
    .local v0, "childVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    iget-boolean v4, v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->marked:Z

    if-nez v4, :cond_57

    .line 142
    invoke-virtual {p0, v0}, getLeaf(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_57

    .line 147
    .end local v0    # "childVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_52
    invoke-direct {p0}, reinitializeVertices()V

    move-object v3, v2

    .line 148
    .end local v2    # "leaf":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    .restart local v3    # "leaf":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    goto :goto_2b

    .line 139
    .end local v3    # "leaf":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    .restart local v0    # "childVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    .restart local v2    # "leaf":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_30
.end method

.method public getRootVertices()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;, "Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch<TE;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "rootVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v3, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 74
    iget-object v3, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 75
    .local v2, "vertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    iget-object v3, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v3, v2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v3

    if-nez v3, :cond_29

    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 79
    .end local v2    # "vertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    :cond_2c
    return-object v1
.end method

.method public marked(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch;, "Lcom/samsung/android/multidisplay/common/datastructure/DepthFirstSearch<TE;>;"
    .local p1, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<TE;>;"
    iget-boolean v0, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->marked:Z

    return v0
.end method
