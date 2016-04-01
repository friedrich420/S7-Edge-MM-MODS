.class public Lmf/javax/xml/xpath/XPathException;
.super Ljava/lang/Exception;
.source "XPathException.java"


# static fields
.field private static final serialVersionUID:J = -0x197e9ec3778880e4L


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 82
    if-nez p1, :cond_e

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "message can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, cause:Ljava/lang/Throwable;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 101
    iput-object p1, p0, cause:Ljava/lang/Throwable;

    .line 102
    if-nez p1, :cond_f

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cause can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_f
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .registers 2

    .prologue
    .line 134
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, printStackTrace(Ljava/io/PrintStream;)V

    .line 135
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 122
    invoke-virtual {p0}, getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 123
    invoke-virtual {p0}, getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 124
    const-string v0, "--------------- linked to ------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    :cond_12
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 128
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintWriter;

    .prologue
    .line 144
    invoke-virtual {p0}, getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 145
    invoke-virtual {p0}, getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 146
    const-string v0, "--------------- linked to ------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    :cond_12
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 150
    return-void
.end method
