.class public Lmf/javax/xml/transform/dom/DOMResult;
.super Ljava/lang/Object;
.source "DOMResult.java"

# interfaces
.implements Lmf/javax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMResult/feature"


# instance fields
.field private nextSibling:Lmf/org/w3c/dom/Node;

.field private node:Lmf/org/w3c/dom/Node;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v0, p0, node:Lmf/org/w3c/dom/Node;

    .line 376
    iput-object v0, p0, nextSibling:Lmf/org/w3c/dom/Node;

    .line 381
    iput-object v0, p0, systemId:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, v0}, setNode(Lmf/org/w3c/dom/Node;)V

    .line 77
    invoke-virtual {p0, v0}, setNextSibling(Lmf/org/w3c/dom/Node;)V

    .line 78
    invoke-virtual {p0, v0}, setSystemId(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;)V
    .registers 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v0, p0, node:Lmf/org/w3c/dom/Node;

    .line 376
    iput-object v0, p0, nextSibling:Lmf/org/w3c/dom/Node;

    .line 381
    iput-object v0, p0, systemId:Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p1}, setNode(Lmf/org/w3c/dom/Node;)V

    .line 98
    invoke-virtual {p0, v0}, setNextSibling(Lmf/org/w3c/dom/Node;)V

    .line 99
    invoke-virtual {p0, v0}, setSystemId(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;Ljava/lang/String;)V
    .registers 4
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v0, p0, node:Lmf/org/w3c/dom/Node;

    .line 376
    iput-object v0, p0, nextSibling:Lmf/org/w3c/dom/Node;

    .line 381
    iput-object v0, p0, systemId:Ljava/lang/String;

    .line 117
    invoke-virtual {p0, p1}, setNode(Lmf/org/w3c/dom/Node;)V

    .line 118
    invoke-virtual {p0, v0}, setNextSibling(Lmf/org/w3c/dom/Node;)V

    .line 119
    invoke-virtual {p0, p2}, setSystemId(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V
    .registers 5
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "nextSibling"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v1, p0, node:Lmf/org/w3c/dom/Node;

    .line 376
    iput-object v1, p0, nextSibling:Lmf/org/w3c/dom/Node;

    .line 381
    iput-object v1, p0, systemId:Ljava/lang/String;

    .line 155
    if-eqz p2, :cond_26

    .line 157
    if-nez p1, :cond_16

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_16
    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_26

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_26
    invoke-virtual {p0, p1}, setNode(Lmf/org/w3c/dom/Node;)V

    .line 168
    invoke-virtual {p0, p2}, setNextSibling(Lmf/org/w3c/dom/Node;)V

    .line 169
    invoke-virtual {p0, v1}, setSystemId(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Ljava/lang/String;)V
    .registers 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "nextSibling"    # Lmf/org/w3c/dom/Node;
    .param p3, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v0, p0, node:Lmf/org/w3c/dom/Node;

    .line 376
    iput-object v0, p0, nextSibling:Lmf/org/w3c/dom/Node;

    .line 381
    iput-object v0, p0, systemId:Ljava/lang/String;

    .line 206
    if-eqz p2, :cond_26

    .line 208
    if-nez p1, :cond_16

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_16
    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_26

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_26
    invoke-virtual {p0, p1}, setNode(Lmf/org/w3c/dom/Node;)V

    .line 219
    invoke-virtual {p0, p2}, setNextSibling(Lmf/org/w3c/dom/Node;)V

    .line 220
    invoke-virtual {p0, p3}, setSystemId(Ljava/lang/String;)V

    .line 221
    return-void
.end method


# virtual methods
.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, nextSibling:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getNode()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, node:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setNextSibling(Lmf/org/w3c/dom/Node;)V
    .registers 4
    .param p1, "nextSibling"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 306
    if-eqz p1, :cond_20

    .line 308
    iget-object v0, p0, node:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_e

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_e
    iget-object v0, p0, node:Lmf/org/w3c/dom/Node;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_20

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_20
    iput-object p1, p0, nextSibling:Lmf/org/w3c/dom/Node;

    .line 319
    return-void
.end method

.method public setNode(Lmf/org/w3c/dom/Node;)V
    .registers 4
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 248
    iget-object v0, p0, nextSibling:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_20

    .line 250
    if-nez p1, :cond_e

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_e
    iget-object v0, p0, nextSibling:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_20

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_20
    iput-object p1, p0, node:Lmf/org/w3c/dom/Node;

    .line 261
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, systemId:Ljava/lang/String;

    .line 345
    return-void
.end method
