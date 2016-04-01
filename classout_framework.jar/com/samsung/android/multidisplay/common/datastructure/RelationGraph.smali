.class public Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;
.super Ljava/lang/Object;
.source "RelationGraph.java"


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "RelationGraph"


# instance fields
.field private mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;",
            ">;"
        }
    .end annotation
.end field

.field private mItemWrapperHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DEBUG:Z

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    const-class v1, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    .line 47
    return-void
.end method


# virtual methods
.method public addRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z
    .registers 9
    .param p1, "parentRelationObject"    # Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    .param p2, "childRelationObject"    # Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .prologue
    const/4 v2, 0x0

    .line 51
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_1d

    .line 52
    const-string v3, "RelationGraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRelation() : object="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1d
    if-nez p2, :cond_20

    .line 63
    :cond_1f
    :goto_1f
    return v2

    .line 56
    :cond_20
    new-instance v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    invoke-direct {v0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;-><init>(Ljava/lang/Object;)V

    .line 57
    .local v0, "childItem":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    iget-object v3, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    .line 58
    .local v1, "parentItem":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    iget-object v3, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->insertVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 59
    iget-object v2, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, garbageCollect()V

    .line 61
    const/4 v2, 0x1

    goto :goto_1f
.end method

.method public attachRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z
    .registers 9
    .param p1, "candidateParentRelationObject"    # Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    .param p2, "childRelationObject"    # Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .prologue
    .line 195
    const-string v3, "RelationGraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachRelation() : new relation root="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : child root = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v3, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    .line 199
    .local v0, "candidateParentWrapperItem":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    iget-object v3, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    .line 200
    .local v1, "childWrapperItem":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-eqz v0, :cond_36

    if-nez v1, :cond_5f

    .line 201
    :cond_36
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_5d

    .line 202
    const-string v3, "RelationGraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no WrapperItem for object="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR object="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_5d
    const/4 v2, 0x0

    .line 209
    :goto_5e
    return v2

    .line 207
    :cond_5f
    iget-object v3, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->attachSubGraph(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z

    move-result v2

    .line 208
    .local v2, "result":Z
    invoke-virtual {p0}, garbageCollect()V

    goto :goto_5e
.end method

.method public detachRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z
    .registers 6
    .param p1, "relationObject"    # Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .prologue
    .line 214
    const-string v1, "RelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachRelation() : new relation root="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    .line 216
    .local v0, "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-nez v0, :cond_40

    .line 217
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_3e

    .line 218
    const-string v1, "RelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachRelation() : no ItemWrapper for object="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_3e
    const/4 v1, 0x0

    .line 224
    :goto_3f
    return v1

    .line 222
    :cond_40
    iget-object v1, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->detachSubGraph(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 223
    invoke-virtual {p0}, garbageCollect()V

    .line 224
    const/4 v1, 0x1

    goto :goto_3f
.end method

.method public garbageCollect()V
    .registers 13

    .prologue
    .line 229
    const-string v9, "RelationGraph"

    const-string v10, "garbageCollect()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v9, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v9}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v7

    .line 231
    .local v7, "vertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "gargabeVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 236
    .local v6, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    iget-boolean v9, v6, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->dummy:Z

    if-eqz v9, :cond_50

    .line 237
    iget-object v9, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v9, v6}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v4

    .line 238
    .local v4, "parentVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-eqz v4, :cond_40

    iget-boolean v9, v4, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->dummy:Z

    if-eqz v9, :cond_40

    .line 239
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_3d

    .line 240
    const-string v9, "RelationGraph"

    const-string v10, "garbageCollect() : release duplicated dummy"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_3d
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_40
    iget-object v9, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v9, v6}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_16

    .line 245
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 248
    .end local v4    # "parentVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_50
    invoke-virtual {v6}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v2

    .line 250
    .local v2, "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    invoke-virtual {v2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .line 251
    .local v5, "relationObject":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    if-eqz v5, :cond_62

    invoke-interface {v5}, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;->getObject()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_16

    .line 252
    :cond_62
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_7e

    .line 253
    const-string v9, "RelationGraph"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "garbageCollect() : release itemWrapper="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_7e
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v9, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 258
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;>;"
    :cond_8b
    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 259
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    .line 260
    .local v8, "w":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-ne v8, v2, :cond_8b

    .line 261
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 262
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_8b

    const-string v9, "RelationGraph"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Garbage collected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 270
    .end local v2    # "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;>;"
    .end local v5    # "relationObject":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    .end local v6    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    .end local v8    # "w":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_b9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 271
    .restart local v6    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    iget-object v9, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v6}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->removeVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z

    goto :goto_bd

    .line 273
    .end local v6    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_d3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 274
    return-void
