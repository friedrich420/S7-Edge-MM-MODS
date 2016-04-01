.class public Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTableSectionElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTableSectionElement;


# static fields
.field private static final serialVersionUID:J = 0xe1b063c79fd2b2bL


# instance fields
.field private _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 183
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "deep"    # Z

    .prologue
    .line 170
    invoke-super {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    .line 171
    .local v0, "clonedNode":Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;
    const/4 v1, 0x0

    iput-object v1, v0, _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 172
    return-object v0
.end method

.method public deleteRow(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1}, deleteRowX(I)I

    .line 141
    return-void
.end method

.method deleteRowX(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 149
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_4
    if-nez v0, :cond_7

    .line 162
    .end local p1    # "index":I
    :goto_6
    return p1

    .line 151
    .restart local p1    # "index":I
    :cond_7
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-eqz v1, :cond_14

    .line 153
    if-nez p1, :cond_12

    .line 155
    invoke-virtual {p0, v0}, removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 156
    const/4 p1, -0x1

    goto :goto_6

    .line 158
    :cond_12
    add-int/lit8 p1, p1, -0x1

    .line 160
    :cond_14
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_4
.end method

.method public getAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const-string v0, "align"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCh()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 56
    const-string v1, "char"

    invoke-virtual {p0, v1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "ch":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_14

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_14
    return-object v0
.end method

.method public getChOff()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string v0, "charoff"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRows()Lmf/org/w3c/dom/html/HTMLCollection;
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_c

    .line 99
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 100
    :cond_c
    iget-object v0, p0, _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0
.end method

.method public getVAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertRow(I)Lmf/org/w3c/dom/html/HTMLElement;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 108
    new-instance v0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;

    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string v2, "TR"

    invoke-direct {v0, v1, v2}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 109
    .local v0, "newRow":Lmf/org/apache/html/dom/HTMLTableRowElementImpl;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->insertCell(I)Lmf/org/w3c/dom/html/HTMLElement;

    .line 110
    invoke-virtual {p0, p1, v0}, insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)I

    move-result v1

    if-ltz v1, :cond_1a

    .line 111
    invoke-virtual {p0, v0}, appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 112
    :cond_1a
    return-object v0
.end method

.method insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "newRow"    # Lmf/org/apache/html/dom/HTMLTableRowElementImpl;

    .prologue
    .line 120
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 121
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_4
    if-nez v0, :cond_7

    .line 134
    .end local p1    # "index":I
    :goto_6
    return p1

    .line 123
    .restart local p1    # "index":I
    :cond_7
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-eqz v1, :cond_14

    .line 125
    if-nez p1, :cond_12

    .line 127
    invoke-virtual {p0, p2, v0}, insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 128
    const/4 p1, -0x1

    goto :goto_6

    .line 130
    :cond_12
    add-int/lit8 p1, p1, -0x1

    .line 132
    :cond_14
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_4
.end method

.method public setAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public setCh(Ljava/lang/String;)V
    .registers 4
    .param p1, "ch"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 66
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_e

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 68
    :cond_e
    const-string v0, "char"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setChOff(Ljava/lang/String;)V
    .registers 3
    .param p1, "chOff"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, "charoff"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setVAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "vAlign"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
