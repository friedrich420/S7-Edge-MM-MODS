.class synthetic Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$1;
.super Ljava/lang/Object;
.source "OTPExceptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 83
    invoke-static {}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->values()[Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    :try_start_9
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_SUCCESS:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_18b

    :goto_14
    :try_start_14
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_FILE_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_188

    :goto_1f
    :try_start_1f
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_FILE_READ_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_185

    :goto_2a
    :try_start_2a
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_FILE_WRITE_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_182

    :goto_35
    :try_start_35
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_FILE_DELETE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_17f

    :goto_40
    :try_start_40
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_NULL_POINTER:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_17c

    :goto_4b
    :try_start_4b
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_STRING_OPERATION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_179

    :goto_56
    :try_start_56
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_BOOT_MEASUREMENT_FILE_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_176

    :goto_62
    :try_start_62
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_173

    :goto_6e
    :try_start_6e
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_CLOSE_DEVICE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_170

    :goto_7a
    :try_start_7a
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_COMMUNICATE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_16d

    :goto_86
    :try_start_86
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_CLOSE_SESSION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_16a

    :goto_92
    :try_start_92
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_APP_ALREADY_LOADED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_167

    :goto_9e
    :try_start_9e
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_INVALID_MEMORY:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_164

    :goto_aa
    :try_start_aa
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_APP_NOT_FOUND:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_161

    :goto_b6
    :try_start_b6
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_MEMORY_UNAVAILABLE:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_15e

    :goto_c2
    :try_start_c2
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_BACKEND_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_15b

    :goto_ce
    :try_start_ce
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_BACKEND_CLOSE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_159

    :goto_da
    :try_start_da
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_INVALID_ARGUMENT:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_157

    :goto_e6
    :try_start_e6
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_SHARED_MEMORY_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_155

    :goto_f2
    :try_start_f2
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_COMMUNICATION_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_153

    :goto_fe
    :try_start_fe
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_KNOX_KEY_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_151

    :goto_10a
    :try_start_10a
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_BOOT_MEASUREMENT_CHECK_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_14f

    :goto_116
    :try_start_116
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_INVALID_NONCE:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_14d

    :goto_122
    :try_start_122
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_CERTIFICATE_NOT_SUPPORTED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_14b

    :goto_12e
    :try_start_12e
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_CERTIFICATE_GENERATION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_149

    :goto_13a
    :try_start_13a
    sget-object v0, $SwitchMap$com$android$server$enterprise$otp$exceptions$OTPExceptions$TlcErrors:[I

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_UNKNOWN_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_146} :catch_147

    :goto_146
    return-void

    :catch_147
    move-exception v0

    goto :goto_146

    :catch_149
    move-exception v0

    goto :goto_13a

    :catch_14b
    move-exception v0

    goto :goto_12e

    :catch_14d
    move-exception v0

    goto :goto_122

    :catch_14f
    move-exception v0

    goto :goto_116

    :catch_151
    move-exception v0

    goto :goto_10a

    :catch_153
    move-exception v0

    goto :goto_fe

    :catch_155
    move-exception v0

    goto :goto_f2

    :catch_157
    move-exception v0

    goto :goto_e6

    :catch_159
    move-exception v0

    goto :goto_da

    :catch_15b
    move-exception v0

    goto/16 :goto_ce

    :catch_15e
    move-exception v0

    goto/16 :goto_c2

    :catch_161
    move-exception v0

    goto/16 :goto_b6

    :catch_164
    move-exception v0

    goto/16 :goto_aa

    :catch_167
    move-exception v0

    goto/16 :goto_9e

    :catch_16a
    move-exception v0

    goto/16 :goto_92

    :catch_16d
    move-exception v0

    goto/16 :goto_86

    :catch_170
    move-exception v0

    goto/16 :goto_7a

    :catch_173
    move-exception v0

    goto/16 :goto_6e

    :catch_176
    move-exception v0

    goto/16 :goto_62

    :catch_179
    move-exception v0

    goto/16 :goto_56

    :catch_17c
    move-exception v0

    goto/16 :goto_4b

    :catch_17f
    move-exception v0

    goto/16 :goto_40

    :catch_182
    move-exception v0

    goto/16 :goto_35

    :catch_185
    move-exception v0

    goto/16 :goto_2a

    :catch_188
    move-exception v0

    goto/16 :goto_1f

    :catch_18b
    move-exception v0

    goto/16 :goto_14
.end method
