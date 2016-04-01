.class public final enum Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
.super Ljava/lang/Enum;
.source "OTPEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/otp/engine/common/OTPEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum CR:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum DECRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum DERIVE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum ENCRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum GENERATE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum INTEGRITY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum KEYWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum OTP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum UNLOCK:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum UNWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum VERIFY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "OTP"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, OTP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "CR"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, CR:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "ENCRYPT"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, ENCRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "INTEGRITY"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, INTEGRITY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "VERIFY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, VERIFY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "UNLOCK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, UNLOCK:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "DECRYPT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, DECRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "KEYWRAP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, KEYWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "UNWRAP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, UNWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "DERIVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, DERIVE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string v1, "GENERATE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, GENERATE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    .line 33
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    sget-object v1, UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v1, v0, v3

    sget-object v1, OTP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v1, v0, v4

    sget-object v1, CR:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v1, v0, v5

    sget-object v1, ENCRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v1, v0, v6

    sget-object v1, INTEGRITY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, VERIFY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, UNLOCK:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, DECRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, KEYWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, UNWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, DERIVE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, GENERATE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
    .registers 1

    .prologue
    .line 33
    sget-object v0, $VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0
.end method
