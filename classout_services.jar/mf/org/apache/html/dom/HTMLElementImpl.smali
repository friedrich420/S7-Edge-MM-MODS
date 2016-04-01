.class public Lmf/org/apache/html/dom/HTMLElementImpl;
.super Lmf/org/apache/xerces/dom/ElementImpl;
.source "HTMLElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLElement;


# static fields
.field private static final serialVersionUID:J = 0x495446041ee2bb47L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 4
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 202
    .local v0, "chars":[C
    array-length v2, v0

    if-lez v2, :cond_18

    .line 203
    aget-char v2, v0, v3

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v0, v3

    .line 204
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    if-lt v1, v2, :cond_19

    .line 207
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    .line 209
    .end local v1    # "i":I
    .end local p1    # "value":Ljava/lang/String;
    :cond_18
    return-object p1

    .line 205
    .restart local v1    # "i":I
    .restart local p1    # "value":Ljava/lang/String;
    :cond_19
    aget-char v2, v0, v1

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v0, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    .line 163
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 168
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 169
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .registers 3
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 156
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 157
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    .line 159
    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    goto :goto_c
.end method

.method getBinary(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method getCapitalized(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-virtual {p0, p1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_1e

    .line 229
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 230
    .local v0, "chars":[C
    array-length v3, v0

    if-lez v3, :cond_1e

    .line 231
    aget-char v3, v0, v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v0, v4

    .line 232
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_17
    array-length v3, v0

    if-lt v1, v3, :cond_1f

    .line 235
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 238
    .end local v0    # "chars":[C
    .end local v1    # "i":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_1e
    return-object v2

    .line 233
    .restart local v0    # "chars":[C
    .restart local v1    # "i":I
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1f
    aget-char v3, v0, v1

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v1

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    const-string v0, "class"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDir()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string/jumbo v0, "dir"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .registers 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public final getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 180
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 181
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    .line 183
    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    goto :goto_12
.end method

.method public getForm()Lmf/org/w3c/dom/html/HTMLFormElement;
    .registers 3

    .prologue
    .line 248
    invoke-virtual {p0}, getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 249
    .local v0, "parent":Lmf/org/w3c/dom/Node;
    :goto_4
    if-nez v0, :cond_8

    .line 255
    const/4 v0, 0x0

    .end local v0    # "parent":Lmf/org/w3c/dom/Node;
    :goto_7
    return-object v0

    .line 250
    .restart local v0    # "parent":Lmf/org/w3c/dom/Node;
    :cond_8
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLFormElement;

    if-eqz v1, :cond_f

    .line 251
    check-cast v0, Lmf/org/w3c/dom/html/HTMLFormElement;

    goto :goto_7

    .line 253
    :cond_f
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_4
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInteger(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 116
    :goto_4
    return v1

    .line 115
    :catch_5
    move-exception v0

    .line 116
    .local v0, "except":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public getLang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    const-string/jumbo v0, "lang"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setAttribute(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 142
    if-eqz p2, :cond_6

    .line 143
    invoke-virtual {p0, p1, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_5
    return-void

    .line 146
    :cond_6
    invoke-virtual {p0, p1}, removeAttribute(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public setDir(Ljava/lang/String;)V
    .registers 3
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string/jumbo v0, "dir"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .registers 3
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string/jumbo v0, "lang"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
