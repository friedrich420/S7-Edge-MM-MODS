.class public Lmf/org/apache/xerces/dom/CommentImpl;
.super Lmf/org/apache/xerces/dom/CharacterDataImpl;
.source "CommentImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/CharacterData;
.implements Lmf/org/w3c/dom/Comment;


# static fields
.field static final serialVersionUID:J = -0x2545a76b9b796b9cL


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "ownerDoc"    # Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/CharacterDataImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "#comment"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 61
    const/16 v0, 0x8

    return v0
.end method
