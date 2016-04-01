.class public Lmf/org/apache/xerces/dom/DocumentImpl;
.super Lmf/org/apache/xerces/dom/CoreDocumentImpl;
.source "DocumentImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/events/DocumentEvent;
.implements Lmf/org/w3c/dom/ranges/DocumentRange;
.implements Lmf/org/w3c/dom/traversal/DocumentTraversal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;,
        Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x728175aac81fa76L


# instance fields
.field protected eventListeners:Ljava/util/Hashtable;

.field protected transient iteratorReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field protected transient iterators:Ljava/util/List;

.field protected mutationEvents:Z

.field protected transient rangeReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field protected transient ranges:Ljava/util/List;

.field savedEnclosingAttr:Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 131
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, mutationEvents:Z

    .line 132
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DocumentType;)V
    .registers 3
    .param p1, "doctype"    # Lmf/org/w3c/dom/DocumentType;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, mutationEvents:Z

    .line 146
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DocumentType;Z)V
    .registers 4
    .param p1, "doctype"    # Lmf/org/w3c/dom/DocumentType;
    .param p2, "grammarAccess"    # Z

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;Z)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, mutationEvents:Z

    .line 151
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "grammarAccess"    # Z

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Z)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, mutationEvents:Z

    .line 137
    return-void
.end method

.method private mutationEventsInsertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .registers 16
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "newInternal"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p3, "replace"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1213
    const-string v1, "DOMNodeInserted"

    invoke-static {v1}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v10

    .line 1214
    .local v10, "lc":Lmf/org/apache/xerces/dom/LCount;
    iget v1, v10, Lmf/org/apache/xerces/dom/LCount;->total:I

    if-lez v1, :cond_1e

    .line 1215
    new-instance v0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    .line 1216
    .local v0, "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    const-string v1, "DOMNodeInserted"

    .line 1217
    const/4 v2, 0x1

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    move v8, v3

    .line 1216
    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 1219
    invoke-virtual {p0, p2, v0}, dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z

    .line 1225
    .end local v0    # "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    :cond_1e
    const-string v1, "DOMNodeInsertedIntoDocument"

    .line 1224
    invoke-static {v1}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v10

    .line 1226
    iget v1, v10, Lmf/org/apache/xerces/dom/LCount;->total:I

    if-lez v1, :cond_56

    .line 1227
    move-object v9, p1

    .line 1228
    .local v9, "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    iget-object v1, p0, savedEnclosingAttr:Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    if-eqz v1, :cond_37

    .line 1230
    iget-object v1, p0, savedEnclosingAttr:Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    iget-object v1, v1, Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;->node:Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v9

    .line 1229
    .end local v9    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    check-cast v9, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1231
    .restart local v9    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_37
    if-eqz v9, :cond_56

    .line 1232
    move-object v11, v9

    .line 1233
    .local v11, "p":Lmf/org/apache/xerces/dom/NodeImpl;
    :goto_3a
    if-nez v11, :cond_5e

    .line 1244
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_56

    .line 1245
    new-instance v0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    .line 1246
    .restart local v0    # "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    const-string v1, "DOMNodeInsertedIntoDocument"

    move v2, v3

    move-object v4, v5

    move-object v6, v5

    move-object v7, v5

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 1250
    invoke-virtual {p0, p2, v0}, dispatchEventToSubtree(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/events/Event;)V

    .line 1254
    .end local v0    # "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    .end local v9    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local v11    # "p":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_56
    if-nez p3, :cond_5d

    .line 1257
    iget-object v1, p0, savedEnclosingAttr:Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {p0, p1, v1}, dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;)V

    .line 1259
    :cond_5d
    return-void

    .line 1234
    .restart local v9    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    .restart local v11    # "p":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_5e
    move-object v9, v11

    .line 1237
    invoke-virtual {v11}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6f

    .line 1238
    check-cast v11, Lmf/org/apache/xerces/dom/AttrImpl;

    .end local v11    # "p":Lmf/org/apache/xerces/dom/NodeImpl;
    invoke-virtual {v11}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v11

    check-cast v11, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1239
    .restart local v11    # "p":Lmf/org/apache/xerces/dom/NodeImpl;
    goto :goto_3a

    .line 1241
    :cond_6f
    invoke-virtual {v11}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v11

    goto :goto_3a
.end method

.method private mutationEventsModifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "oldvalue"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "replace"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1154
    if-nez p4, :cond_25

    .line 1157
    const-string v1, "DOMCharacterDataModified"

    invoke-static {v1}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v9

    .line 1158
    .local v9, "lc":Lmf/org/apache/xerces/dom/LCount;
    iget v1, v9, Lmf/org/apache/xerces/dom/LCount;->total:I

    if-lez v1, :cond_20

    .line 1159
    new-instance v0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    .line 1161
    .local v0, "me":Lmf/org/w3c/dom/events/MutationEvent;
    const-string v1, "DOMCharacterDataModified"

    .line 1162
    const/4 v2, 0x1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v4

    move v8, v3

    .line 1160
    invoke-interface/range {v0 .. v8}, Lmf/org/w3c/dom/events/MutationEvent;->initMutationEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 1164
    invoke-virtual {p0, p1, v0}, dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z

    .line 1169
    .end local v0    # "me":Lmf/org/w3c/dom/events/MutationEvent;
    :cond_20
    iget-object v1, p0, savedEnclosingAttr:Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {p0, p1, v1}, dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;)V

    .line 1171
    .end local v9    # "lc":Lmf/org/apache/xerces/dom/LCount;
    :cond_25
    return-void
.end method

.method private mutationEventsRemovedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .registers 14
    .param p1, "attr"    # Lmf/org/apache/xerces/dom/AttrImpl;
    .param p2, "oldOwner"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1457
    const-string v1, "DOMAttrModified"

    invoke-static {v1}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v9

    .line 1458
    .local v9, "lc":Lmf/org/apache/xerces/dom/LCount;
    iget v1, v9, Lmf/org/apache/xerces/dom/LCount;->total:I

    if-lez v1, :cond_21

    .line 1459
    new-instance v0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    .line 1460
    .local v0, "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    const-string v1, "DOMAttrModified"

    .line 1461
    const/4 v2, 0x1

    .line 1462
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1463
    const/4 v8, 0x3

    move-object v4, p1

    move-object v7, p3

    .line 1460
    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 1464
    invoke-virtual {p0, p2, v0}, dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z

    .line 1470
    .end local v0    # "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    :cond_21
    invoke-virtual {p0, p2, v6, v6, v3}, dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    .line 1471
    return-void
