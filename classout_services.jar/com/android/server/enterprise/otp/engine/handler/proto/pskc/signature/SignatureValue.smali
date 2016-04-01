.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;
.super Ljava/lang/Object;
.source "SignatureValue.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mSignatureValue:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, mId:Ljava/lang/String;

    return-object v0
.end method

.method public getignatureValue()[B
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, mSignatureValue:[B

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, mId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setSignatureValue([B)V
    .registers 2
    .param p1, "mSignatureValue"    # [B

    .prologue
    .line 26
    iput-object p1, p0, mSignatureValue:[B

    .line 27
    return-void
.end method
