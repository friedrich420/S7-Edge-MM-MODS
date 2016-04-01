.class public Lmf/org/apache/html/dom/HTMLLegendElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLLegendElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLLegendElement;


# static fields
.field private static final serialVersionUID:J = -0x8a140851ddc192aL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 76
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

.method public getAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string v0, "align"

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

.method public setAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
