.class public Lmf/org/apache/html/dom/HTMLHtmlElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLHtmlElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLHtmlElement;


# static fields
.field private static final serialVersionUID:J = -0x3e4ebd77fa8316e6L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
