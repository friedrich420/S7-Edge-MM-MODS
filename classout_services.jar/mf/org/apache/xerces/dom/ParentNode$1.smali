.class Lmf/org/apache/xerces/dom/ParentNode$1;
.super Ljava/lang/Object;
.source "ParentNode.java"

# interfaces
.implements Lmf/org/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/dom/ParentNode;->getChildNodesUnoptimized()Lmf/org/w3c/dom/NodeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/dom/ParentNode;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/ParentNode;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, this$0:Lmf/org/apache/xerces/dom/ParentNode;

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 818
    iget-object v0, p0, this$0:Lmf/org/apache/xerces/dom/ParentNode;

    # invokes: Lmf/org/apache/xerces/dom/ParentNode;->nodeListGetLength()I
    invoke-static {v0}, Lmf/org/apache/xerces/dom/ParentNode;->access$0(Lmf/org/apache/xerces/dom/ParentNode;)I

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 825
    iget-object v0, p0, this$0:Lmf/org/apache/xerces/dom/ParentNode;

    # invokes: Lmf/org/apache/xerces/dom/ParentNode;->nodeListItem(I)Lmf/org/w3c/dom/Node;
    invoke-static {v0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->access$1(Lmf/org/apache/xerces/dom/ParentNode;I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method
