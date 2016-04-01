.class public Lmf/org/apache/html/dom/HTMLFieldSetElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLFieldSetElementImpl.java"

# interfaces
.implements Lmf/org/apache/html/dom/HTMLFormControl;
.implements Lmf/org/w3c/dom/html/HTMLFieldSetElement;


# static fields
.field private static final serialVersionUID:J = 0xfe7ed54a9f3c43fL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 43
    return-void
.end method
