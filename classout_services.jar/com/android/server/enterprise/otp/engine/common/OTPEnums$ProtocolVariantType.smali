.class public final enum Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;
.super Ljava/lang/Enum;
.source "OTPEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/otp/engine/common/OTPEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtocolVariantType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

.field public static final enum FourPass:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

.field public static final enum TwoPass:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    const-string v1, "TwoPass"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, TwoPass:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    const-string v1, "FourPass"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, FourPass:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    sget-object v1, TwoPass:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    aput-object v1, v0, v2

    sget-object v1, FourPass:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const-class v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;
    .registers 1

    .prologue
    .line 127
    sget-object v0, $VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    return-object v0
.end method