.end method

.method private mutationEventsRemovingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .registers 16
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "oldChild"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p3, "replace"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1332
    if-nez p3, :cond_7

    .line 1333
    invoke-virtual {p0, p1}, saveEnclosingAttr(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1336
    :cond_7
    const-string v1, "DOMNodeRemoved"

    invoke-static {v1}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v10

    .line 1337
    .local v10, "lc":Lmf/org/apache/xerces/dom/LCount;
    iget v1, v10, Lmf/org/apache/xerces/dom/LCount;->total:I

    if-lez v1, :cond_23

    .line 1338
    new-instance v0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    .line 1339
    .local v0, "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    const-string v1, "DOMNodeRemoved"

    .line 1340
    const/4 v2, 0x1

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    move v8, v3

    .line 1339
    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 1342
    invoke-virtual {p0, p2, v0}, dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z

    .line 1348
    .end local v0    # "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    :cond_23
    const-string v1, "DOMNodeRemovedFromDocument"

    .line 1347
    invoke-static {v1}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v10

    .line 1349
    iget v1, v10, Lmf/org/apache/xerces/dom/LCount;->total:I

    if-lez v1, :cond_5e

    .line 1350
    move-object v9, p0

    .line 1351
    .local v9, "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    iget-object v1, p0, savedEnclosingAttr:Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    if-eqz v1, :cond_3c

    .line 1353
    iget-object v1, p0, savedEnclosingAttr:Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    iget-object v1, v1, Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;->node:Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v9

    .line 1352
    .end local v9    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    check-cast v9, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1354
    .restart local v9    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_3c
    if-eqz v9, :cond_5e

    .line 1355
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v11

    .line 1356
    .local v11, "p":Lmf/org/apache/xerces/dom/NodeImpl;
    :goto_42
    if-nez v11, :cond_5f

    .line 1359
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5e

    .line 1360
    new-instance v0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    .line 1362
    .restart local v0    # "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    const-string v1, "DOMNodeRemovedFromDocument"

    move v2, v3

    move-object v4, v5

    move-object v6, v5

    move-object v7, v5

    move v8, v3

    .line 1361
    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 1365
    invoke-virtual {p0, p2, v0}, dispatchEventToSubtree(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/events/Event;)V

    .line 1370
    .end local v0    # "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    .end local v9    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local v11    # "p":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_5e
    return-void

    .line 1357
    .restart local v9    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    .restart local v11    # "p":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_5f
    move-object v9, v11

    .line 1356
    invoke-virtual {v11}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v11

    goto :goto_42
.end method

.method private notifyIteratorsRemovingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .registers 5
    .param p1, "oldChild"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 1298
    invoke-direct {p0}, removeStaleIteratorReferences()V

    .line 1299
    iget-object v2, p0, iterators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1300
    .local v0, "i":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1310
    return-void

    .line 1301
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeIteratorImpl;

    .line 1302
    .local v1, "iterator":Lmf/org/apache/xerces/dom/NodeIteratorImpl;
    if-eqz v1, :cond_22

    .line 1303
    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->removeNode(Lmf/org/w3c/dom/Node;)V

    goto :goto_9

    .line 1307
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method private notifyRangesDeletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .registers 7
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 433
    invoke-direct {p0}, removeStaleRangeReferences()V

    .line 434
    iget-object v2, p0, ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 435
    .local v0, "i":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 445
    return-void

    .line 436
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/RangeImpl;

    .line 437
    .local v1, "range":Lmf/org/apache/xerces/dom/RangeImpl;
    if-eqz v1, :cond_22

    .line 438
    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/dom/RangeImpl;->receiveDeletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V

    goto :goto_9

    .line 442
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method private notifyRangesInsertedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .registers 5
    .param p1, "newInternal"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 1262
    invoke-direct {p0}, removeStaleRangeReferences()V

    .line 1263
    iget-object v2, p0, ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1264
    .local v0, "i":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1274
    return-void

    .line 1265
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/RangeImpl;

    .line 1266
    .local v1, "range":Lmf/org/apache/xerces/dom/RangeImpl;
    if-eqz v1, :cond_22

    .line 1267
    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->insertedNodeFromDOM(Lmf/org/w3c/dom/Node;)V

    goto :goto_9

    .line 1271
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method private notifyRangesInsertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .registers 7
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 459
    invoke-direct {p0}, removeStaleRangeReferences()V

    .line 460
    iget-object v2, p0, ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 461
    .local v0, "i":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 471
    return-void

    .line 462
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/RangeImpl;

    .line 463
    .local v1, "range":Lmf/org/apache/xerces/dom/RangeImpl;
    if-eqz v1, :cond_22

    .line 464
    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/dom/RangeImpl;->receiveInsertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V

    goto :goto_9

    .line 468
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method private notifyRangesRemovingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .registers 5
    .param p1, "oldChild"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 1313
    invoke-direct {p0}, removeStaleRangeReferences()V

    .line 1314
    iget-object v2, p0, ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1315
    .local v0, "i":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1325
    return-void

    .line 1316
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/RangeImpl;

    .line 1317
    .local v1, "range":Lmf/org/apache/xerces/dom/RangeImpl;
    if-eqz v1, :cond_22

    .line 1318
    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->removeNode(Lmf/org/w3c/dom/Node;)V

    goto :goto_9

    .line 1322
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method private notifyRangesReplacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V
    .registers 5
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;

    .prologue
    .line 407
    invoke-direct {p0}, removeStaleRangeReferences()V

    .line 408
    iget-object v2, p0, ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 409
    .local v0, "i":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 419
    return-void

    .line 410
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/RangeImpl;

    .line 411
    .local v1, "range":Lmf/org/apache/xerces/dom/RangeImpl;
    if-eqz v1, :cond_22

    .line 412
    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->receiveReplacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V

    goto :goto_9

    .line 416
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method private notifyRangesSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V
    .registers 7
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "newNode"    # Lmf/org/w3c/dom/Node;
    .param p3, "offset"    # I

    .prologue
    .line 485
    invoke-direct {p0}, removeStaleRangeReferences()V

    .line 486
    iget-object v2, p0, ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 487
    .local v0, "i":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 497
    return-void

    .line 488
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/RangeImpl;

    .line 489
    .local v1, "range":Lmf/org/apache/xerces/dom/RangeImpl;
    if-eqz v1, :cond_22

    .line 490
    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/dom/RangeImpl;->receiveSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V

    goto :goto_9

    .line 494
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method private removeStaleIteratorReferences()V
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, iteratorReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    iget-object v1, p0, iterators:Ljava/util/List;

    invoke-direct {p0, v0, v1}, removeStaleReferences(Ljava/lang/ref/ReferenceQueue;Ljava/util/List;)V

    .line 324
    return-void
.end method

.method private removeStaleRangeReferences()V
    .registers 3

    .prologue
    .line 503
    iget-object v0, p0, rangeReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    iget-object v1, p0, ranges:Ljava/util/List;

    invoke-direct {p0, v0, v1}, removeStaleReferences(Ljava/lang/ref/ReferenceQueue;Ljava/util/List;)V

    .line 504
    return-void
.end method

.method private removeStaleReferences(Ljava/lang/ref/ReferenceQueue;Ljava/util/List;)V
    .registers 8
    .param p1, "queue"    # Ljava/lang/ref/ReferenceQueue;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    .line 331
    .local v3, "ref":Ljava/lang/ref/Reference;
    const/4 v0, 0x0

    .line 332
    .local v0, "count":I
    :goto_5
    if-nez v3, :cond_14

    .line 336
    if-lez v0, :cond_13

    .line 337
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 338
    .local v1, "i":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 348
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_13
    :goto_13
    return-void

    .line 333
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 334
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    goto :goto_5

    .line 339
    .restart local v1    # "i":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 340
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_d

    .line 341
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 342
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_d

    goto :goto_13
.end method


# virtual methods
.method protected addEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .registers 8
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listener"    # Lmf/org/w3c/dom/events/EventListener;
    .param p4, "useCapture"    # Z

    .prologue
    .line 656
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    if-nez p3, :cond_b

    .line 681
    :cond_a
    :goto_a
    return-void

    .line 661
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, removeEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V

    .line 663
    invoke-virtual {p0, p1}, getEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v1

    .line 664
    .local v1, "nodeListeners":Ljava/util/Vector;
    if-nez v1, :cond_1c

    .line 665
    new-instance v1, Ljava/util/Vector;

    .end local v1    # "nodeListeners":Ljava/util/Vector;
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 666
    .restart local v1    # "nodeListeners":Ljava/util/Vector;
    invoke-virtual {p0, p1, v1}, setEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/util/Vector;)V

    .line 668
    :cond_1c
    new-instance v2, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;

    invoke-direct {v2, p0, p2, p3, p4}, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;-><init>(Lmf/org/apache/xerces/dom/DocumentImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 671
    invoke-static {p2}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v0

    .line 672
    .local v0, "lc":Lmf/org/apache/xerces/dom/LCount;
    if-eqz p4, :cond_37

    .line 673
    iget v2, v0, Lmf/org/apache/xerces/dom/LCount;->captures:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lmf/org/apache/xerces/dom/LCount;->captures:I

    .line 674
    iget v2, v0, Lmf/org/apache/xerces/dom/LCount;->total:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lmf/org/apache/xerces/dom/LCount;->total:I

    goto :goto_a

    .line 677
    :cond_37
    iget v2, v0, Lmf/org/apache/xerces/dom/LCount;->bubbles:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lmf/org/apache/xerces/dom/LCount;->bubbles:I

    .line 678
    iget v2, v0, Lmf/org/apache/xerces/dom/LCount;->total:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lmf/org/apache/xerces/dom/LCount;->total:I

    goto :goto_a
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "deep"    # Z

    .prologue
    .line 168
    new-instance v0, Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-direct {v0}, <init>()V

    .line 169
    .local v0, "newdoc":Lmf/org/apache/xerces/dom/DocumentImpl;
    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 170
    invoke-virtual {p0, v0, p1}, cloneNode(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Z)V

    .line 173
    iget-boolean v1, p0, mutationEvents:Z

    iput-boolean v1, v0, mutationEvents:Z

    .line 175
    return-object v0
.end method

.method protected copyEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;)V
    .registers 5
    .param p1, "src"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "tgt"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 734
    invoke-virtual {p0, p1}, getEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v0

    .line 735
    .local v0, "nodeListeners":Ljava/util/Vector;
    if-nez v0, :cond_7

    .line 739
    :goto_6
    return-void

    .line 738
    :cond_7
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {p0, p2, v1}, setEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/util/Vector;)V

    goto :goto_6
