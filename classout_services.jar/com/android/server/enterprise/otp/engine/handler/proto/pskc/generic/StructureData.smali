.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
.super Ljava/lang/Object;
.source "StructureData.java"


# instance fields
.field mEncryptedValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

.field mPlainValue:Ljava/lang/String;

.field mValueMac:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, mEncryptedValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    return-object v0
.end method

.method public getPlainValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, mPlainValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueMAC()[B
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, mValueMac:[B

    return-object v0
.end method

.method public setEncryptedValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;)V
    .registers 2
    .param p1, "encryptedValue"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    .prologue
    .line 33
    iput-object p1, p0, mEncryptedValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    .line 34
    return-void
.end method

.method public setPlainValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "plainValue"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, mPlainValue:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setValueMAC(Ljava/lang/String;)V
    .registers 3
    .param p1, "valueMAC"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, mValueMac:[B

    .line 42
    return-void
.end method
