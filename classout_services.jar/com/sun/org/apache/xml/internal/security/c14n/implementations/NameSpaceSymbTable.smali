.class public Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;
.super Ljava/lang/Object;


# static fields
.field static final XMLNS:Ljava/lang/String; = "xmlns"


# instance fields
.field cloned:Z

.field level:Ljava/util/List;

.field nameSpaces:I

.field symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;-><init>()V

    iput-object v0, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    const/4 v0, 0x0

    iput v0, p0, nameSpaces:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, level:Ljava/util/List;

    iput-boolean v3, p0, cloned:Z

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/Attr;Z)V

    const-string v1, ""

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iget-object v1, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    const-string/jumbo v2, "xmlns"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    return-void
.end method


# virtual methods
.method public addMapping(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v3, v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->uri:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :goto_12
    return v0

    :cond_13
    new-instance v3, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-direct {v3, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/Attr;Z)V

    invoke-virtual {p0}, needsClone()V

    iget-object v0, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    if-eqz v2, :cond_34

    iget-object v0, v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iput-object v0, v3, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iget-object v0, v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iput-boolean v1, v3, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    :cond_34
    move v0, v1

    goto :goto_12
.end method

.method public addMappingAndRender(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;
    .registers 9

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v2, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->uri:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-boolean v2, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    if-nez v2, :cond_2a

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0}, needsClone()V

    iget-object v1, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v1, p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    iput-object p2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    :cond_2a
    :goto_2a
    return-object v0

    :cond_2b
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-direct {v2, p2, p3, v4}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/Attr;Z)V

    iput-object p2, v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    invoke-virtual {p0}, needsClone()V

    iget-object v3, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v3, p1, v2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    if-eqz v1, :cond_4b

    iget-object v3, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    if-eqz v3, :cond_4b

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iput-boolean v4, v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    goto :goto_2a

    :cond_4b
    iget-object v0, v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    goto :goto_2a
.end method

.method public addMappingAndRenderXNodeSet(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;Z)Lorg/w3c/dom/Node;
    .registers 9

    const/4 v3, 0x1

    iget-object v0, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    iget v1, p0, nameSpaces:I

    if-eqz v0, :cond_55

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->uri:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-boolean v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    if-nez v2, :cond_2c

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0}, needsClone()V

    iget-object v2, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v2, p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    iput-boolean v3, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    iput v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    :goto_2b
    return-object v0

    :cond_2c
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0}, needsClone()V

    iget-object v2, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v2, p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    if-eqz p4, :cond_50

    iget v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    sub-int v2, v1, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4c

    const-string/jumbo v2, "xmlns"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_4c
    iput v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    const/4 v0, 0x0

    goto :goto_2b

    :cond_50
    iput v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    goto :goto_2b

    :cond_55
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-direct {v1, p2, p3, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/Attr;Z)V

    iget v2, p0, nameSpaces:I

    iput v2, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    iput-boolean v3, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    invoke-virtual {p0}, needsClone()V

    iget-object v2, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v2, p1, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    if-eqz v0, :cond_7c

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iput-object v2, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    if-eqz v2, :cond_7c

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iput-boolean v3, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    :cond_7c
    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    goto :goto_2b
.end method

.method public getMapping(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-boolean v2, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0}, needsClone()V

    iget-object v1, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v1, p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    iget v1, p0, nameSpaces:I

    iput v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->uri:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    goto :goto_9
.end method

.method public getMappingWithoutRendered(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-boolean v2, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    if-nez v2, :cond_9

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    goto :goto_9
.end method

.method public getUnrenderedNodes(Ljava/util/Collection;)V
    .registers 5

    iget-object v0, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entrySet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iget-boolean v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    goto :goto_a

    :cond_29
    return-void
.end method

.method final needsClone()V
    .registers 3

    iget-boolean v0, p0, cloned:Z

    if-nez v0, :cond_25

    iget-object v0, p0, level:Ljava/util/List;

    iget-object v1, p0, level:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, level:Ljava/util/List;

    iget-object v1, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    iput-object v0, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, cloned:Z

    :cond_25
    return-void
.end method

.method public outputNodePop()V
    .registers 2

    iget v0, p0, nameSpaces:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, nameSpaces:I

    invoke-virtual {p0}, pop()V

    return-void
.end method

.method public outputNodePush()V
    .registers 2

    iget v0, p0, nameSpaces:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, nameSpaces:I

    invoke-virtual {p0}, push()V

    return-void
.end method

.method public pop()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, level:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, level:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    iput-object v0, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    if-nez v2, :cond_1a

    iput-boolean v1, p0, cloned:Z

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, level:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    if-eq v0, v2, :cond_2a

    const/4 v0, 0x1

    :goto_27
    iput-boolean v0, p0, cloned:Z

    goto :goto_19

    :cond_2a
    move v0, v1

    goto :goto_27

    :cond_2c
    iput-boolean v1, p0, cloned:Z

    goto :goto_19
.end method

.method public push()V
    .registers 3

    iget-object v0, p0, level:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, cloned:Z

    return-void
.end method
