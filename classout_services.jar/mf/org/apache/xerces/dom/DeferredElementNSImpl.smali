.class public Lmf/org/apache/xerces/dom/DeferredElementNSImpl;
.super Lmf/org/apache/xerces/dom/ElementNSImpl;
.source "DeferredElementNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x456a4409e1232119L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .registers 4
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    .param p2, "nodeIndex"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 71
    iput p2, p0, fNodeIndex:I

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, needsSyncChildren(Z)V

    .line 74
    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, fNodeIndex:I

    return v0
.end method

.method protected final synchronizeChildren()V
    .registers 3

    .prologue
    .line 155
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 156
    .local v0, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget v1, p0, fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    .line 157
    return-void
.end method

.method protected final synchronizeData()V
    .registers 12

    .prologue
    const/16 v10, 0x3a

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 93
    invoke-virtual {p0, v7}, needsSyncData(Z)V

    .line 97
    iget-object v5, p0, ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v5, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 100
    .local v5, "ownerDocument":Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
    iget-boolean v4, v5, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 101
    .local v4, "orig":Z
    iput-boolean v7, v5, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 103
    iget v7, p0, fNodeIndex:I

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, name:Ljava/lang/String;

    .line 106
    iget-object v7, p0, name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 107
    .local v3, "index":I
    if-gez v3, :cond_78

    .line 108
    iget-object v7, p0, name:Ljava/lang/String;

    iput-object v7, p0, localName:Ljava/lang/String;

    .line 114
    :goto_23
    iget v7, p0, fNodeIndex:I

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, namespaceURI:Ljava/lang/String;

    .line 115
    iget v7, p0, fNodeIndex:I

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v7, p0, type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 118
    invoke-virtual {p0}, setupDefaultAttributes()V

    .line 119
    iget v7, p0, fNodeIndex:I

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    .line 120
    .local v1, "attrIndex":I
    if-eq v1, v9, :cond_75

    .line 121
    invoke-virtual {p0}, getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 122
    .local v2, "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    const/4 v6, 0x0

    .line 124
    .local v6, "seenSchemaDefault":Z
    :cond_45
    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 128
    .local v0, "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getSpecified()Z

    move-result v7

    if-nez v7, :cond_83

    if-nez v6, :cond_6b

    .line 129
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_83

    .line 130
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v7, v8, :cond_83

    .line 131
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_83

    .line 132
    :cond_6b
    const/4 v6, 0x1

    .line 133
    invoke-interface {v2, v0}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 138
    :goto_6f
    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    .line 139
    if-ne v1, v9, :cond_45

    .line 143
    .end local v0    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    .end local v2    # "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v6    # "seenSchemaDefault":Z
    :cond_75
    iput-boolean v4, v5, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 145
    return-void

    .line 111
    .end local v1    # "attrIndex":I
    :cond_78
    iget-object v7, p0, name:Ljava/lang/String;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, localName:Ljava/lang/String;

    goto :goto_23

    .line 136
    .restart local v0    # "attr":Lmf/org/apache/xerces/dom/AttrImpl;
    .restart local v1    # "attrIndex":I
    .restart local v2    # "attrs":Lmf/org/w3c/dom/NamedNodeMap;
    .restart local v6    # "seenSchemaDefault":Z
    :cond_83
    invoke-interface {v2, v0}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_6f
.end method
