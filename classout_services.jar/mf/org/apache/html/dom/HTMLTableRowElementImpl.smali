.class public Lmf/org/apache/html/dom/HTMLTableRowElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTableRowElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTableRowElement;


# static fields
.field private static final serialVersionUID:J = 0x4b12a08e58842c27L


# instance fields
.field _cells:Lmf/org/w3c/dom/html/HTMLCollection;


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 269
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .registers 4
    .param p1, "deep"    # Z

    .prologue
    .line 256
    invoke-super {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;

    .line 257
    .local v0, "clonedNode":Lmf/org/apache/html/dom/HTMLTableRowElementImpl;
    const/4 v1, 0x0

    iput-object v1, v0, _cells:Lmf/org/w3c/dom/html/HTMLCollection;

    .line 258
    return-object v0
.end method

.method public deleteCell(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 167
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 168
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_4
    if-nez v0, :cond_7

    .line 178
    :goto_6
    return-void

    .line 169
    :cond_7
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    if-eqz v1, :cond_13

    .line 170
    if-nez p1, :cond_11

    .line 171
    invoke-virtual {p0, v0}, removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_6

    .line 174
    :cond_11
    add-int/lit8 p1, p1, -0x1

    .line 176
    :cond_13
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_4
.end method

.method public getAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    const-string v0, "align"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCells()Lmf/org/w3c/dom/html/HTMLCollection;
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, _cells:Lmf/org/w3c/dom/html/HTMLCollection;

    if-nez v0, :cond_c

    .line 115
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, -0x3

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, _cells:Lmf/org/w3c/dom/html/HTMLCollection;

    .line 117
    :cond_c
    iget-object v0, p0, _cells:Lmf/org/w3c/dom/html/HTMLCollection;

    return-object v0
.end method

.method public getCh()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 210
    const-string v1, "char"

    invoke-virtual {p0, v1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "ch":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_14

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_14
    return-object v0
.end method

.method public getChOff()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    const-string v0, "charoff"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowIndex()I
    .registers 3

    .prologue
    .line 46
    invoke-virtual {p0}, getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 47
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_c

    .line 48
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 50
    :cond_c
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableElement;

    if-eqz v1, :cond_15

    .line 51
    invoke-virtual {p0, v0}, getRowIndex(Lmf/org/w3c/dom/Node;)I

    move-result v1

    .line 53
    :goto_14
    return v1

    :cond_15
    const/4 v1, -0x1

    goto :goto_14
.end method

.method getRowIndex(Lmf/org/w3c/dom/Node;)I
    .registers 5
    .param p1, "parent"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 102
    check-cast p1, Lmf/org/w3c/dom/html/HTMLElement;

    .end local p1    # "parent":Lmf/org/w3c/dom/Node;
    const-string v2, "TR"

    invoke-interface {p1, v2}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    .line 103
    .local v1, "rows":Lmf/org/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-interface {v1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_11

    .line 108
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_10
    return v0

    .line 104
    .restart local v0    # "i":I
    :cond_11
    invoke-interface {v1, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eq v2, p0, :cond_10

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public getSectionRowIndex()I
    .registers 3

    .prologue
    .line 75
    invoke-virtual {p0}, getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 76
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_d

    .line 77
    invoke-virtual {p0, v0}, getRowIndex(Lmf/org/w3c/dom/Node;)I

    move-result v1

    .line 79
    :goto_c
    return v1

    :cond_d
    const/4 v1, -0x1

    goto :goto_c
.end method

.method public getVAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertCell(I)Lmf/org/w3c/dom/html/HTMLElement;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 146
    new-instance v1, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;

    invoke-virtual {p0}, getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string v3, "TD"

    invoke-direct {v1, v2, v3}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 147
    .local v1, "newCell":Lmf/org/w3c/dom/html/HTMLElement;
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 148
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_11
    if-nez v0, :cond_17

    .line 158
    invoke-virtual {p0, v1}, appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 159
    :goto_16
    return-object v1

    .line 149
    :cond_17
    instance-of v2, v0, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    if-eqz v2, :cond_23

    .line 150
    if-nez p1, :cond_21

    .line 151
    invoke-virtual {p0, v1, v0}, insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_16

    .line 154
    :cond_21
    add-int/lit8 p1, p1, -0x1

    .line 156
    :cond_23
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_11
.end method

.method public setAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .registers 3
    .param p1, "bgColor"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public setCells(Lmf/org/w3c/dom/html/HTMLCollection;)V
    .registers 4
    .param p1, "cells"    # Lmf/org/w3c/dom/html/HTMLCollection;

    .prologue
    .line 126
    invoke-virtual {p0}, getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 127
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_4
    if-nez v0, :cond_e

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "i":I
    invoke-interface {p1, v1}, Lmf/org/w3c/dom/html/HTMLCollection;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 133
    :goto_b
    if-nez v0, :cond_16

    .line 138
    return-void

    .line 128
    .end local v1    # "i":I
    :cond_e
    invoke-virtual {p0, v0}, removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 129
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    .line 134
    .restart local v1    # "i":I
    :cond_16
    invoke-virtual {p0, v0}, appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    invoke-interface {p1, v1}, Lmf/org/w3c/dom/html/HTMLCollection;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_b
.end method

.method public setCh(Ljava/lang/String;)V
    .registers 4
    .param p1, "ch"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 221
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_e

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 224
    :cond_e
    const-string v0, "char"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setChOff(Ljava/lang/String;)V
    .registers 3
    .param p1, "chOff"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v0, "charoff"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setRowIndex(I)V
    .registers 4
    .param p1, "rowIndex"    # I

    .prologue
    .line 61
    invoke-virtual {p0}, getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 62
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_c

    .line 63
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 65
    :cond_c
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableElement;

    if-eqz v1, :cond_15

    .line 66
    check-cast v0, Lmf/org/apache/html/dom/HTMLTableElementImpl;

    .end local v0    # "parent":Lmf/org/w3c/dom/Node;
    invoke-virtual {v0, p1, p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)V

    .line 68
    :cond_15
    return-void
.end method

.method public setSectionRowIndex(I)V
    .registers 4
    .param p1, "sectionRowIndex"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 88
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_d

    .line 89
    check-cast v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    .end local v0    # "parent":Lmf/org/w3c/dom/Node;
    invoke-virtual {v0, p1, p0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)I

    .line 91
    :cond_d
    return-void
.end method

.method public setVAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "vAlign"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method
