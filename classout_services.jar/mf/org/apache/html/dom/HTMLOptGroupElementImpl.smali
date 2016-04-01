.class public Lmf/org/apache/html/dom/HTMLOptGroupElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLOptGroupElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLOptGroupElement;


# static fields
.field private static final serialVersionUID:J = -0x7a39198d5c1c846dL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getDisabled()Z
    .registers 2

    .prologue
    .line 37
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string/jumbo v0, "label"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDisabled(Z)V
    .registers 3
    .param p1, "disabled"    # Z

    .prologue
    .line 43
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string/jumbo v0, "label"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
