.class public Lmf/org/apache/wml/dom/WMLDOMImplementationImpl;
.super Lmf/org/apache/xerces/dom/DOMImplementationImpl;
.source "WMLDOMImplementationImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLDOMImplementation;


# static fields
.field static final singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lmf/org/apache/wml/dom/WMLDOMImplementationImpl;

    invoke-direct {v0}, <init>()V

    sput-object v0, singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .registers 1

    .prologue
    .line 38
    sget-object v0, singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected createDocument(Lmf/org/w3c/dom/DocumentType;)Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .registers 3
    .param p1, "doctype"    # Lmf/org/w3c/dom/DocumentType;

    .prologue
    .line 46
    new-instance v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/wml/dom/WMLDocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;)V

    return-object v0
.end method
