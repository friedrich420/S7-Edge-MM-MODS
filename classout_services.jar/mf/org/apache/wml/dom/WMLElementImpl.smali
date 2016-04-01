.class public Lmf/org/apache/wml/dom/WMLElementImpl;
.super Lmf/org/apache/xerces/dom/ElementImpl;
.source "WMLElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLElement;


# static fields
.field private static final serialVersionUID:J = 0x2fc0d55b31447e94L


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/wml/dom/WMLDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method getAttribute(Ljava/lang/String;I)I
    .registers 6
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 78
    move v0, p2

    .line 80
    .local v0, "ret":I
    const-string/jumbo v2, "emptyok"

    invoke-virtual {p0, v2}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 82
    :cond_e
    return v0
.end method

.method getAttribute(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 65
    move v0, p2

    .line 67
    .local v0, "ret":Z
    const-string/jumbo v2, "emptyok"

    invoke-virtual {p0, v2}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 68
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 69
    const/4 v0, 0x1

    .line 70
    :cond_14
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const-string v0, "class"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setAttribute(Ljava/lang/String;I)V
    .registers 5
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method setAttribute(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 61
    if-eqz p2, :cond_9

    const-string/jumbo v0, "true"

    :goto_5
    invoke-virtual {p0, p1, v0}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 61
    :cond_9
    const-string/jumbo v0, "false"

    goto :goto_5
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .registers 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
