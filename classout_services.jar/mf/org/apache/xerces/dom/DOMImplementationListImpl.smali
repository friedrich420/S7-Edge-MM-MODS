.class public Lmf/org/apache/xerces/dom/DOMImplementationListImpl;
.super Ljava/lang/Object;
.source "DOMImplementationListImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementationList;


# instance fields
.field private final fImplementations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, fImplementations:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .param p1, "params"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, fImplementations:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .registers 3
    .param p1, "params"    # Ljava/util/Vector;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, fImplementations:Ljava/util/ArrayList;

    .line 58
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, fImplementations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/DOMImplementation;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 66
    invoke-virtual {p0}, getLength()I

    move-result v0

    .line 67
    .local v0, "length":I
    if-ltz p1, :cond_11

    if-ge p1, v0, :cond_11

    .line 68
    iget-object v1, p0, fImplementations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/DOMImplementation;

    .line 70
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method