.end method

.method public getDescendantRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "relationObject"    # Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "descendantRelationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    iget-object v8, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    .line 165
    .local v3, "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-nez v3, :cond_2c

    .line 166
    sget-boolean v8, DEBUG:Z

    if-eqz v8, :cond_2b

    .line 167
    const-string v8, "RelationGraph"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDescendantRelation() : no WrapperItem for object="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2b
    return-object v0

    .line 171
    :cond_2c
    iget-object v8, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v8, v3}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v5

    .line 173
    .local v5, "self":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    iget-object v8, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v8, v5}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->getRootVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v4

    .line 174
    .local v4, "progenitorVertex":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "descendantVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;>;"
    if-eqz v4, :cond_68

    .line 176
    iget-object v8, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v8, v4}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->descendantVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_48
    :goto_48
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4c
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    .line 183
    .local v6, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-eqz v6, :cond_4c

    .line 184
    invoke-virtual {v6}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v7

    .line 185
    .local v7, "wrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-eqz v7, :cond_4c

    .line 186
    invoke-virtual {v7}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 178
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    .end local v7    # "wrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_68
    if-eqz v5, :cond_48

    .line 179
    iget-object v8, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v8, v5}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->descendantVertices(Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v1

    .line 180
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48
.end method

.method public getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    return-object v0
.end method

.method public getLeafRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    .registers 9
    .param p1, "relationObject"    # Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v4, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    .line 111
    .local v0, "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-eqz v0, :cond_3d

    .line 112
    iget-object v4, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v4, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->getLeafVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v2

    .line 113
    .local v2, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-eqz v2, :cond_20

    .line 114
    invoke-virtual {v2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v1

    .line 115
    .local v1, "leafItemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .line 125
    .end local v1    # "leafItemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    .end local v2    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_1f
    :goto_1f
    return-object v3

    .line 118
    .restart local v2    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_20
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_1f

    .line 119
    const-string v4, "RelationGraph"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLeafRelation() : no vertex for itemWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 122
    .end local v2    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_3d
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_1f

    .line 123
    const-string v4, "RelationGraph"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLeafRelation() : no WrapperItem for object="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public getRootRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    .registers 9
    .param p1, "relationObject"    # Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v4, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    .line 137
    .local v0, "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-eqz v0, :cond_3d

    .line 138
    iget-object v4, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v4, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->getRootVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;

    move-result-object v2

    .line 139
    .local v2, "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-eqz v2, :cond_20

    .line 140
    invoke-virtual {v2}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    move-result-object v1

    .line 141
    .local v1, "rootItemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .line 151
    .end local v1    # "rootItemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    .end local v2    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_1f
    :goto_1f
    return-object v3

    .line 144
    .restart local v2    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_20
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_1f

    .line 145
    const-string v4, "RelationGraph"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRootRelation() : no vertex for itemWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 148
    .end local v2    # "v":Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/Vertex<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    :cond_3d
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_1f

    .line 149
    const-string v4, "RelationGraph"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRootRelation() : no WrapperItem for object="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public propagateChangedRelationInfo(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;Ljava/lang/Object;)V
    .registers 9
    .param p1, "relationObject"    # Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    .param p2, "updateInfo"    # Ljava/lang/Object;

    .prologue
    .line 82
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_27

    .line 83
    const-string v3, "RelationGraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "propagateChangedRelationInfo() : object="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updateInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_27
    invoke-virtual {p0, p1}, getDescendantRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 87
    .local v0, "descendantVertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6d

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .line 89
    .local v2, "r":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    if-eqz v2, :cond_35

    .line 90
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_5f

    .line 91
    const-string v3, "RelationGraph"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " propagate to ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_5f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;->updateRelatedInfo([Ljava/lang/Object;)V

    goto :goto_35

    .line 96
    .end local v2    # "r":Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;
    :cond_69
    invoke-virtual {p0}, garbageCollect()V

    .line 101
    return-void

    .line 99
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6d
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
.end method

.method public removeRelation(Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;)Z
    .registers 6
    .param p1, "relationObject"    # Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;

    .prologue
    .line 67
    iget-object v1, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    .line 68
    .local v0, "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;>;"
    if-eqz v0, :cond_1c

    .line 69
    iget-object v1, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->removeVertex(Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 70
    iget-object v1, p0, mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, garbageCollect()V

    .line 72
    const/4 v1, 0x1

    .line 78
    :goto_1b
    return v1

    .line 76
    :cond_1c
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_39

    const-string v1, "RelationGraph"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no WrapperItem for object="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_39
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Graph \n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mGraph:Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
