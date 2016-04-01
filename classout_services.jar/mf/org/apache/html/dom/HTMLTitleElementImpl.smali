.class public Lmf/org/apache/html/dom/HTMLTitleElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTitleElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTitleElement;


# static fields
.field private static final serialVersionUID:J = 0xc3521a708d71303L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v1, "text":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 45
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_9
    if-nez v0, :cond_10

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 47
    :cond_10
    instance-of v2, v0, Lmf/org/w3c/dom/Text;

    if-eqz v2, :cond_1e

    move-object v2, v0

    .line 48
    check-cast v2, Lmf/org/w3c/dom/Text;

    invoke-interface {v2}, Lmf/org/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_1e
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_9
.end method

.method public setText(Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 64
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_4
    if-nez v0, :cond_16

    .line 70
    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v2

    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 71
    return-void

    .line 66
    :cond_16
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 67
    .local v1, "next":Lmf/org/w3c/dom/Node;
    invoke-virtual {p0, v0}, removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 68
    move-object v0, v1

    goto :goto_4
.end method
