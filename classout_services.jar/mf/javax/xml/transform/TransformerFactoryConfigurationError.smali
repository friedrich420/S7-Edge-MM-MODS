.class public Lmf/javax/xml/transform/TransformerFactoryConfigurationError;
.super Ljava/lang/Error;
.source "TransformerFactoryConfigurationError.java"


# static fields
.field private static final serialVersionUID:J = -0x5a971d975393bcacL


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, exception:Ljava/lang/Exception;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, exception:Ljava/lang/Exception;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, exception:Ljava/lang/Exception;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, exception:Ljava/lang/Exception;

    .line 84
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 124
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_10

    iget-object v1, p0, exception:Ljava/lang/Exception;

    if-eqz v1, :cond_10

    .line 127
    iget-object v1, p0, exception:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 130
    .end local v0    # "message":Ljava/lang/String;
    :cond_10
    return-object v0
.end method