.end method

.method public createEvent(Ljava/lang/String;)Lmf/org/w3c/dom/events/Event;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 530
    const-string v1, "Events"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 531
    const-string v1, "Event"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 532
    :cond_10
    new-instance v1, Lmf/org/apache/xerces/dom/events/EventImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/events/EventImpl;-><init>()V

    .line 544
    :goto_15
    return-object v1

    .line 534
    :cond_16
    const-string v1, "MutationEvents"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 535
    const-string v1, "MutationEvent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 536
    :cond_26
    new-instance v1, Lmf/org/apache/xerces/dom/events/MutationEventImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    goto :goto_15

    .line 538
    :cond_2c
    const-string v1, "UIEvents"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 539
    const-string v1, "UIEvent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 540
    :cond_3c
    new-instance v1, Lmf/org/apache/xerces/dom/events/UIEventImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/events/UIEventImpl;-><init>()V

    goto :goto_15

    .line 542
    :cond_42
    const-string v1, "MouseEvents"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 543
    const-string v1, "MouseEvent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 544
    :cond_52
    new-instance v1, Lmf/org/apache/xerces/dom/events/MouseEventImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/events/MouseEventImpl;-><init>()V

    goto :goto_15

    .line 547
    :cond_58
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_SUPPORTED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public createNodeIterator(Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)Lmf/org/w3c/dom/traversal/NodeIterator;
    .registers 12
    .param p1, "root"    # Lmf/org/w3c/dom/Node;
    .param p2, "whatToShow"    # I
    .param p3, "filter"    # Lmf/org/w3c/dom/traversal/NodeFilter;
    .param p4, "entityReferenceExpansion"    # Z

    .prologue
    .line 230
    if-nez p1, :cond_14

    .line 231
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_SUPPORTED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v6}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 235
    .end local v6    # "msg":Ljava/lang/String;
    :cond_14
    new-instance v0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;-><init>(Lmf/org/apache/xerces/dom/DocumentImpl;Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)V

    .line 240
    .local v0, "iterator":Lmf/org/w3c/dom/traversal/NodeIterator;
    iget-object v1, p0, iterators:Ljava/util/List;

    if-nez v1, :cond_30

    .line 241
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, iterators:Ljava/util/List;

    .line 242
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, iteratorReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 245
    :cond_30
    invoke-direct {p0}, removeStaleIteratorReferences()V

    .line 246
    iget-object v1, p0, iterators:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, iteratorReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-object v0
