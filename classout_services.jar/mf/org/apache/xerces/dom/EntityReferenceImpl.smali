.class public Lmf/org/apache/xerces/dom/EntityReferenceImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "EntityReferenceImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/EntityReference;


# static fields
.field static final serialVersionUID:J = -0x6670305ac5fca66eL


# instance fields
.field protected baseURI:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .registers 4
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 118
    iput-object p2, p0, name:Ljava/lang/String;

    .line 119
    invoke-virtual {p0, v0}, isReadOnly(Z)V

    .line 120
    invoke-virtual {p0, v0}, needsSyncChildren(Z)V

    .line 121
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "deep"    # Z

    .prologue
    .line 147
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    .line 148
    .local v0, "er":Lmf/org/apache/xerces/dom/EntityReferenceImpl;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, setReadOnly(ZZ)V

    .line 149
    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .registers 7

    .prologue
    .line 161
    invoke-virtual {p0}, needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 162
    invoke-virtual {p0}, synchronizeData()V

    .line 164
    :cond_9
    iget-object v4, p0, baseURI:Ljava/lang/String;

    if-nez v4, :cond_2e

    .line 168
    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    .local v0, "doctype":Lmf/org/w3c/dom/DocumentType;
    if-eqz v0, :cond_49

    .line 169
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    .local v3, "entities":Lmf/org/w3c/dom/NamedNodeMap;
    if-eqz v3, :cond_49

    .line 171
    invoke-virtual {p0}, getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 172
    .local v2, "entDef":Lmf/org/apache/xerces/dom/EntityImpl;
    if-eqz v2, :cond_49

    .line 173
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/EntityImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    .line 185
    .end local v0    # "doctype":Lmf/org/w3c/dom/DocumentType;
    .end local v2    # "entDef":Lmf/org/apache/xerces/dom/EntityImpl;
    .end local v3    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    :goto_2d
    return-object v4

    .line 176
    :cond_2e
    iget-object v4, p0, baseURI:Ljava/lang/String;

    if-eqz v4, :cond_49

    iget-object v4, p0, baseURI:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_49

    .line 178
    :try_start_3a
    new-instance v4, Lmf/org/apache/xerces/util/URI;

    iget-object v5, p0, baseURI:Ljava/lang/String;

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_44
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_3a .. :try_end_44} :catch_46

    move-result-object v4

    goto :goto_2d

    .line 180
    :catch_46
    move-exception v1

    .line 182
    .local v1, "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    const/4 v4, 0x0

    goto :goto_2d

    .line 185
    .end local v1    # "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    :cond_49
    iget-object v4, p0, baseURI:Ljava/lang/String;

    goto :goto_2d
.end method

.method protected getEntityRefValue()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x3

    .line 205
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 206
    invoke-virtual {p0}, synchronizeChildren()V

    .line 209
    :cond_c
    const-string v2, ""

    .line 210
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v3, :cond_6b

    .line 211
    iget-object v3, p0, firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    if-ne v3, v6, :cond_2a

    .line 212
    iget-object v3, p0, firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    check-cast v3, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v3}, getEntityRefValue()Ljava/lang/String;

    move-result-object v2

    .line 222
    :goto_22
    iget-object v3, p0, firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v3, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v3, :cond_3b

    move-object v3, v2

    .line 247
    :goto_29
    return-object v3

    .line 214
    :cond_2a
    iget-object v3, p0, firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_39

    .line 215
    iget-object v3, p0, firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 216
    goto :goto_22

    :cond_39
    move-object v3, v4

    .line 219
    goto :goto_29

    .line 226
    :cond_3b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "buff":Ljava/lang/StringBuffer;
    iget-object v3, p0, firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v1, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 228
    .local v1, "next":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_44
    if-nez v1, :cond_4b

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    .line 230
    :cond_4b
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    if-ne v3, v6, :cond_5e

    move-object v3, v1

    .line 231
    check-cast v3, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v3}, getEntityRefValue()Ljava/lang/String;

    move-result-object v2

    .line 240
    :goto_58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_44

    .line 233
    :cond_5e
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_69

    .line 234
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 235
    goto :goto_58

    :cond_69
    move-object v3, v4

    .line 238
    goto :goto_29

    .line 247
    .end local v0    # "buff":Ljava/lang/StringBuffer;
    .end local v1    # "next":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_6b
    const-string v3, ""

    goto :goto_29
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    invoke-virtual {p0}, synchronizeData()V

    .line 142
    :cond_9
    iget-object v0, p0, name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x5

    return v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 192
    invoke-virtual {p0}, synchronizeData()V

    .line 194
    :cond_9
    iput-object p1, p0, baseURI:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setReadOnly(ZZ)V
    .registers 5
    .param p1, "readOnly"    # Z
    .param p2, "deep"    # Z

    .prologue
    .line 292
    invoke-virtual {p0}, needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 293
    invoke-virtual {p0}, synchronizeData()V

    .line 295
    :cond_9
    if-eqz p2, :cond_18

    .line 297
    invoke-virtual {p0}, needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 298
    invoke-virtual {p0}, synchronizeChildren()V

    .line 301
    :cond_14
    iget-object v0, p0, firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 302
    .local v0, "mykid":Lmf/org/apache/xerces/dom/ChildNode;
    :goto_16
    if-nez v0, :cond_1c

    .line 309
    .end local v0    # "mykid":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_18
    invoke-virtual {p0, p1}, isReadOnly(Z)V

    .line 310
    return-void

    .line 305
    .restart local v0    # "mykid":Lmf/org/apache/xerces/dom/ChildNode;
    :cond_1c
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    .line 303
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_16
.end method

.method protected synchronizeChildren()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 258
    invoke-virtual {p0, v7}, needsSyncChildren(Z)V

    .line 263
    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v1

    .local v1, "doctype":Lmf/org/w3c/dom/DocumentType;
    if-eqz v1, :cond_21

    .line 264
    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    .local v3, "entities":Lmf/org/w3c/dom/NamedNodeMap;
    if-eqz v3, :cond_21

    .line 266
    invoke-virtual {p0}, getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 269
    .local v2, "entDef":Lmf/org/apache/xerces/dom/EntityImpl;
    if-nez v2, :cond_22

    .line 282
    .end local v2    # "entDef":Lmf/org/apache/xerces/dom/EntityImpl;
    .end local v3    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_21
    :goto_21
    return-void

    .line 273
    .restart local v2    # "entDef":Lmf/org/apache/xerces/dom/EntityImpl;
    .restart local v3    # "entities":Lmf/org/w3c/dom/NamedNodeMap;
    :cond_22
    invoke-virtual {p0, v7}, isReadOnly(Z)V

    .line 274
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/EntityImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 275
    .local v0, "defkid":Lmf/org/w3c/dom/Node;
    :goto_29
    if-nez v0, :cond_2f

    .line 280
    invoke-virtual {p0, v6, v6}, setReadOnly(ZZ)V

    goto :goto_21

    .line 277
    :cond_2f
    invoke-interface {v0, v6}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 278
    .local v4, "newkid":Lmf/org/w3c/dom/Node;
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 276
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_29
.end method
