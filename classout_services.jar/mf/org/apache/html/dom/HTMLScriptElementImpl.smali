.class public Lmf/org/apache/html/dom/HTMLScriptElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLScriptElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLScriptElement;


# static fields
.field private static final serialVersionUID:J = 0x46a47c35bd3a44deL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 153
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    const-string v0, "charset"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefer()Z
    .registers 2

    .prologue
    .line 111
    const-string/jumbo v0, "defer"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string/jumbo v0, "event"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlFor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string/jumbo v0, "for"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, "charset"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public setDefer(Z)V
    .registers 3
    .param p1, "defer"    # Z

    .prologue
    .line 117
    const-string/jumbo v0, "defer"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 118
    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string/jumbo v0, "event"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setHtmlFor(Ljava/lang/String;)V
    .registers 3
    .param p1, "htmlFor"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string/jumbo v0, "for"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 3
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
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

.method public setType(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method