.end method

.method public createNodeIterator(Lmf/org/w3c/dom/Node;SLmf/org/w3c/dom/traversal/NodeFilter;)Lmf/org/w3c/dom/traversal/NodeIterator;
    .registers 5
    .param p1, "root"    # Lmf/org/w3c/dom/Node;
    .param p2, "whatToShow"    # S
    .param p3, "filter"    # Lmf/org/w3c/dom/traversal/NodeFilter;

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, createNodeIterator(Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)Lmf/org/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    return-object v0
.end method

.method public createRange()Lmf/org/w3c/dom/ranges/Range;
    .registers 5

    .prologue
    .line 357
    iget-object v1, p0, ranges:Ljava/util/List;

    if-nez v1, :cond_12

    .line 358
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, ranges:Ljava/util/List;

    .line 359
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, rangeReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 362
    :cond_12
    new-instance v0, Lmf/org/apache/xerces/dom/RangeImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/RangeImpl;-><init>(Lmf/org/apache/xerces/dom/DocumentImpl;)V

    .line 364
    .local v0, "range":Lmf/org/w3c/dom/ranges/Range;
    invoke-direct {p0}, removeStaleRangeReferences()V

    .line 365
    iget-object v1, p0, ranges:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, rangeReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    return-object v0
.end method

.method public createTreeWalker(Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)Lmf/org/w3c/dom/traversal/TreeWalker;
    .registers 9
    .param p1, "root"    # Lmf/org/w3c/dom/Node;
    .param p2, "whatToShow"    # I
    .param p3, "filter"    # Lmf/org/w3c/dom/traversal/NodeFilter;
    .param p4, "entityReferenceExpansion"    # Z

    .prologue
    .line 280
    if-nez p1, :cond_14

    .line 281
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_SUPPORTED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 284
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    new-instance v1, Lmf/org/apache/xerces/dom/TreeWalkerImpl;

    invoke-direct {v1, p1, p2, p3, p4}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;-><init>(Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)V

    return-object v1
.end method

.method public createTreeWalker(Lmf/org/w3c/dom/Node;SLmf/org/w3c/dom/traversal/NodeFilter;)Lmf/org/w3c/dom/traversal/TreeWalker;
    .registers 5
    .param p1, "root"    # Lmf/org/w3c/dom/Node;
    .param p2, "whatToShow"    # S
    .param p3, "filter"    # Lmf/org/w3c/dom/traversal/NodeFilter;

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, createTreeWalker(Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)Lmf/org/w3c/dom/traversal/TreeWalker;

    move-result-object v0

    return-object v0
.end method

.method deletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .registers 5
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 427
    iget-object v0, p0, ranges:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 428
    invoke-direct {p0, p1, p2, p3}, notifyRangesDeletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V

    .line 430
    :cond_7
    return-void
.end method

.method protected dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V
    .registers 16
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "enclosingAttr"    # Lmf/org/apache/xerces/dom/AttrImpl;
    .param p3, "oldvalue"    # Ljava/lang/String;
    .param p4, "change"    # S

    .prologue
    .line 1055
    const/4 v10, 0x0

    .line 1056
    .local v10, "owner":Lmf/org/apache/xerces/dom/NodeImpl;
    if-eqz p2, :cond_2f

    .line 1057
    const-string v1, "DOMAttrModified"

    invoke-static {v1}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v9

    .line 1058
    .local v9, "lc":Lmf/org/apache/xerces/dom/LCount;
    invoke-virtual {p2}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v10

    .end local v10    # "owner":Lmf/org/apache/xerces/dom/NodeImpl;
    check-cast v10, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1059
    .restart local v10    # "owner":Lmf/org/apache/xerces/dom/NodeImpl;
    iget v1, v9, Lmf/org/apache/xerces/dom/LCount;->total:I

    if-lez v1, :cond_2f

    .line 1060
    if-eqz v10, :cond_2f

    .line 1061
    new-instance v0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    .line 1062
    .local v0, "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    const-string v1, "DOMAttrModified"

    .line 1063
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1065
    invoke-virtual {p2}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 1066
    invoke-virtual {p2}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v7

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    .line 1062
    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 1068
    invoke-virtual {v10, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->dispatchEvent(Lmf/org/w3c/dom/events/Event;)Z

    .line 1076
    .end local v0    # "me":Lmf/org/apache/xerces/dom/events/MutationEventImpl;
    .end local v9    # "lc":Lmf/org/apache/xerces/dom/LCount;
    :cond_2f
    const-string v1, "DOMSubtreeModified"

    invoke-static {v1}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v9

    .line 1077
    .restart local v9    # "lc":Lmf/org/apache/xerces/dom/LCount;
    iget v1, v9, Lmf/org/apache/xerces/dom/LCount;->total:I

    if-lez v1, :cond_54

    .line 1078
    new-instance v0, Lmf/org/apache/xerces/dom/events/MutationEventImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    .line 1079
    .local v0, "me":Lmf/org/w3c/dom/events/MutationEvent;
    const-string v1, "DOMSubtreeModified"

    .line 1080
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1081
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1079
    invoke-interface/range {v0 .. v8}, Lmf/org/w3c/dom/events/MutationEvent;->initMutationEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 1086
    if-eqz p2, :cond_55

    .line 1087
    invoke-virtual {p0, p2, v0}, dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z

    .line 1088
    if-eqz v10, :cond_54

    .line 1089
    invoke-virtual {p0, v10, v0}, dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z

    .line 1094
    .end local v0    # "me":Lmf/org/w3c/dom/events/MutationEvent;
    :cond_54
    :goto_54
    return-void

    .line 1092
    .restart local v0    # "me":Lmf/org/w3c/dom/events/MutationEvent;
    :cond_55
    invoke-virtual {p0, p1, v0}, dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z

    goto :goto_54
.end method

.method protected dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;)V
    .registers 6
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "ea"    # Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    .prologue
    const/4 v1, 0x0

    .line 1019
    if-eqz p2, :cond_c

    .line 1020
    iget-object v0, p2, Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;->node:Lmf/org/apache/xerces/dom/AttrImpl;

    iget-object v1, p2, Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;->oldvalue:Ljava/lang/String;

    .line 1021
    const/4 v2, 0x1

    .line 1020
    invoke-virtual {p0, p1, v0, v1, v2}, dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    .line 1025
    :goto_b
    return-void

    .line 1023
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    goto :goto_b
.end method

