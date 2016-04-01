.class public Lmf/org/apache/wml/dom/WMLTableElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLTableElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLTableElement;


# static fields
.field private static final serialVersionUID:J = 0x6a875f47370f22cbL


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/wml/dom/WMLDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    const-string v0, "align"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string v0, "class"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumns()I
    .registers 3

    .prologue
    .line 39
    const-string v0, "columns"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, getAttribute(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setColumns(I)V
    .registers 3
    .param p1, "newValue"    # I

    .prologue
    .line 35
    const-string v0, "columns"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
