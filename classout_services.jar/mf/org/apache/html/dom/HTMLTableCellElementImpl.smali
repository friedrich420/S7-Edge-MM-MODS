.class public Lmf/org/apache/html/dom/HTMLTableCellElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTableCellElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTableCellElement;


# static fields
.field private static final serialVersionUID:J = -0x2165ab8391302042L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 274
    return-void
.end method


# virtual methods
.method public getAbbr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const-string v0, "abbr"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    const-string v0, "align"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAxis()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    const-string v0, "axis"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellIndex()I
    .registers 5

    .prologue
    .line 43
    invoke-virtual {p0}, getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 44
    .local v2, "parent":Lmf/org/w3c/dom/Node;
    const/4 v1, 0x0

    .line 45
    .local v1, "index":I
    instance-of v3, v2, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-eqz v3, :cond_f

    .line 47
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 48
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_d
    if-nez v0, :cond_11

    .line 59
    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_f
    const/4 v3, -0x1

    :goto_10
    return v3

    .line 50
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_11
    instance-of v3, v0, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    if-eqz v3, :cond_1b

    .line 52
    if-ne v0, p0, :cond_19

    move v3, v1

    .line 53
    goto :goto_10

    .line 54
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 56
    :cond_1b
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_d
.end method

.method public getCh()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 143
    const-string v1, "char"

    invoke-virtual {p0, v1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "ch":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_14

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_14
    return-object v0
.end method

.method public getChOff()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    const-string v0, "charoff"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColSpan()I
    .registers 2

    .prologue
    .line 173
    const-string v0, "colspan"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHeaders()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    const-string/jumbo v0, "headers"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoWrap()Z
    .registers 2

    .prologue
    .line 209
    const-string/jumbo v0, "nowrap"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRowSpan()I
    .registers 2

    .prologue
    .line 220
    const-string/jumbo v0, "rowspan"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    const-string/jumbo v0, "scope"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAbbr(Ljava/lang/String;)V
    .registers 3
    .param p1, "abbr"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "abbr"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setAxis(Ljava/lang/String;)V
    .registers 3
    .param p1, "axis"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "axis"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .registers 3
    .param p1, "bgColor"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v0, "bgcolor"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setCellIndex(I)V
    .registers 5
    .param p1, "cellIndex"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 69
    .local v1, "parent":Lmf/org/w3c/dom/Node;
    instance-of v2, v1, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-eqz v2, :cond_e

    .line 71
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 72
    .local v0, "child":Lmf/org/w3c/dom/Node;
    :goto_c
    if-nez v0, :cond_12

    .line 87
    .end local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_e
    invoke-interface {v1, p0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 88
    :cond_11
    :goto_11
    return-void

    .line 74
    .restart local v0    # "child":Lmf/org/w3c/dom/Node;
    :cond_12
    instance-of v2, v0, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    if-eqz v2, :cond_20

    .line 76
    if-nez p1, :cond_1e

    .line 78
    if-eq p0, v0, :cond_11

    .line 79
    invoke-interface {v1, p0, v0}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_11

    .line 82
    :cond_1e
    add-int/lit8 p1, p1, -0x1

    .line 84
    :cond_20
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_c
.end method

.method public setCh(Ljava/lang/String;)V
    .registers 4
    .param p1, "ch"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 153
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_e

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_e
    const-string v0, "char"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setChOff(Ljava/lang/String;)V
    .registers 3
    .param p1, "chOff"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v0, "charoff"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setColSpan(I)V
    .registers 4
    .param p1, "colspan"    # I

    .prologue
    .line 179
    const-string v0, "colspan"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public setHeaders(Ljava/lang/String;)V
    .registers 3
    .param p1, "headers"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string/jumbo v0, "headers"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .registers 3
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setNoWrap(Z)V
    .registers 3
    .param p1, "noWrap"    # Z

    .prologue
    .line 215
    const-string/jumbo v0, "nowrap"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 216
    return-void
.end method

.method public setRowSpan(I)V
    .registers 4
    .param p1, "rowspan"    # I

    .prologue
    .line 226
    const-string/jumbo v0, "rowspan"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .registers 3
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string/jumbo v0, "scope"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setVAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "vAlign"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .registers 3
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method
