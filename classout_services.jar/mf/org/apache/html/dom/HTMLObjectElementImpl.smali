.class public Lmf/org/apache/html/dom/HTMLObjectElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLObjectElementImpl.java"

# interfaces
.implements Lmf/org/apache/html/dom/HTMLFormControl;
.implements Lmf/org/w3c/dom/html/HTMLObjectElement;


# static fields
.field private static final serialVersionUID:J = 0x1f995ce618552ccbL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 252
    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string v0, "align"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArchive()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "archive"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-string v0, "border"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string v0, "code"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodeBase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string v0, "codebase"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    const-string v0, "codetype"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeclare()Z
    .registers 2

    .prologue
    .line 120
    const-string/jumbo v0, "declare"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHeight()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHspace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    const-string/jumbo v0, "hspace"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandby()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    const-string/jumbo v0, "standby"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .registers 3

    .prologue
    .line 180
    :try_start_0
    const-string/jumbo v1, "tabindex"

    invoke-virtual {p0, v1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 184
    :goto_b
    return v1

    .line 182
    :catch_c
    move-exception v0

    .line 184
    .local v0, "except":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseMap()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    const-string/jumbo v0, "useMap"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVspace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    const-string/jumbo v0, "vspace"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setArchive(Ljava/lang/String;)V
    .registers 3
    .param p1, "archive"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "archive"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setBorder(Ljava/lang/String;)V
    .registers 3
    .param p1, "border"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "border"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setCodeBase(Ljava/lang/String;)V
    .registers 3
    .param p1, "codeBase"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "codebase"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setCodeType(Ljava/lang/String;)V
    .registers 3
    .param p1, "codeType"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "codetype"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setDeclare(Z)V
    .registers 3
    .param p1, "declare"    # Z

    .prologue
    .line 126
    const-string/jumbo v0, "declare"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 127
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .registers 3
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setHspace(Ljava/lang/String;)V
    .registers 3
    .param p1, "hspace"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string/jumbo v0, "hspace"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setStandby(Ljava/lang/String;)V
    .registers 3
    .param p1, "standby"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string/jumbo v0, "standby"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public setTabIndex(I)V
    .registers 4
    .param p1, "tabIndex"    # I

    .prologue
    .line 191
    const-string/jumbo v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setUseMap(Ljava/lang/String;)V
    .registers 3
    .param p1, "useMap"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string/jumbo v0, "useMap"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setVspace(Ljava/lang/String;)V
    .registers 3
    .param p1, "vspace"    # Ljava/lang/String;

    .prologue
    .line 227
    const-string/jumbo v0, "vspace"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .registers 3
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method
