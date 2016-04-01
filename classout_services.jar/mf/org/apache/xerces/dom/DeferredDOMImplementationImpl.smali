.class public Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;
.super Lmf/org/apache/xerces/dom/DOMImplementationImpl;
.source "DeferredDOMImplementationImpl.java"


# static fields
.field static final singleton:Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    invoke-direct {v0}, <init>()V

    sput-object v0, singleton:Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .registers 1

    .prologue
    .line 54
    sget-object v0, singleton:Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    return-object v0
.end method
