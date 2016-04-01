.class public Lcom/sec/epdg/IWlanError;
.super Ljava/lang/Object;
.source "IWlanError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IWlanError$IkeError;,
        Lcom/sec/epdg/IWlanError$EpdgError;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[IWlanError]"


# instance fields
.field private mDetails:Ljava/lang/String;

.field private mError:Lcom/sec/epdg/IWlanError$EpdgError;

.field private mIkeError:Lcom/sec/epdg/IWlanError$IkeError;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Lcom/sec/epdg/IWlanError$EpdgError;
    .param p2, "details"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;Lcom/sec/epdg/IWlanError$IkeError;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;Lcom/sec/epdg/IWlanError$IkeError;)V
    .registers 6
    .param p1, "error"    # Lcom/sec/epdg/IWlanError$EpdgError;
    .param p2, "details"    # Ljava/lang/String;
    .param p3, "ikeError"    # Lcom/sec/epdg/IWlanError$IkeError;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, mError:Lcom/sec/epdg/IWlanError$EpdgError;

    .line 69
    iput-object p2, p0, mDetails:Ljava/lang/String;

    .line 70
    iget-object v0, p0, mError:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-eq v0, v1, :cond_17

    if-eqz p3, :cond_17

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ike error code should be passed only if error type is IKE_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_17
    iget-object v0, p0, mError:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-ne v0, v1, :cond_27

    if-nez p3, :cond_27

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ike error code not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_27
    iput-object p3, p0, mIkeError:Lcom/sec/epdg/IWlanError$IkeError;

    .line 77
    return-void
.end method


# virtual methods
.method public getDetails()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, mDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/sec/epdg/IWlanError$EpdgError;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, mError:Lcom/sec/epdg/IWlanError$EpdgError;

    return-object v0
.end method

.method public getIkeError()Lcom/sec/epdg/IWlanError$IkeError;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, mIkeError:Lcom/sec/epdg/IWlanError$IkeError;

    return-object v0
.end method
