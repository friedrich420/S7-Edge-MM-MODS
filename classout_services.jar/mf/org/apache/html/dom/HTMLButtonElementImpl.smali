.class public Lmf/org/apache/html/dom/HTMLButtonElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLButtonElementImpl.java"

# interfaces
.implements Lmf/org/apache/html/dom/HTMLFormControl;
.implements Lmf/org/w3c/dom/html/HTMLButtonElement;


# static fields
.field private static final serialVersionUID:J = -0xa75a14a413518baL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 125
    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 40
    const-string v1, "accesskey"

    invoke-virtual {p0, v1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "accessKey":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_14

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_14
    return-object v0
.end method

.method public getDisabled()Z
    .registers 2

    .prologue
    .line 58
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .registers 3

    .prologue
    .line 84
    :try_start_0
    const-string/jumbo v1, "tabindex"

    invoke-virtual {p0, v1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 88
    :goto_b
    return v1

    .line 86
    :catch_c
    move-exception v0

    .line 88
    .local v0, "except":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "accessKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 50
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_e

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_e
    const-string v0, "accesskey"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setDisabled(Z)V
    .registers 3
    .param p1, "disabled"    # Z

    .prologue
    .line 64
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setTabIndex(I)V
    .registers 4
    .param p1, "tabIndex"    # I

    .prologue
    .line 95
    const-string/jumbo v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
