.class public Lmf/org/apache/xerces/dom/ElementDefinitionImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "ElementDefinitionImpl.java"


# static fields
.field static final serialVersionUID:J = -0x7436093334741c3aL


# instance fields
.field protected attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .registers 4
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 61
    iput-object p2, p0, name:Ljava/lang/String;

    .line 62
    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v0, p0, attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 63
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "deep"    # Z

    .prologue
    .line 93
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    .line 95
    .local v0, "newnode":Lmf/org/apache/xerces/dom/ElementDefinitionImpl;
    iget-object v1, p0, attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    iput-object v1, v0, attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 96
    return-object v0
.end method

.method public getAttributes()Lmf/org/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 112
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 113
    invoke-virtual {p0}, synchronizeChildren()V

    .line 115
    :cond_9
    iget-object v0, p0, attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 82
    invoke-virtual {p0}, synchronizeData()V

    .line 84
    :cond_9
    iget-object v0, p0, name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 74
    const/16 v0, 0x15

    return v0
.end method
