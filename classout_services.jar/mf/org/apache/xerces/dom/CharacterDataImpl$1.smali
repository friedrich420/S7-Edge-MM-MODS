.class Lmf/org/apache/xerces/dom/CharacterDataImpl$1;
.super Ljava/lang/Object;
.source "CharacterDataImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/CharacterDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method
