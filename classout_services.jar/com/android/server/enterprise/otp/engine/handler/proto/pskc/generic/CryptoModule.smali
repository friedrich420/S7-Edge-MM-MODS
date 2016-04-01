.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;
.super Ljava/lang/Object;
.source "CryptoModule.java"


# instance fields
.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, mId:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, mId:Ljava/lang/String;

    .line 19
    return-void
.end method
