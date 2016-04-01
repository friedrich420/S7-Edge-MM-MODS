.class public Lmf/org/apache/xerces/dom/DeepNodeListImpl;
.super Ljava/lang/Object;
.source "DeepNodeListImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/NodeList;


# instance fields
.field protected changes:I

.field protected enableNS:Z

.field protected nodes:Ljava/util/ArrayList;

.field protected nsName:Ljava/lang/String;

.field protected rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

.field protected tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .registers 4
    .param p1, "rootNode"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, changes:I

    .line 87
    iput-boolean v0, p0, enableNS:Z

    .line 95
    iput-object p1, p0, rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 96
    iput-object p2, p0, tagName:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, nodes:Ljava/util/ArrayList;

    .line 98
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "rootNode"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "nsName"    # Ljava/lang/String;
    .param p3, "tagName"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p3}, <init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    .line 104
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    .end local p2    # "nsName":Ljava/lang/String;
    :goto_b
    iput-object p2, p0, nsName:Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, enableNS:Z

    .line 106
    return-void

    .line 104
    .restart local p2    # "nsName":Ljava/lang/String;
    :cond_11
    const/4 p2, 0x0

    goto :goto_b
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 115
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, item(I)Lmf/org/w3c/dom/Node;

    .line 116
    iget-object v0, p0, nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 124
    iget-object v2, p0, rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->changes()I

    move-result v2

    iget v3, p0, changes:I

    if-eq v2, v3, :cond_19

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, nodes:Ljava/util/ArrayList;

    .line 126
    iget-object v2, p0, rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->changes()I

    move-result v2

    iput v2, p0, changes:I

    .line 130
    :cond_19
    iget-object v2, p0, nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 131
    .local v0, "currentSize":I
    if-ge p1, v0, :cond_2a

    .line 132
    iget-object v2, p0, nodes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/w3c/dom/Node;

    .line 154
    :goto_29
    return-object v2

    .line 138
    :cond_2a
    if-nez v0, :cond_3a

    .line 139
    iget-object v1, p0, rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 146
    .local v1, "thisNode":Lmf/org/w3c/dom/Node;
    :cond_2e
    :goto_2e
    if-eqz v1, :cond_38

    iget-object v2, p0, nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_45

    :cond_38
    move-object v2, v1

    .line 154
    goto :goto_29

    .line 142
    .end local v1    # "thisNode":Lmf/org/w3c/dom/Node;
    :cond_3a
    iget-object v2, p0, nodes:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 146
    .restart local v1    # "thisNode":Lmf/org/w3c/dom/Node;
    goto :goto_2e

    .line 147
    :cond_45
    invoke-virtual {p0, v1}, nextMatchingElementAfter(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_2e

    .line 149
    iget-object v2, p0, nodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e
.end method

.method protected nextMatchingElementAfter(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .registers 6
    .param p1, "current"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 171
    :cond_0
    if-nez p1, :cond_4

    .line 245
    const/4 v2, 0x0

    :goto_3
    return-object v2

    .line 173
    :cond_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 174
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    .line 197
    :goto_e
    iget-object v2, p0, rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq p1, v2, :cond_0

    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 200
    iget-boolean v2, p0, enableNS:Z

    if-nez v2, :cond_58

    .line 201
    iget-object v2, p0, tagName:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    move-object v2, p1

    .line 202
    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, tagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_38
    move-object v2, p1

    .line 204
    goto :goto_3

    .line 178
    :cond_3a
    iget-object v2, p0, rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq p1, v2, :cond_46

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .local v1, "next":Lmf/org/w3c/dom/Node;
    if-eqz v1, :cond_46

    .line 179
    move-object p1, v1

    .line 180
    goto :goto_e

    .line 184
    .end local v1    # "next":Lmf/org/w3c/dom/Node;
    :cond_46
    const/4 v1, 0x0

    .line 185
    .restart local v1    # "next":Lmf/org/w3c/dom/Node;
    :goto_47
    iget-object v2, p0, rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-ne p1, v2, :cond_4d

    .line 192
    :cond_4b
    move-object p1, v1

    goto :goto_e

    .line 188
    :cond_4d
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 189
    if-nez v1, :cond_4b

    .line 186
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_47

    .line 208
    .end local v1    # "next":Lmf/org/w3c/dom/Node;
    :cond_58
    iget-object v2, p0, tagName:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 209
    iget-object v2, p0, nsName:Ljava/lang/String;

    if-eqz v2, :cond_72

    iget-object v2, p0, nsName:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    move-object v2, p1

    .line 210
    goto :goto_3

    :cond_72
    move-object v0, p1

    .line 212
    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 213
    .local v0, "el":Lmf/org/apache/xerces/dom/ElementImpl;
    iget-object v2, p0, nsName:Ljava/lang/String;

    if-nez v2, :cond_7f

    .line 214
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8f

    .line 215
    :cond_7f
    iget-object v2, p0, nsName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, nsName:Ljava/lang/String;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8f
    move-object v2, p1

    .line 218
    goto/16 :goto_3

    .end local v0    # "el":Lmf/org/apache/xerces/dom/ElementImpl;
    :cond_92
    move-object v0, p1

    .line 222
    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 223
    .restart local v0    # "el":Lmf/org/apache/xerces/dom/ElementImpl;
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, tagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, nsName:Ljava/lang/String;

    if-eqz v2, :cond_b8

    iget-object v2, p0, nsName:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    move-object v2, p1

    .line 226
    goto/16 :goto_3

    .line 228
    :cond_b8
    iget-object v2, p0, nsName:Ljava/lang/String;

    if-nez v2, :cond_c2

    .line 229
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d2

    .line 230
    :cond_c2
    iget-object v2, p0, nsName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, nsName:Ljava/lang/String;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_d2
    move-object v2, p1

    .line 233
    goto/16 :goto_3
.end method
