.class public abstract Lmf/org/apache/xerces/dom/CharacterDataImpl;
.super Lmf/org/apache/xerces/dom/ChildNode;
.source "CharacterDataImpl.java"


# static fields
.field static final serialVersionUID:J = 0x6e112d3b0d787b76L

.field private static transient singletonNodeList:Lmf/org/w3c/dom/NodeList;


# instance fields
.field protected data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Lmf/org/apache/xerces/dom/CharacterDataImpl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl$1;-><init>()V

    sput-object v0, singletonNodeList:Lmf/org/w3c/dom/NodeList;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ChildNode;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "ownerDocument"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 72
    iput-object p2, p0, data:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0}, isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 188
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 191
    .end local v0    # "msg":Ljava/lang/String;
    :cond_17
    if-nez p1, :cond_1a

    .line 200
    :goto_19
    return-void

    .line 194
    :cond_1a
    invoke-virtual {p0}, needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 195
    invoke-virtual {p0}, synchronizeData()V

    .line 198
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, data:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, setNodeValue(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public deleteData(II)V
    .registers 4
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, internalDeleteData(IIZ)V

    .line 218
    return-void
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .registers 2

    .prologue
    .line 81
    sget-object v0, singletonNodeList:Lmf/org/w3c/dom/NodeList;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    invoke-virtual {p0}, synchronizeData()V

    .line 163
    :cond_9
    iget-object v0, p0, data:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 172
    invoke-virtual {p0}, synchronizeData()V

    .line 174
    :cond_9
    iget-object v0, p0, data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    invoke-virtual {p0}, synchronizeData()V

    .line 91
    :cond_9
    iget-object v0, p0, data:Ljava/lang/String;

    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .registers 4
    .param p1, "offset"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, internalInsertData(ILjava/lang/String;Z)V

    .line 276
    return-void
.end method

.method internalDeleteData(IIZ)V
    .registers 15
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 229
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    .line 230
    .local v2, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iget-boolean v5, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_32

    .line 231
    invoke-virtual {p0}, isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 232
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v5, v6, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 236
    .end local v1    # "msg":Ljava/lang/String;
    :cond_21
    if-gez p2, :cond_32

    .line 237
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INDEX_SIZE_ERR"

    invoke-static {v5, v6, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v5, v10, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 242
    .end local v1    # "msg":Ljava/lang/String;
    :cond_32
    invoke-virtual {p0}, needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 243
    invoke-virtual {p0}, synchronizeData()V

    .line 245
    :cond_3b
    iget-object v5, p0, data:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, p2

    sub-int/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 247
    .local v3, "tailLength":I
    :try_start_47
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, data:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    if-lez v3, :cond_73

    iget-object v5, p0, data:Ljava/lang/String;

    add-int v7, p1, p2

    add-int v8, p1, p2

    add-int/2addr v8, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_64
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 247
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0, v4, p3}, setNodeValueInternal(Ljava/lang/String;Z)V

    .line 253
    invoke-virtual {v2, p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->deletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V

    .line 260
    return-void

    .line 248
    .end local v4    # "value":Ljava/lang/String;
    :cond_73
    const-string v5, ""
    :try_end_75
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_47 .. :try_end_75} :catch_76

    goto :goto_64

    .line 255
    :catch_76
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INDEX_SIZE_ERR"

    invoke-static {v5, v6, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v5, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v5, v10, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5
.end method

.method internalInsertData(ILjava/lang/String;Z)V
    .registers 11
    .param p1, "offset"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 288
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    .line 290
    .local v2, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iget-boolean v4, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_1f

    invoke-virtual {p0}, isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 291
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 295
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0}, needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 296
    invoke-virtual {p0}, synchronizeData()V

    .line 300
    :cond_28
    :try_start_28
    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, p0, data:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, v3, p3}, setNodeValueInternal(Ljava/lang/String;Z)V

    .line 306
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p0, p1, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    :try_end_41
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_28 .. :try_end_41} :catch_42

    .line 313
    return-void

    .line 308
    .end local v3    # "value":Ljava/lang/String;
    :catch_42
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INDEX_SIZE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public replaceData(IILjava/lang/String;)V
    .registers 10
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 344
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    .line 352
    .local v2, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iget-boolean v3, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_20

    invoke-virtual {p0}, isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 353
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 357
    .end local v0    # "msg":Ljava/lang/String;
    :cond_20
    invoke-virtual {p0}, needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 358
    invoke-virtual {p0}, synchronizeData()V

    .line 362
    :cond_29
    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingData(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 365
    iget-object v1, p0, data:Ljava/lang/String;

    .line 367
    .local v1, "oldvalue":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v4}, internalDeleteData(IIZ)V

    .line 368
    invoke-virtual {p0, p1, p3, v4}, internalInsertData(ILjava/lang/String;Z)V

    .line 370
    iget-object v3, p0, data:Ljava/lang/String;

    invoke-virtual {v2, p0, v1, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0, p1}, setNodeValue(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, setNodeValueInternal(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V

    .line 145
    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, setNodeValueInternal(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "replace"    # Z

    .prologue
    .line 110
    invoke-virtual {p0}, ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    .line 112
    .local v2, "ownerDocument":Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    iget-boolean v3, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_1f

    invoke-virtual {p0}, isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 113
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 119
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0}, needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 120
    invoke-virtual {p0}, synchronizeData()V

    .line 124
    :cond_28
    iget-object v1, p0, data:Ljava/lang/String;

    .line 127
    .local v1, "oldvalue":Ljava/lang/String;
    invoke-virtual {v2, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifyingCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 129
    iput-object p1, p0, data:Ljava/lang/String;

    .line 132
    invoke-virtual {v2, p0, v1, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    return-void
.end method

.method public substringData(II)Ljava/lang/String;
    .registers 9
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0}, needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 408
    invoke-virtual {p0}, synchronizeData()V

    .line 411
    :cond_9
    iget-object v3, p0, data:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 412
    .local v0, "length":I
    if-ltz p2, :cond_17

    if-ltz p1, :cond_17

    add-int/lit8 v3, v0, -0x1

    if-le p1, v3, :cond_28

    .line 413
    :cond_17
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INDEX_SIZE_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 417
    .end local v1    # "msg":Ljava/lang/String;
    :cond_28
    add-int v3, p1, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 419
    .local v2, "tailIndex":I
    iget-object v3, p0, data:Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
