.class public Lmf/org/apache/xerces/dom/RangeExceptionImpl;
.super Lmf/org/w3c/dom/ranges/RangeException;
.source "RangeExceptionImpl.java"


# static fields
.field static final serialVersionUID:J = -0x7db4aadf80fa8598L


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .registers 3
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lmf/org/w3c/dom/ranges/RangeException;-><init>(SLjava/lang/String;)V

    .line 34
    return-void
.end method
