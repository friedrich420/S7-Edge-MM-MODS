.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptionProperty;
.super Ljava/lang/Object;
.source "EncryptionProperty.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mId"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, mId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 2
    .param p1, "mTarget"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, mTarget:Ljava/lang/String;

    .line 14
    return-void
.end method
