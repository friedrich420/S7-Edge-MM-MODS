.class public Lmf/org/apache/xerces/dom/NotationImpl;
.super Lmf/org/apache/xerces/dom/NodeImpl;
.source "NotationImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Notation;


# static fields
.field static final serialVersionUID:J = -0xa9c84ee53e3bc62L


# instance fields
.field protected baseURI:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected publicId:Ljava/lang/String;

.field protected systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 83
    iput-object p2, p0, name:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .registers 4

    .prologue
    .line 188
    invoke-virtual {p0}, needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 189
    invoke-virtual {p0}, synchronizeData()V

    .line 191
    :cond_9
    iget-object v1, p0, baseURI:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, baseURI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_24

    .line 193
    :try_start_15
    new-instance v1, Lmf/org/apache/xerces/util/URI;

    iget-object v2, p0, baseURI:Ljava/lang/String;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_1f
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_15 .. :try_end_1f} :catch_21

    move-result-object v1

    .line 200
    :goto_20
    return-object v1

    .line 195
    :catch_21
    move-exception v0

    .line 197
    .local v0, "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    const/4 v1, 0x0

    goto :goto_20

    .line 200
    .end local v0    # "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    :cond_24
    iget-object v1, p0, baseURI:Ljava/lang/String;

    goto :goto_20
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 103
    invoke-virtual {p0}, synchronizeData()V

    .line 105
    :cond_9
    iget-object v0, p0, name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 95
    const/16 v0, 0xc

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 119
    invoke-virtual {p0}, synchronizeData()V

    .line 121
    :cond_9
    iget-object v0, p0, publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 132
    invoke-virtual {p0}, synchronizeData()V

    .line 134
    :cond_9
    iget-object v0, p0, systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 206
    invoke-virtual {p0}, synchronizeData()V

    .line 208
    :cond_9
    iput-object p1, p0, baseURI:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p0}, isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 149
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 150
    const/4 v1, 0x7

    .line 151
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 153
    :cond_17
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 154
    invoke-virtual {p0}, synchronizeData()V

    .line 156
    :cond_20
    iput-object p1, p0, publicId:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p0}, isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 167
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    .line 168
    const/4 v1, 0x7

    .line 169
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 171
    :cond_17
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 172
    invoke-virtual {p0}, synchronizeData()V

    .line 174
    :cond_20
    iput-object p1, p0, systemId:Ljava/lang/String;

    .line 176
    return-void
.end method
