.class public Lmf/org/apache/xerces/dom3/as/DOMASException;
.super Ljava/lang/RuntimeException;
.source "DOMASException.java"


# static fields
.field public static final DUPLICATE_NAME_ERR:S = 0x1s

.field public static final NO_AS_AVAILABLE:S = 0x3s

.field public static final TYPE_ERR:S = 0x2s

.field public static final WRONG_MIME_TYPE_ERR:S = 0x4s


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .registers 3
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    iput-short p1, p0, code:S

    .line 26
    return-void
.end method
