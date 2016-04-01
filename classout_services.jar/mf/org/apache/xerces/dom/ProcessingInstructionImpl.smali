.class public Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;
.super Lmf/org/apache/xerces/dom/CharacterDataImpl;
.source "ProcessingInstructionImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ProcessingInstruction;


# static fields
.field static final serialVersionUID:J = 0x68d6bec406f214c6L


# instance fields
.field protected target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/CharacterDataImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 60
    iput-object p2, p0, target:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
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
    iget-object v0, p0, ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    invoke-virtual {p0}, synchronizeData()V

    .line 82
    :cond_9
    iget-object v0, p0, target:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x7

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 102
    invoke-virtual {p0}, synchronizeData()V

    .line 104
    :cond_9
    iget-object v0, p0, target:Ljava/lang/String;

    return-object v0
.end method
