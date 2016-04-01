.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;
.super Ljava/lang/Object;
.source "TokenPlatformInfo.java"


# instance fields
.field private mAlgoLocation:Ljava/lang/String;

.field private mKeyLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgoLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, mAlgoLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, mKeyLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgoLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "mAlgoLocation"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, mAlgoLocation:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setKeyLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "mKeyLocation"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, mKeyLocation:Ljava/lang/String;

    .line 16
    return-void
.end method
