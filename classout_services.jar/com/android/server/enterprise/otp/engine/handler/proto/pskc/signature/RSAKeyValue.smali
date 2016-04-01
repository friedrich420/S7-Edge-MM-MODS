.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/RSAKeyValue;
.super Ljava/lang/Object;
.source "RSAKeyValue.java"


# instance fields
.field private mExponent:[B

.field private mModulus:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExponent()[B
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, mExponent:[B

    return-object v0
.end method

.method public getmModulus()[B
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, mModulus:[B

    return-object v0
.end method

.method public setExponent([B)V
    .registers 2
    .param p1, "mExponent"    # [B

    .prologue
    .line 21
    iput-object p1, p0, mExponent:[B

    .line 22
    return-void
.end method

.method public setModulus([B)V
    .registers 2
    .param p1, "mModulus"    # [B

    .prologue
    .line 13
    iput-object p1, p0, mModulus:[B

    .line 14
    return-void
.end method
