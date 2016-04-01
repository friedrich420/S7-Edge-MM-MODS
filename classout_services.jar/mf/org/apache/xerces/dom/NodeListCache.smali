.class Lmf/org/apache/xerces/dom/NodeListCache;
.super Ljava/lang/Object;
.source "NodeListCache.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6e043ddb01f12e5aL


# instance fields
.field fChild:Lmf/org/apache/xerces/dom/ChildNode;

.field fChildIndex:I

.field fLength:I

.field fOwner:Lmf/org/apache/xerces/dom/ParentNode;

.field next:Lmf/org/apache/xerces/dom/NodeListCache;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/ParentNode;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/xerces/dom/ParentNode;

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, fLength:I

    .line 41
    iput v0, p0, fChildIndex:I

    .line 54
    iput-object p1, p0, fOwner:Lmf/org/apache/xerces/dom/ParentNode;

    .line 55
    return-void
.end method
