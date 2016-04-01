.class public Lmf/javax/xml/stream/FactoryConfigurationError;
.super Ljava/lang/Error;
.source "FactoryConfigurationError.java"


# static fields
.field private static final serialVersionUID:J = -0x298e4a616f71e0c0L


# instance fields
.field nested:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 66
    iput-object p1, p0, nested:Ljava/lang/Exception;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, nested:Ljava/lang/Exception;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 90
    iput-object p2, p0, nested:Ljava/lang/Exception;

    .line 91
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, nested:Ljava/lang/Exception;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, nested:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 124
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_8

    move-object v1, v0

    .line 132
    .end local v0    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    :goto_7
    return-object v1

    .line 127
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_8
    iget-object v2, p0, nested:Ljava/lang/Exception;

    if-eqz v2, :cond_1e

    .line 128
    iget-object v2, p0, nested:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 129
    if-nez v0, :cond_1e

    .line 130
    iget-object v2, p0, nested:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1e
    move-object v1, v0

    .line 132
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_7
.end method
