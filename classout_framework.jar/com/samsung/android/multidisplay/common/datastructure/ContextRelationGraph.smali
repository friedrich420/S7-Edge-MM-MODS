.class public Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;
.super Ljava/lang/Object;
.source "ContextRelationGraph.java"


# static fields
.field static final DEBUG:Z

.field static final DUMP_DETAIL:Z

.field static final TAG:Ljava/lang/String; = "ContextRelationGraph"


# instance fields
.field private final mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DEBUG:Z

    sput-boolean v0, DEBUG:Z

    .line 44
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DUMP_DETAIL:Z

    sput-boolean v0, DUMP_DETAIL:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    const-string v1, "ContextRelationGraph"

    invoke-direct {v0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    .line 49
    return-void
.end method


# virtual methods
.method public attachContext(Landroid/content/Context;Landroid/content/Context;)Z
    .registers 8
    .param p1, "candidateParentContext"    # Landroid/content/Context;
    .param p2, "childContext"    # Landroid/content/Context;

    .prologue
    .line 157
    const-string v2, "ContextRelationGraph"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachContext() : parentContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " childContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0, p1}, findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .line 160
    .local v0, "candidateParentContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    invoke-virtual {p0, p2}, findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v1

    .line 161
    .local v1, "childContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_2e

    if-nez v1, :cond_57

    .line 162
    :cond_2e
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_55

    .line 163
    const-string v2, "ContextRelationGraph"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no ContextWrapper for context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_55
    const/4 v2, 0x0

    .line 169
    :goto_56
    return v2

    .line 168
    :cond_57
    iget-object v2, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->attachRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z

    .line 169
    const/4 v2, 0x1

    goto :goto_56
.end method

.method public createContext(Landroid/content/Context;Landroid/content/Context;)Z
    .registers 9
    .param p1, "parentContext"    # Landroid/content/Context;
    .param p2, "childContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 52
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_1d

    .line 53
    const-string v3, "ContextRelationGraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createContext() : context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1d
    if-nez p2, :cond_20

    .line 71
    :cond_1f
    :goto_1f
    return v2

    .line 58
    :cond_20
    invoke-virtual {p0, p2}, findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .line 59
    .local v0, "childContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_32

    .line 60
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_1f

    .line 61
    const-string v3, "ContextRelationGraph"

    const-string v4, "createContext() : same context already exist in graph!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 65
    :cond_32
    new-instance v0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    .end local v0    # "childContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    invoke-direct {v0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 67
    .restart local v0    # "childContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    invoke-virtual {p0, p1}, findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v1

    .line 68
    .local v1, "parentContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    iget-object v3, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->addRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 69
    const/4 v2, 0x1

    goto :goto_1f
.end method

.method public detachContext(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const-string v1, "ContextRelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachContext() : context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0, p1}, findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .line 146
    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-nez v0, :cond_3d

    .line 147
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_3b

    .line 148
    const-string v1, "ContextRelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no ContextWrapper for context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_3b
    const/4 v1, 0x0

    .line 153
    :goto_3c
    return v1

    .line 152
    :cond_3d
    iget-object v1, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->detachRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z

    .line 153
    const/4 v1, 0x1

    goto :goto_3c
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
    .registers 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpDetail"    # Z
    .param p4, "dumpCallStack"    # Z

    .prologue
    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    const-string v8, "Context relation policy : "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    const-string/jumbo v8, "mGraphName="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    iget-object v8, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->getGraphName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    const-string v8, "Vertex size="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    iget-object v8, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->numVertices()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 245
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    const-string v8, "Edge size="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-object v8, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->numEdges()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 249
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v8, "rootVertices= {"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    iget-object v8, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->getRootVertices()Ljava/util/ArrayList;

    move-result-object v6

    .line 253
    .local v6, "rootVerticesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 254
    .local v7, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v7, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_72

    .line 256
    .end local v7    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_97
    const-string v8, " }"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    if-eqz p3, :cond_101

    .line 259
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    const-string v8, "DFS Traversed Vertices= {"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    iget-object v8, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->doDfsForAllVertices()Ljava/util/ArrayList;

    move-result-object v0

    .line 263
    .local v0, "allVerticesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b4
    :goto_b4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 264
    .restart local v7    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 266
    sget-boolean v8, DUMP_DETAIL:Z

    if-eqz v8, :cond_b4

    .line 267
    if-eqz p4, :cond_b4

    .line 268
    invoke-virtual {v7}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v4

    .line 269
    .local v4, "o":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    invoke-virtual {v4}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .line 270
    .local v5, "ro":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    instance-of v8, v5, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    if-eqz v8, :cond_b4

    move-object v1, v5

    .line 271
    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    .line 272
    .local v1, "c":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    invoke-virtual {v1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->getCallStack()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b4

    .line 278
    .end local v1    # "c":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    .end local v4    # "o":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    .end local v5    # "ro":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    .end local v7    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_f8
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v8, "}"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    .end local v0    # "allVerticesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;>;"
    :cond_101
    return-void
.end method

.method findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 183
    if-nez p1, :cond_5

    move-object v5, v7

    .line 198
    :goto_4
    return-object v5

    .line 186
    :cond_5
    iget-object v8, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v8}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v0

    .line 187
    .local v0, "graph":Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 188
    .local v6, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<*>;"
    invoke-virtual {v6}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v3

    .line 189
    .local v3, "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<*>;"
    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v2

    .line 190
    .local v2, "item":Ljava/lang/Object;
    instance-of v8, v2, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    if-eqz v8, :cond_13

    move-object v5, v2

    .line 191
    check-cast v5, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    .line 192
    .local v5, "tmpContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    iget-object v8, v5, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->itemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 193
    .local v4, "tmpContext":Landroid/content/Context;
    if-ne v4, p1, :cond_13

    invoke-virtual {v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->isDummyWrappedItem()Z

    move-result v8

    if-nez v8, :cond_13

    goto :goto_4

    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<*>;"
    .end local v4    # "tmpContext":Landroid/content/Context;
    .end local v5    # "tmpContextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    .end local v6    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<*>;"
    :cond_3f
    move-object v5, v7

    .line 198
    goto :goto_4
.end method

.method public getDescendantVertices(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v1

    .line 125
    .local v1, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-nez v1, :cond_25

    .line 126
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_23

    .line 127
    const-string v6, "ContextRelationGraph"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no ContextWrapper for context="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_23
    const/4 v2, 0x0

    .line 140
    :cond_24
    return-object v2

    .line 131
    :cond_25
    iget-object v6, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v6, v1}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getDescendantRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Ljava/util/ArrayList;

    move-result-object v3

    .line 133
    .local v3, "descendantRelationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, "descendantContextList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Context;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .line 135
    .local v5, "r":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    if-eqz v5, :cond_34

    .line 136
    invoke-interface {v5}, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 137
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34
.end method

.method public getLeafContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0, p1}, findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .line 88
    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_16

    .line 89
    iget-object v3, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v3, v0}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getLeafRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    move-result-object v1

    .line 90
    .local v1, "leafRelation":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 94
    .end local v1    # "leafRelation":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    :cond_15
    :goto_15
    return-object v2

    .line 92
    :cond_16
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_15

    const-string v3, "ContextRelationGraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no ContextWrapper for context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public getRelationGraph()Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    return-object v0
.end method

.method public getRootContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0, p1}, findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .line 99
    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_16

    .line 100
    iget-object v3, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v3, v0}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getRootRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    move-result-object v1

    .line 101
    .local v1, "rootRelation":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 105
    .end local v1    # "rootRelation":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    :cond_15
    :goto_15
    return-object v2

    .line 103
    :cond_16
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_15

    const-string v3, "ContextRelationGraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no ContextWrapper for context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public isRootContext(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    if-eqz p1, :cond_a

    .line 285
    invoke-virtual {p0, p1}, getRootContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 286
    .local v0, "rootContext":Landroid/content/Context;
    if-ne v0, p1, :cond_a

    .line 287
    const/4 v1, 0x1

    .line 289
    .end local v0    # "rootContext":Landroid/content/Context;
    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public propagateChangedDisplay(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .prologue
    .line 109
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_2b

    .line 110
    const-string v1, "ContextRelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "propagateChangedDisplay() : for outerContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_2b
    invoke-virtual {p0, p1}, findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .line 114
    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-nez v0, :cond_4f

    .line 115
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_4e

    .line 116
    const-string v1, "ContextRelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no ContextWrapper for context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_4e
    :goto_4e
    return-void

    .line 120
    :cond_4f
    iget-object v1, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->propagateChangedRelationInfo(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;Ljava/lang/Object;)V

    goto :goto_4e
.end method

.method public removeContext(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .line 76
    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_10

    .line 77
    iget-object v1, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->removeRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 78
    const/4 v1, 0x1

    .line 83
    :goto_f
    return v1

    .line 81
    :cond_10
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_2d

    const-string v1, "ContextRelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no ContextWrapper for context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2d
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Graph \n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    const-string v3, ""

    .line 203
    .local v3, "ret":Ljava/lang/String;
    if-nez p1, :cond_8

    .line 204
    const-string/jumbo v5, "null"

    .line 231
    :goto_7
    return-object v5

    .line 206
    :cond_8
    invoke-virtual {p0, p1}, findContextWrapper(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    move-result-object v0

    .line 207
    .local v0, "contextWrapper":Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
    if-eqz v0, :cond_14

    .line 208
    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_12
    move-object v5, v3

    .line 231
    goto :goto_7

    .line 210
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 211
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    .line 214
    .local v2, "outerContext":Landroid/content/Context;
    instance-of v5, v2, Landroid/app/Activity;

    if-eqz v5, :cond_82

    .line 215
    const-string v5, "a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :goto_4e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 227
    .local v1, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    .line 216
    .end local v1    # "id":I
    :cond_82
    instance-of v5, v2, Landroid/app/Service;

    if-eqz v5, :cond_8d

    .line 217
    const-string/jumbo v5, "s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 218
    :cond_8d
    instance-of v5, v2, Landroid/app/Application;

    if-eqz v5, :cond_98

    .line 219
    const-string/jumbo v5, "p "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 220
    :cond_98
    instance-of v5, v2, Landroid/view/ContextThemeWrapper;

    if-eqz v5, :cond_a3

    .line 221
    const-string/jumbo v5, "t "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 223
    :cond_a3
    const-string v5, "c "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e
.end method