.method protected dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z
    .registers 21
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "event"    # Lmf/org/w3c/dom/events/Event;

    .prologue
    .line 792
    if-nez p2, :cond_4

    const/4 v15, 0x0

    .line 944
    :goto_3
    return v15

    :cond_4
    move-object/from16 v1, p2

    .line 796
    check-cast v1, Lmf/org/apache/xerces/dom/events/EventImpl;

    .line 800
    .local v1, "evt":Lmf/org/apache/xerces/dom/events/EventImpl;
    iget-boolean v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->initialized:Z

    if-eqz v15, :cond_18

    iget-object v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    if-eqz v15, :cond_18

    iget-object v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2d

    .line 801
    :cond_18
    const-string/jumbo v15, "http://www.w3.org/dom/DOMTR"

    const-string v16, "UNSPECIFIED_EVENT_TYPE_ERR"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 802
    .local v6, "msg":Ljava/lang/String;
    new-instance v15, Lmf/org/w3c/dom/events/EventException;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v15, v0, v6}, Lmf/org/w3c/dom/events/EventException;-><init>(SLjava/lang/String;)V

    throw v15

    .line 806
    .end local v6    # "msg":Ljava/lang/String;
    :cond_2d
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v4

    .line 807
    .local v4, "lc":Lmf/org/apache/xerces/dom/LCount;
    iget v15, v4, Lmf/org/apache/xerces/dom/LCount;->total:I

    if-nez v15, :cond_3c

    .line 808
    iget-boolean v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    goto :goto_3

    .line 814
    :cond_3c
    move-object/from16 v0, p1

    iput-object v0, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->target:Lmf/org/w3c/dom/events/EventTarget;

    .line 815
    const/4 v15, 0x0

    iput-boolean v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    .line 816
    const/4 v15, 0x0

    iput-boolean v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    .line 827
    new-instance v13, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 828
    .local v13, "pv":Ljava/util/ArrayList;
    move-object/from16 v12, p1

    .line 829
    .local v12, "p":Lmf/org/w3c/dom/Node;
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    .line 830
    .local v7, "n":Lmf/org/w3c/dom/Node;
    :goto_53
    if-nez v7, :cond_a2

    .line 837
    iget v15, v4, Lmf/org/apache/xerces/dom/LCount;->captures:I

    if-lez v15, :cond_64

    .line 838
    const/4 v15, 0x1

    iput-short v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->eventPhase:S

    .line 841
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v3, v15, -0x1

    .local v3, "j":I
    :goto_62
    if-gez v3, :cond_ab

    .line 871
    .end local v3    # "j":I
    :cond_64
    iget v15, v4, Lmf/org/apache/xerces/dom/LCount;->bubbles:I

    if-lez v15, :cond_94

    .line 875
    const/4 v15, 0x2

    iput-short v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->eventPhase:S

    .line 876
    move-object/from16 v0, p1

    iput-object v0, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->currentTarget:Lmf/org/w3c/dom/events/EventTarget;

    .line 877
    invoke-virtual/range {p0 .. p1}, getEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v11

    .line 878
    .local v11, "nodeListeners":Ljava/util/Vector;
    iget-boolean v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    if-nez v15, :cond_86

    if-eqz v11, :cond_86

    .line 879
    invoke-virtual {v11}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Vector;

    .line 881
    .local v8, "nl":Ljava/util/Vector;
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    .line 882
    .local v9, "nlsize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_84
    if-lt v2, v9, :cond_f3

    .line 900
    .end local v2    # "i":I
    .end local v8    # "nl":Ljava/util/Vector;
    .end local v9    # "nlsize":I
    :cond_86
    iget-boolean v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->bubbles:Z

    if-eqz v15, :cond_94

    .line 901
    const/4 v15, 0x3

    iput-short v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->eventPhase:S

    .line 902
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 903
    .local v14, "pvsize":I
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_92
    if-lt v3, v14, :cond_118

    .line 938
    .end local v3    # "j":I
    .end local v11    # "nodeListeners":Ljava/util/Vector;
    .end local v14    # "pvsize":I
    :cond_94
    iget v15, v4, Lmf/org/apache/xerces/dom/LCount;->defaults:I

    if-lez v15, :cond_9e

    iget-boolean v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->cancelable:Z

    if-eqz v15, :cond_9e

    iget-boolean v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    .line 944
    :cond_9e
    iget-boolean v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    goto/16 :goto_3

    .line 831
    :cond_a2
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    move-object v12, v7

    .line 833
    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    goto :goto_53

    .line 842
    .restart local v3    # "j":I
    :cond_ab
    iget-boolean v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    if-nez v15, :cond_64

    .line 846
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 847
    .local v10, "nn":Lmf/org/apache/xerces/dom/NodeImpl;
    iput-object v10, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->currentTarget:Lmf/org/w3c/dom/events/EventTarget;

    .line 848
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v11

    .line 849
    .restart local v11    # "nodeListeners":Ljava/util/Vector;
    if-eqz v11, :cond_cc

    .line 850
    invoke-virtual {v11}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Vector;

    .line 852
    .restart local v8    # "nl":Ljava/util/Vector;
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    .line 853
    .restart local v9    # "nlsize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_ca
    if-lt v2, v9, :cond_cf

    .line 841
    .end local v2    # "i":I
    .end local v8    # "nl":Ljava/util/Vector;
    .end local v9    # "nlsize":I
    :cond_cc
    add-int/lit8 v3, v3, -0x1

    goto :goto_62

    .line 854
    .restart local v2    # "i":I
    .restart local v8    # "nl":Ljava/util/Vector;
    .restart local v9    # "nlsize":I
    :cond_cf
    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;

    .line 855
    .local v5, "le":Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;
    iget-boolean v15, v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->useCapture:Z

    if-eqz v15, :cond_f0

    iget-object v15, v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    iget-object v0, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f0

    .line 856
    invoke-virtual {v11, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f0

    .line 858
    :try_start_eb
    iget-object v15, v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->listener:Lmf/org/w3c/dom/events/EventListener;

    invoke-interface {v15, v1}, Lmf/org/w3c/dom/events/EventListener;->handleEvent(Lmf/org/w3c/dom/events/Event;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f0} :catch_165

    .line 853
    :cond_f0
    :goto_f0
    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    .line 883
    .end local v3    # "j":I
    .end local v5    # "le":Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;
    .end local v10    # "nn":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_f3
    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;

    .line 884
    .restart local v5    # "le":Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;
    iget-boolean v15, v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->useCapture:Z

    if-nez v15, :cond_114

    iget-object v15, v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    iget-object v0, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_114

    .line 885
    invoke-virtual {v11, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_114

    .line 887
    :try_start_10f
    iget-object v15, v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->listener:Lmf/org/w3c/dom/events/EventListener;

    invoke-interface {v15, v1}, Lmf/org/w3c/dom/events/EventListener;->handleEvent(Lmf/org/w3c/dom/events/Event;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_114} :catch_163

    .line 882
    :cond_114
    :goto_114
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_84

    .line 904
    .end local v2    # "i":I
    .end local v5    # "le":Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;
    .end local v8    # "nl":Ljava/util/Vector;
    .end local v9    # "nlsize":I
    .restart local v3    # "j":I
    .restart local v14    # "pvsize":I
    :cond_118
    iget-boolean v15, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    if-nez v15, :cond_94

    .line 908
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 909
    .restart local v10    # "nn":Lmf/org/apache/xerces/dom/NodeImpl;
    iput-object v10, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->currentTarget:Lmf/org/w3c/dom/events/EventTarget;

    .line 910
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v11

    .line 911
    if-eqz v11, :cond_139

    .line 912
    invoke-virtual {v11}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Vector;

    .line 915
    .restart local v8    # "nl":Ljava/util/Vector;
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    .line 916
    .restart local v9    # "nlsize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_137
    if-lt v2, v9, :cond_13d

    .line 903
    .end local v2    # "i":I
    .end local v8    # "nl":Ljava/util/Vector;
    .end local v9    # "nlsize":I
    :cond_139
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_92

    .line 917
    .restart local v2    # "i":I
    .restart local v8    # "nl":Ljava/util/Vector;
    .restart local v9    # "nlsize":I
    :cond_13d
    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;

    .line 918
    .restart local v5    # "le":Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;
    iget-boolean v15, v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->useCapture:Z

    if-nez v15, :cond_15e

    iget-object v15, v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    iget-object v0, v1, Lmf/org/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15e

    .line 919
    invoke-virtual {v11, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15e

    .line 921
    :try_start_159
    iget-object v15, v5, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->listener:Lmf/org/w3c/dom/events/EventListener;

    invoke-interface {v15, v1}, Lmf/org/w3c/dom/events/EventListener;->handleEvent(Lmf/org/w3c/dom/events/Event;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15e} :catch_161

    .line 916
    :cond_15e
    :goto_15e
    add-int/lit8 v2, v2, 0x1

    goto :goto_137

    .line 923
    :catch_161
    move-exception v15

    goto :goto_15e

    .line 889
    .end local v3    # "j":I
    .end local v10    # "nn":Lmf/org/apache/xerces/dom/NodeImpl;
    .end local v14    # "pvsize":I
    :catch_163
    move-exception v15

    goto :goto_114

    .line 860
    .restart local v3    # "j":I
    .restart local v10    # "nn":Lmf/org/apache/xerces/dom/NodeImpl;
    :catch_165
    move-exception v15

    goto :goto_f0
.end method

.method protected dispatchEventToSubtree(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/events/Event;)V
    .registers 7
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "e"    # Lmf/org/w3c/dom/events/Event;

    .prologue
    .line 964
    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->dispatchEvent(Lmf/org/w3c/dom/events/Event;)Z

    .line 965
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 966
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 967
    .local v0, "a":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v0}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_17
    if-gez v1, :cond_21

    .line 970
    .end local v0    # "a":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v1    # "i":I
    :cond_19
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, dispatchingEventToSubtree(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/events/Event;)V

    .line 972
    return-void

    .line 968
    .restart local v0    # "a":Lmf/org/w3c/dom/NamedNodeMap;
    .restart local v1    # "i":I
    :cond_21
    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, dispatchingEventToSubtree(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/events/Event;)V

    .line 967
    add-int/lit8 v1, v1, -0x1

    goto :goto_17
.end method

.method protected dispatchingEventToSubtree(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/events/Event;)V
    .registers 7
    .param p1, "n"    # Lmf/org/w3c/dom/Node;
    .param p2, "e"    # Lmf/org/w3c/dom/events/Event;

    .prologue
    .line 982
    if-nez p1, :cond_3

    .line 996
    :goto_2
    return-void

    :cond_3
    move-object v2, p1

    .line 988
    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->dispatchEvent(Lmf/org/w3c/dom/events/Event;)Z

    .line 989
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 990
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 991
    .local v0, "a":Lmf/org/w3c/dom/NamedNodeMap;
    invoke-interface {v0}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1a
    if-gez v1, :cond_2b

    .line 994
    .end local v0    # "a":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v1    # "i":I
    :cond_1c
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, dispatchingEventToSubtree(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/events/Event;)V

    .line 995
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, dispatchingEventToSubtree(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/events/Event;)V

    goto :goto_2

    .line 992
    .restart local v0    # "a":Lmf/org/w3c/dom/NamedNodeMap;
    .restart local v1    # "i":I
    :cond_2b
    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, dispatchingEventToSubtree(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/events/Event;)V

    .line 991
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a
.end method

.method protected getEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;
    .registers 3
    .param p1, "n"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 594
    iget-object v0, p0, eventListeners:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    .line 595
    const/4 v0, 0x0

    .line 597
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, eventListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    goto :goto_5
.end method

.method public getImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .registers 2

    .prologue
    .line 188
    invoke-static {}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method getMutationEvents()Z
    .registers 2

    .prologue
    .line 564
    iget-boolean v0, p0, mutationEvents:Z

    return v0
.end method

.method insertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .registers 5
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "newInternal"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p3, "replace"    # Z

    .prologue
    .line 1199
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_7

    .line 1200
    invoke-direct {p0, p1, p2, p3}, mutationEventsInsertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 1204
    :cond_7
    iget-object v0, p0, ranges:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 1205
    invoke-direct {p0, p2}, notifyRangesInsertedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1207
    :cond_e
    return-void
.end method

.method insertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .registers 5
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 453
    iget-object v0, p0, ranges:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 454
    invoke-direct {p0, p1, p2, p3}, notifyRangesInsertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V

    .line 456
    :cond_7
    return-void
.end method

.method insertingNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .registers 4
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "replace"    # Z

    .prologue
    .line 1188
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_9

    .line 1189
    if-nez p2, :cond_9

    .line 1190
    invoke-virtual {p0, p1}, saveEnclosingAttr(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1193
    :cond_9
    return-void
.end method

.method modifiedAttrValue(Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;)V
    .registers 4
    .param p1, "attr"    # Lmf/org/apache/xerces/dom/AttrImpl;
    .param p2, "oldvalue"    # Ljava/lang/String;

    .prologue
    .line 1417
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_8

    .line 1420
    const/4 v0, 0x1

    .line 1419
    invoke-virtual {p0, p1, p1, p2, v0}, dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    .line 1422
    :cond_8
    return-void
.end method

.method modifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "oldvalue"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "replace"    # Z

    .prologue
    .line 1148
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_7

    .line 1149
    invoke-direct {p0, p1, p2, p3, p4}, mutationEventsModifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1151
    :cond_7
    return-void
.end method

.method modifyingCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .registers 4
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "replace"    # Z

    .prologue
    .line 1137
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_9

    .line 1138
    if-nez p2, :cond_9

    .line 1139
    invoke-virtual {p0, p1}, saveEnclosingAttr(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1142
    :cond_9
    return-void
.end method

.method protected removeEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .registers 10
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listener"    # Lmf/org/w3c/dom/events/EventListener;
    .param p4, "useCapture"    # Z

    .prologue
    .line 699
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    if-nez p3, :cond_b

    .line 731
    :cond_a
    :goto_a
    return-void

    .line 701
    :cond_b
    invoke-virtual {p0, p1}, getEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v3

    .line 702
    .local v3, "nodeListeners":Ljava/util/Vector;
    if-eqz v3, :cond_a

    .line 708
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_17
    if-ltz v0, :cond_a

    .line 709
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;

    .line 710
    .local v2, "le":Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;
    iget-boolean v4, v2, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->useCapture:Z

    if-ne v4, p4, :cond_5c

    iget-object v4, v2, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->listener:Lmf/org/w3c/dom/events/EventListener;

    if-ne v4, p3, :cond_5c

    .line 711
    iget-object v4, v2, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 712
    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 714
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_3c

    .line 715
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, setEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/util/Vector;)V

    .line 718
    :cond_3c
    invoke-static {p2}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v1

    .line 719
    .local v1, "lc":Lmf/org/apache/xerces/dom/LCount;
    if-eqz p4, :cond_4f

    .line 720
    iget v4, v1, Lmf/org/apache/xerces/dom/LCount;->captures:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lmf/org/apache/xerces/dom/LCount;->captures:I

    .line 721
    iget v4, v1, Lmf/org/apache/xerces/dom/LCount;->total:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lmf/org/apache/xerces/dom/LCount;->total:I

    goto :goto_a

    .line 724
    :cond_4f
    iget v4, v1, Lmf/org/apache/xerces/dom/LCount;->bubbles:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lmf/org/apache/xerces/dom/LCount;->bubbles:I

    .line 725
    iget v4, v1, Lmf/org/apache/xerces/dom/LCount;->total:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lmf/org/apache/xerces/dom/LCount;->total:I

    goto :goto_a

    .line 708
    .end local v1    # "lc":Lmf/org/apache/xerces/dom/LCount;
    :cond_5c
    add-int/lit8 v0, v0, -0x1

    goto :goto_17
.end method

.method removeNodeIterator(Lmf/org/w3c/dom/traversal/NodeIterator;)V
    .registers 5
    .param p1, "nodeIterator"    # Lmf/org/w3c/dom/traversal/NodeIterator;

    .prologue
    .line 301
    if-nez p1, :cond_3

    .line 317
    :cond_2
    :goto_2
    return-void

    .line 302
    :cond_3
    iget-object v2, p0, iterators:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 304
    invoke-direct {p0}, removeStaleIteratorReferences()V

    .line 305
    iget-object v2, p0, iterators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    .local v0, "i":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 308
    .local v1, "iterator":Ljava/lang/Object;
    if-ne v1, p1, :cond_26

    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 313
    :cond_26
    if-nez v1, :cond_10

    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_10
.end method

.method removeRange(Lmf/org/w3c/dom/ranges/Range;)V
    .registers 5
    .param p1, "range"    # Lmf/org/w3c/dom/ranges/Range;

    .prologue
    .line 377
    if-nez p1, :cond_3

    .line 393
    :cond_2
    :goto_2
    return-void

    .line 378
    :cond_3
    iget-object v2, p0, ranges:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 380
    invoke-direct {p0}, removeStaleRangeReferences()V

    .line 381
    iget-object v2, p0, ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 382
    .local v0, "i":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 384
    .local v1, "otherRange":Ljava/lang/Object;
    if-ne v1, p1, :cond_26

    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 389
    :cond_26
    if-nez v1, :cond_10

    .line 390
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_10
.end method

.method removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .registers 5
    .param p1, "attr"    # Lmf/org/apache/xerces/dom/AttrImpl;
    .param p2, "oldOwner"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1449
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_7

    .line 1450
    invoke-direct {p0, p1, p2, p3}, mutationEventsRemovedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    .line 1452
    :cond_7
    return-void
.end method

.method removedNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .registers 4
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "replace"    # Z

    .prologue
    .line 1376
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_b

    .line 1380
    if-nez p2, :cond_b

    .line 1381
    iget-object v0, p0, savedEnclosingAttr:Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {p0, p1, v0}, dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;)V

    .line 1384
    :cond_b
    return-void
.end method

.method removingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .registers 5
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "oldChild"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p3, "replace"    # Z

    .prologue
    .line 1282
    iget-object v0, p0, iterators:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1283
    invoke-direct {p0, p2}, notifyIteratorsRemovingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1287
    :cond_7
    iget-object v0, p0, ranges:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 1288
    invoke-direct {p0, p2}, notifyRangesRemovingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1292
    :cond_e
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_15

    .line 1293
    invoke-direct {p0, p1, p2, p3}, mutationEventsRemovingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 1295
    :cond_15
    return-void
.end method

.method renamedAttrNode(Lmf/org/w3c/dom/Attr;Lmf/org/w3c/dom/Attr;)V
    .registers 3
    .param p1, "oldAt"    # Lmf/org/w3c/dom/Attr;
    .param p2, "newAt"    # Lmf/org/w3c/dom/Attr;

    .prologue
    .line 1478
    return-void
.end method

.method renamedElement(Lmf/org/w3c/dom/Element;Lmf/org/w3c/dom/Element;)V
    .registers 3
    .param p1, "oldEl"    # Lmf/org/w3c/dom/Element;
    .param p2, "newEl"    # Lmf/org/w3c/dom/Element;

    .prologue
    .line 1485
    return-void
.end method

.method replacedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "oldvalue"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, modifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1182
    return-void
.end method

.method replacedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .registers 3
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 1408
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_9

    .line 1409
    iget-object v0, p0, savedEnclosingAttr:Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {p0, p1, v0}, dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;)V

    .line 1411
    :cond_9
    return-void
.end method

.method replacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V
    .registers 3
    .param p1, "node"    # Lmf/org/apache/xerces/dom/CharacterDataImpl;

    .prologue
    .line 401
    iget-object v0, p0, ranges:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 402
    invoke-direct {p0, p1}, notifyRangesReplacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V

    .line 404
    :cond_7
    return-void
.end method

.method replacingData(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .registers 3
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 1399
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_7

    .line 1400
    invoke-virtual {p0, p1}, saveEnclosingAttr(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1402
    :cond_7
    return-void
.end method

.method replacingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .registers 3
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 1390
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_7

    .line 1391
    invoke-virtual {p0, p1}, saveEnclosingAttr(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1393
    :cond_7
    return-void
.end method

.method protected saveEnclosingAttr(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .registers 7
    .param p1, "node"    # Lmf/org/apache/xerces/dom/NodeImpl;

    .prologue
    .line 1103
    const/4 v4, 0x0

    iput-object v4, p0, savedEnclosingAttr:Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    .line 1108
    const-string v4, "DOMAttrModified"

    invoke-static {v4}, Lmf/org/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;

    move-result-object v1

    .line 1109
    .local v1, "lc":Lmf/org/apache/xerces/dom/LCount;
    iget v4, v1, Lmf/org/apache/xerces/dom/LCount;->total:I

    if-lez v4, :cond_10

    .line 1110
    move-object v0, p1

    .line 1112
    .local v0, "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    :goto_e
    if-nez v0, :cond_11

    .line 1131
    .end local v0    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_10
    :goto_10
    return-void

    .line 1114
    .restart local v0    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_11
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v3

    .line 1115
    .local v3, "type":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    .line 1116
    new-instance v2, Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    invoke-direct {v2, p0}, Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;-><init>(Lmf/org/apache/xerces/dom/DocumentImpl;)V

    .line 1117
    .local v2, "retval":Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .end local v0    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    iput-object v0, v2, Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;->node:Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1118
    iget-object v4, v2, Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;->node:Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;->oldvalue:Ljava/lang/String;

    .line 1119
    iput-object v2, p0, savedEnclosingAttr:Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    goto :goto_10

    .line 1122
    .end local v2    # "retval":Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;
    .restart local v0    # "eventAncestor":Lmf/org/apache/xerces/dom/NodeImpl;
    :cond_2c
    const/4 v4, 0x5

    if-ne v3, v4, :cond_34

    .line 1123
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v0

    goto :goto_e

    .line 1124
    :cond_34
    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    .line 1125
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v0

    goto :goto_e
.end method

.method setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V
    .registers 6
    .param p1, "attr"    # Lmf/org/apache/xerces/dom/AttrImpl;
    .param p2, "previous"    # Lmf/org/apache/xerces/dom/AttrImpl;

    .prologue
    .line 1428
    iget-boolean v0, p0, mutationEvents:Z

    if-eqz v0, :cond_d

    .line 1430
    if-nez p2, :cond_e

    .line 1431
    iget-object v0, p1, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    const/4 v1, 0x0

    .line 1432
    const/4 v2, 0x2

    .line 1431
    invoke-virtual {p0, v0, p1, v1, v2}, dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    .line 1440
    :cond_d
    :goto_d
    return-void

    .line 1435
    :cond_e
    iget-object v0, p1, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1436
    invoke-virtual {p2}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1437
    const/4 v2, 0x1

    .line 1435
    invoke-virtual {p0, v0, p1, v1, v2}, dispatchAggregateEvents(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    goto :goto_d
.end method

.method protected setEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/util/Vector;)V
    .registers 4
    .param p1, "n"    # Lmf/org/apache/xerces/dom/NodeImpl;
    .param p2, "listeners"    # Ljava/util/Vector;

    .prologue
    .line 574
    iget-object v0, p0, eventListeners:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 575
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, eventListeners:Ljava/util/Hashtable;

    .line 577
    :cond_b
    if-nez p2, :cond_1e

    .line 578
    iget-object v0, p0, eventListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget-object v0, p0, eventListeners:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, mutationEvents:Z

    .line 588
    :cond_1d
    :goto_1d
    return-void

    .line 584
    :cond_1e
    iget-object v0, p0, eventListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, mutationEvents:Z

    goto :goto_1d
.end method

.method setMutationEvents(Z)V
    .registers 2
    .param p1, "set"    # Z

    .prologue
    .line 557
    iput-boolean p1, p0, mutationEvents:Z

    .line 558
    return-void
.end method

.method splitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V
    .registers 5
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "newNode"    # Lmf/org/w3c/dom/Node;
    .param p3, "offset"    # I

    .prologue
    .line 479
    iget-object v0, p0, ranges:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 480
    invoke-direct {p0, p1, p2, p3}, notifyRangesSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V

    .line 482
    :cond_7
    return-void
.end method
