.class Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;


# instance fields
.field intersectNodes:Ljava/util/List;

.field substractNodes:Ljava/util/List;

.field unionNodes:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, unionNodes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, substractNodes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, intersectNodes:Ljava/util/List;

    iput-object p1, p0, unionNodes:Ljava/util/List;

    iput-object p2, p0, substractNodes:Ljava/util/List;

    iput-object p3, p0, intersectNodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isNodeInclude(Lorg/w3c/dom/Node;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, substractNodes:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, rooted(Lorg/w3c/dom/Node;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v2, v0

    :goto_b
    if-eqz v2, :cond_16

    iget-object v3, p0, unionNodes:Ljava/util/List;

    invoke-virtual {p0, p1, v3}, rooted(Lorg/w3c/dom/Node;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v2, v1

    :cond_16
    if-nez v2, :cond_23

    :goto_18
    return v0

    :cond_19
    iget-object v2, p0, intersectNodes:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, rooted(Lorg/w3c/dom/Node;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_25

    move v2, v0

    goto :goto_b

    :cond_23
    move v0, v1

    goto :goto_18

    :cond_25
    move v2, v1

    goto :goto_b
.end method

.method rooted(Lorg/w3c/dom/Node;Ljava/util/List;)Z
    .registers 9

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move v3, v2

    :goto_13
    if-ge v3, v4, :cond_24

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->isDescendantOrSelf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v2, 0x1

    :cond_20
    return v2

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
