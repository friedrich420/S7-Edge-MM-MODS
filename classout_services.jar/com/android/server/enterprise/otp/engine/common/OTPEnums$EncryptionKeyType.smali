.class public final enum Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;
.super Ljava/lang/Enum;
.source "OTPEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/otp/engine/common/OTPEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionKeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

.field public static final enum ASYMMETRIC:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

.field public static final enum PASS_PHRASE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

.field public static final enum PRE_SHARED:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

.field public static final enum UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    const-string v1, "PRE_SHARED"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, PRE_SHARED:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    const-string v1, "PASS_PHRASE"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, PASS_PHRASE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    const-string v1, "ASYMMETRIC"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, ASYMMETRIC:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    sget-object v1, UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    aput-object v1, v0, v2

    sget-object v1, PRE_SHARED:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    aput-object v1, v0, v3

    sget-object v1, PASS_PHRASE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    aput-object v1, v0, v4

    sget-object v1, ASYMMETRIC:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    aput-object v1, v0, v5

    sput-object v0, $VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    const-class v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;
    .registers 1

    .prologue
    .line 122
    sget-object v0, $VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-object v0
.end method
