.class public Lmf/javax/xml/xpath/XPathFunctionException;
.super Lmf/javax/xml/xpath/XPathExpressionException;
.source "XPathFunctionException.java"


# static fields
.field private static final serialVersionUID:J = -0x197e9ec3778880e4L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lmf/javax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lmf/javax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method
