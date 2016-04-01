.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
.super Ljava/lang/Object;
.source "DerivedKey.java"


# instance fields
.field private mKeyDerivationMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .registers 2

    .prologue
    .line 7
    iget-object v0, p0, mKeyDerivationMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    return-object v0
.end method

.method public setKeyDerivationMethod(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;)V
    .registers 2
    .param p1, "mKeyDerivationMethod"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    .prologue
    .line 11
    iput-object p1, p0, mKeyDerivationMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    .line 12
    return-void
.end method
