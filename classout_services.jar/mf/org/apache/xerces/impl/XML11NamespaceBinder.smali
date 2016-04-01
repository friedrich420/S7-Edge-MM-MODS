.class public Lmf/org/apache/xerces/impl/XML11NamespaceBinder;
.super Lmf/org/apache/xerces/impl/XMLNamespaceBinder;
.source "XML11NamespaceBinder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method protected prefixBoundToNullURI(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
