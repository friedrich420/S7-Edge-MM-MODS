.class final enum Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;
.super Ljava/lang/Enum;
.source "OTPExceptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TlcErrors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_APP_ALREADY_LOADED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_APP_NOT_FOUND:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_BACKEND_CLOSE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_BACKEND_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_BOOT_MEASUREMENT_CHECK_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_BOOT_MEASUREMENT_FILE_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_CERTIFICATE_GENERATION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_CERTIFICATE_NOT_SUPPORTED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_CLOSE_DEVICE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_CLOSE_SESSION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_COMMUNICATE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_COMMUNICATION_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_FILE_DELETE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_FILE_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_FILE_READ_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_FILE_WRITE_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_INVALID_ARGUMENT:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_INVALID_MEMORY:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_INVALID_NONCE:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_KNOX_KEY_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_MEMORY_UNAVAILABLE:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_NULL_POINTER:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_SHARED_MEMORY_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_STRING_OPERATION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_SUCCESS:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

.field public static final enum TLC_OTP_UNKNOWN_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;


# instance fields
.field private final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_SUCCESS"

    invoke-direct {v0, v1, v4, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_SUCCESS:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 12
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_FILE_OPEN_FAILED"

    invoke-direct {v0, v1, v5, v5}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_FILE_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 13
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_FILE_READ_ERROR"

    invoke-direct {v0, v1, v6, v6}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_FILE_READ_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 14
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_FILE_WRITE_ERROR"

    invoke-direct {v0, v1, v7, v7}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_FILE_WRITE_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 15
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_FILE_DELETE_FAILED"

    invoke-direct {v0, v1, v8, v8}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_FILE_DELETE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 16
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_NULL_POINTER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_NULL_POINTER:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 17
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_STRING_OPERATION_FAILED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_STRING_OPERATION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 18
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_BOOT_MEASUREMENT_FILE_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_BOOT_MEASUREMENT_FILE_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 19
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_OPEN_FAILED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 20
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_CLOSE_DEVICE_FAILED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_CLOSE_DEVICE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 21
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_COMMUNICATE_FAILED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_COMMUNICATE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 22
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_CLOSE_SESSION_FAILED"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_CLOSE_SESSION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 23
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_APP_ALREADY_LOADED"

    const/16 v2, 0xc

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_APP_ALREADY_LOADED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 24
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_INVALID_MEMORY"

    const/16 v2, 0xd

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_INVALID_MEMORY:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 25
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_APP_NOT_FOUND"

    const/16 v2, 0xe

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_APP_NOT_FOUND:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 26
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_MEMORY_UNAVAILABLE"

    const/16 v2, 0xf

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_MEMORY_UNAVAILABLE:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 27
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_BACKEND_OPEN_FAILED"

    const/16 v2, 0x10

    const/16 v3, 0x36

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_BACKEND_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 28
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_BACKEND_CLOSE_FAILED"

    const/16 v2, 0x11

    const/16 v3, 0x37

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_BACKEND_CLOSE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 29
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_INVALID_ARGUMENT"

    const/16 v2, 0x12

    const/16 v3, 0x38

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_INVALID_ARGUMENT:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 30
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_SHARED_MEMORY_ERROR"

    const/16 v2, 0x13

    const/16 v3, 0x39

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_SHARED_MEMORY_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 31
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_COMMUNICATION_ERROR"

    const/16 v2, 0x14

    const/16 v3, 0x3a

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_COMMUNICATION_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 32
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_KNOX_KEY_ERROR"

    const/16 v2, 0x15

    const/16 v3, 0x3b

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_KNOX_KEY_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 33
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_BOOT_MEASUREMENT_CHECK_FAILED"

    const/16 v2, 0x16

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_BOOT_MEASUREMENT_CHECK_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 34
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_INVALID_NONCE"

    const/16 v2, 0x17

    const/16 v3, 0x3d

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_INVALID_NONCE:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 35
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_CERTIFICATE_NOT_SUPPORTED"

    const/16 v2, 0x18

    const/16 v3, 0x3e

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_CERTIFICATE_NOT_SUPPORTED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 36
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_CERTIFICATE_GENERATION_FAILED"

    const/16 v2, 0x19

    const/16 v3, 0x3f

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_CERTIFICATE_GENERATION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 40
    new-instance v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    const-string v1, "TLC_OTP_UNKNOWN_ERROR"

    const/16 v2, 0x1a

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, TLC_OTP_UNKNOWN_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    .line 10
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    sget-object v1, TLC_OTP_SUCCESS:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v1, v0, v4

    sget-object v1, TLC_OTP_FILE_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v1, v0, v5

    sget-object v1, TLC_OTP_FILE_READ_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v1, v0, v6

    sget-object v1, TLC_OTP_FILE_WRITE_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v1, v0, v7

    sget-object v1, TLC_OTP_FILE_DELETE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, TLC_OTP_NULL_POINTER:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, TLC_OTP_STRING_OPERATION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, TLC_OTP_BOOT_MEASUREMENT_FILE_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, TLC_OTP_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, TLC_OTP_CLOSE_DEVICE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, TLC_OTP_COMMUNICATE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, TLC_OTP_CLOSE_SESSION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, TLC_OTP_APP_ALREADY_LOADED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, TLC_OTP_INVALID_MEMORY:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, TLC_OTP_APP_NOT_FOUND:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, TLC_OTP_MEMORY_UNAVAILABLE:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, TLC_OTP_BACKEND_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, TLC_OTP_BACKEND_CLOSE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, TLC_OTP_INVALID_ARGUMENT:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, TLC_OTP_SHARED_MEMORY_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, TLC_OTP_COMMUNICATION_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, TLC_OTP_KNOX_KEY_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, TLC_OTP_BOOT_MEASUREMENT_CHECK_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, TLC_OTP_INVALID_NONCE:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, TLC_OTP_CERTIFICATE_NOT_SUPPORTED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, TLC_OTP_CERTIFICATE_GENERATION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, TLC_OTP_UNKNOWN_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, errorCode:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;
    .registers 1

    .prologue
    .line 10
    sget-object v0, $VALUES:[Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, errorCode:I

    return v0
.end method
