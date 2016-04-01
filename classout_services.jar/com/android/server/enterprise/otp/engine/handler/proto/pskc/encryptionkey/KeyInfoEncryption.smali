.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
.super Ljava/lang/Object;
.source "KeyInfoEncryption.java"


# instance fields
.field private encryptionKeyType:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

.field private mDerivedKey:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

.field private mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDerivedKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, mDerivedKey:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    return-object v0
.end method

.method public getEncryptionKeyType()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, encryptionKeyType:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-object v0
.end method

.method public getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    return-object v0
.end method

.method public setDerivedKey(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;)V
    .registers 2
    .param p1, "mDerivedKey"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    .prologue
    .line 26
    iput-object p1, p0, mDerivedKey:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    .line 27
    return-void
.end method

.method public setEncryptionKeyType(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V
    .registers 2
    .param p1, "encryptionKeyType"    # Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    .prologue
    .line 34
    iput-object p1, p0, encryptionKeyType:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    .line 35
    return-void
.end method

.method public setX509Data(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;)V
    .registers 2
    .param p1, "mX509Data"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    .prologue
    .line 18
    iput-object p1, p0, mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    .line 19
    return-void
.end method
