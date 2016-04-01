.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static NUM_SIGNAL_STRENGTH_BINS:I = 0x0

.field private static final RSRP_THRESH_CHINA:[I

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static mConfigNetworkTypeCapability:Ljava/lang/String;


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mSignalBar:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 57
    invoke-static {}, InitializeSignalBins()I

    move-result v0

    sput v0, NUM_SIGNAL_STRENGTH_BINS:I

    .line 59
    invoke-static {}, InitializeSignalNames()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_36

    sput-object v0, RSRP_THRESH_STRICT:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_46

    sput-object v0, RSRP_THRESH_LENIENT:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_56

    sput-object v0, RSRP_THRESH_CHINA:[I

    .line 96
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 481
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 67
    :array_36
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 68
    :array_46
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data

    .line 70
    :array_56
    .array-data 4
        -0x8c
        -0x7b
        -0x76
        -0x72
        -0x69
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput v2, p0, mGsmSignalStrength:I

    .line 165
    iput v0, p0, mGsmBitErrorRate:I

    .line 166
    iput v0, p0, mCdmaDbm:I

    .line 167
    iput v0, p0, mCdmaEcio:I

    .line 168
    iput v0, p0, mEvdoDbm:I

    .line 169
    iput v0, p0, mEvdoEcio:I

    .line 170
    iput v0, p0, mEvdoSnr:I

    .line 171
    iput v2, p0, mLteSignalStrength:I

    .line 172
    iput v1, p0, mLteRsrp:I

    .line 173
    iput v1, p0, mLteRsrq:I

    .line 174
    iput v1, p0, mLteRssnr:I

    .line 175
    iput v1, p0, mLteCqi:I

    .line 176
    iput v1, p0, mTdScdmaRscp:I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, isGsm:Z

    .line 179
    const/4 v0, 0x0

    iput v0, p0, mSignalBar:I

    .line 181
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .registers 30
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 221
    invoke-virtual/range {v1 .. v14}, initialize(IIIIIIIIIIIIZ)V

    .line 224
    move/from16 v0, p13

    iput v0, p0, mTdScdmaRscp:I

    .line 225
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZI)V
    .registers 31
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z
    .param p15, "signalBar"    # I

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 269
    invoke-virtual/range {v1 .. v14}, initialize(IIIIIIIIIIIIZ)V

    .line 272
    move/from16 v0, p13

    iput v0, p0, mTdScdmaRscp:I

    .line 273
    move/from16 v0, p15

    iput v0, p0, mSignalBar:I

    .line 274
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .registers 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-virtual/range {p0 .. p13}, initialize(IIIIIIIIIIIIZ)V

    .line 240
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZI)V
    .registers 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "signalBar"    # I

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-virtual/range {p0 .. p13}, initialize(IIIIIIIIIIIIZ)V

    .line 256
    iput p14, p0, mSignalBar:I

    .line 257
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .registers 23
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, initialize(IIIIIIIIIIIIZ)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mGsmSignalStrength:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mGsmBitErrorRate:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCdmaDbm:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCdmaEcio:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mEvdoDbm:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mEvdoEcio:I

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mEvdoSnr:I

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLteSignalStrength:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLteRsrp:I

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLteRsrq:I

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLteRssnr:I

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLteCqi:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mTdScdmaRscp:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x1

    :goto_58
    iput-boolean v0, p0, isGsm:Z

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mSignalBar:I

    .line 417
    return-void

    .line 413
    :cond_61
    const/4 v0, 0x0

    goto :goto_58
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    invoke-virtual {p0, p1}, copyFrom(Landroid/telephony/SignalStrength;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput v2, p0, mGsmSignalStrength:I

    .line 193
    iput v0, p0, mGsmBitErrorRate:I

    .line 194
    iput v0, p0, mCdmaDbm:I

    .line 195
    iput v0, p0, mCdmaEcio:I

    .line 196
    iput v0, p0, mEvdoDbm:I

    .line 197
    iput v0, p0, mEvdoEcio:I

    .line 198
    iput v0, p0, mEvdoSnr:I

    .line 199
    iput v2, p0, mLteSignalStrength:I

    .line 200
    iput v1, p0, mLteRsrp:I

    .line 201
    iput v1, p0, mLteRsrq:I

    .line 202
    iput v1, p0, mLteRssnr:I

    .line 203
    iput v1, p0, mLteCqi:I

    .line 204
    iput v1, p0, mTdScdmaRscp:I

    .line 205
    iput-boolean p1, p0, isGsm:Z

    .line 207
    const/4 v0, 0x0

    iput v0, p0, mSignalBar:I

    .line 209
    return-void
.end method

.method private static InitializeSignalBins()I
    .registers 4

    .prologue
    .line 119
    const/4 v0, 0x5

    .line 120
    .local v0, "maxRSSI":I
    const-string v1, "1"

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "1"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 122
    :cond_1d
    const/4 v0, 0x6

    .line 124
    :cond_1e
    return v0
.end method

.method private static InitializeSignalNames()[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    const-string v2, "1"

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "1"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 130
    :cond_21
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "none"

    aput-object v2, v1, v5

    const-string/jumbo v2, "poor"

    aput-object v2, v1, v6

    const-string/jumbo v2, "moderate"

    aput-object v2, v1, v7

    const-string v2, "good"

    aput-object v2, v1, v8

    const-string v2, "great"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "excellent"

    aput-object v3, v1, v2

    .local v1, "vzwName":[Ljava/lang/String;
    move-object v0, v1

    .line 134
    .end local v1    # "vzwName":[Ljava/lang/String;
    :goto_41
    return-object v0

    .line 133
    :cond_42
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "none"

    aput-object v2, v0, v5

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v6

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v7

    const-string v2, "good"

    aput-object v2, v0, v8

    const-string v2, "great"

    aput-object v2, v0, v9

    .line 134
    .local v0, "defaultName":[Ljava/lang/String;
    goto :goto_41
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1449
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 429
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, <init>()V

    .line 430
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mGsmSignalStrength:I

    .line 431
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mGsmBitErrorRate:I

    .line 432
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mCdmaDbm:I

    .line 433
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mCdmaEcio:I

    .line 434
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mEvdoDbm:I

    .line 435
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mEvdoEcio:I

    .line 436
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mEvdoSnr:I

    .line 437
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mLteSignalStrength:I

    .line 438
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mLteRsrp:I

    .line 439
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mLteRsrq:I

    .line 440
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mLteRssnr:I

    .line 441
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mLteCqi:I

    .line 442
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, mTdScdmaRscp:I

    .line 443
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .registers 2
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 112
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, <init>()V

    .line 113
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 114
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1400
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mGsmSignalStrength:I

    .line 1401
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mGsmBitErrorRate:I

    .line 1402
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mCdmaDbm:I

    .line 1403
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mCdmaEcio:I

    .line 1404
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mEvdoDbm:I

    .line 1405
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mEvdoEcio:I

    .line 1406
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mEvdoSnr:I

    .line 1407
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mLteSignalStrength:I

    .line 1408
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mLteRsrp:I

    .line 1409
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mLteRsrq:I

    .line 1410
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mLteRssnr:I

    .line 1411
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mLteCqi:I

    .line 1412
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mTdScdmaRscp:I

    .line 1413
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, isGsm:Z

    .line 1415
    const-string v0, "SignalBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mSignalBar:I

    .line 1417
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 373
    iget v0, p1, mGsmSignalStrength:I

    iput v0, p0, mGsmSignalStrength:I

    .line 374
    iget v0, p1, mGsmBitErrorRate:I

    iput v0, p0, mGsmBitErrorRate:I

    .line 375
    iget v0, p1, mCdmaDbm:I

    iput v0, p0, mCdmaDbm:I

    .line 376
    iget v0, p1, mCdmaEcio:I

    iput v0, p0, mCdmaEcio:I

    .line 377
    iget v0, p1, mEvdoDbm:I

    iput v0, p0, mEvdoDbm:I

    .line 378
    iget v0, p1, mEvdoEcio:I

    iput v0, p0, mEvdoEcio:I

    .line 379
    iget v0, p1, mEvdoSnr:I

    iput v0, p0, mEvdoSnr:I

    .line 380
    iget v0, p1, mLteSignalStrength:I

    iput v0, p0, mLteSignalStrength:I

    .line 381
    iget v0, p1, mLteRsrp:I

    iput v0, p0, mLteRsrp:I

    .line 382
    iget v0, p1, mLteRsrq:I

    iput v0, p0, mLteRsrq:I

    .line 383
    iget v0, p1, mLteRssnr:I

    iput v0, p0, mLteRssnr:I

    .line 384
    iget v0, p1, mLteCqi:I

    iput v0, p0, mLteCqi:I

    .line 385
    iget v0, p1, mTdScdmaRscp:I

    iput v0, p0, mTdScdmaRscp:I

    .line 386
    iget-boolean v0, p1, isGsm:Z

    iput-boolean v0, p0, isGsm:Z

    .line 388
    iget v0, p1, mSignalBar:I

    iput v0, p0, mSignalBar:I

    .line 390
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1340
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    .line 1345
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_a

    .line 1349
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_7
    :goto_7
    return v3

    .line 1341
    :catch_8
    move-exception v1

    .line 1342
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_7

    .line 1349
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_a
    iget v4, p0, mGsmSignalStrength:I

    iget v5, v2, mGsmSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mGsmBitErrorRate:I

    iget v5, v2, mGsmBitErrorRate:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mCdmaDbm:I

    iget v5, v2, mCdmaDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mCdmaEcio:I

    iget v5, v2, mCdmaEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mEvdoDbm:I

    iget v5, v2, mEvdoDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mEvdoEcio:I

    iget v5, v2, mEvdoEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mEvdoSnr:I

    iget v5, v2, mEvdoSnr:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mLteSignalStrength:I

    iget v5, v2, mLteSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mLteRsrp:I

    iget v5, v2, mLteRsrp:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mLteRsrq:I

    iget v5, v2, mLteRsrq:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mLteRssnr:I

    iget v5, v2, mLteRssnr:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mLteCqi:I

    iget v5, v2, mLteCqi:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mTdScdmaRscp:I

    iget v5, v2, mTdScdmaRscp:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mSignalBar:I

    iget v5, v2, mSignalBar:I

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, isGsm:Z

    iget-boolean v5, v2, isGsm:Z

    if-ne v4, v5, :cond_7

    const/4 v3, 0x1

    goto :goto_7
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1426
    const-string v0, "GsmSignalStrength"

    iget v1, p0, mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1427
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1428
    const-string v0, "CdmaDbm"

    iget v1, p0, mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1429
    const-string v0, "CdmaEcio"

    iget v1, p0, mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1430
    const-string v0, "EvdoDbm"

    iget v1, p0, mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1431
    const-string v0, "EvdoEcio"

    iget v1, p0, mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1432
    const-string v0, "EvdoSnr"

    iget v1, p0, mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1433
    const-string v0, "LteSignalStrength"

    iget v1, p0, mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1434
    const-string v0, "LteRsrp"

    iget v1, p0, mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1435
    const-string v0, "LteRsrq"

    iget v1, p0, mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1436
    const-string v0, "LteRssnr"

    iget v1, p0, mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1437
    const-string v0, "LteCqi"

    iget v1, p0, mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1438
    const-string v0, "TdScdma"

    iget v1, p0, mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1439
    const-string v0, "isGsm"

    iget-boolean v1, p0, isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1441
    const-string v0, "SignalBar"

    iget v1, p0, mSignalBar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1443
    return-void
.end method

.method public getAlternateLteLevel()I
    .registers 4

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, "rsrpIconLevel":I
    iget v1, p0, mLteRsrp:I

    const/16 v2, -0x2c

    if-le v1, v2, :cond_9

    const/4 v0, -0x1

    .line 679
    :cond_8
    :goto_8
    return v0

    .line 673
    :cond_9
    iget v1, p0, mLteRsrp:I

    const/16 v2, -0x61

    if-lt v1, v2, :cond_11

    const/4 v0, 0x4

    goto :goto_8

    .line 674
    :cond_11
    iget v1, p0, mLteRsrp:I

    const/16 v2, -0x69

    if-lt v1, v2, :cond_19

    const/4 v0, 0x3

    goto :goto_8

    .line 675
    :cond_19
    iget v1, p0, mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_21

    const/4 v0, 0x2

    goto :goto_8

    .line 676
    :cond_21
    iget v1, p0, mLteRsrp:I

    const/16 v2, -0x78

    if-lt v1, v2, :cond_29

    const/4 v0, 0x1

    goto :goto_8

    .line 677
    :cond_29
    iget v1, p0, mLteRsrp:I

    const/16 v2, -0x8c

    if-lt v1, v2, :cond_8

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getAsuLevel()I
    .registers 6

    .prologue
    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "asuLevel":I
    iget-boolean v3, p0, isGsm:Z

    if-eqz v3, :cond_29

    .line 790
    invoke-virtual {p0}, getLteLevel()I

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {p0}, getLteDbm()I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_24

    .line 792
    invoke-virtual {p0}, getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_1f

    .line 793
    invoke-virtual {p0}, getGsmAsuLevel()I

    move-result v0

    .line 826
    :cond_1e
    :goto_1e
    return v0

    .line 795
    :cond_1f
    invoke-virtual {p0}, getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_1e

    .line 798
    :cond_24
    invoke-virtual {p0}, getLteAsuLevel()I

    move-result v0

    goto :goto_1e

    .line 801
    :cond_29
    invoke-virtual {p0}, getCdmaAsuLevel()I

    move-result v1

    .line 802
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, getEvdoAsuLevel()I

    move-result v2

    .line 803
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_35

    .line 805
    move v0, v1

    goto :goto_1e

    .line 806
    :cond_35
    if-nez v1, :cond_39

    .line 808
    move v0, v2

    goto :goto_1e

    .line 811
    :cond_39
    if-ge v1, v2, :cond_5b

    move v0, v1

    .line 813
    :goto_3c
    sget-object v3, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_4b

    sget-object v3, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "VZW-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 814
    move v0, v2

    .line 816
    :cond_4b
    sget-object v3, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_1e

    sget-object v3, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "USC-USC-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 820
    move v0, v1

    goto :goto_1e

    :cond_5b
    move v0, v2

    .line 811
    goto :goto_3c
.end method

.method public getCdmaAsuLevel()I
    .registers 9

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 1003
    invoke-virtual {p0}, getCdmaDbm()I

    move-result v1

    .line 1004
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, getCdmaEcio()I

    move-result v2

    .line 1008
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_1a

    const/16 v0, 0x10

    .line 1016
    .local v0, "cdmaAsuLevel":I
    :goto_12
    if-lt v2, v7, :cond_32

    const/16 v3, 0x10

    .line 1023
    .local v3, "ecioAsuLevel":I
    :goto_16
    if-ge v0, v3, :cond_4c

    move v4, v0

    .line 1025
    .local v4, "level":I
    :goto_19
    return v4

    .line 1009
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_1a
    const/16 v5, -0x52

    if-lt v1, v5, :cond_21

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 1010
    .end local v0    # "cdmaAsuLevel":I
    :cond_21
    if-lt v1, v7, :cond_25

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 1011
    .end local v0    # "cdmaAsuLevel":I
    :cond_25
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_2b

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 1012
    .end local v0    # "cdmaAsuLevel":I
    :cond_2b
    if-lt v1, v6, :cond_2f

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 1013
    .end local v0    # "cdmaAsuLevel":I
    :cond_2f
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 1017
    :cond_32
    if-lt v2, v6, :cond_37

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 1018
    .end local v3    # "ecioAsuLevel":I
    :cond_37
    const/16 v5, -0x73

    if-lt v2, v5, :cond_3d

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 1019
    .end local v3    # "ecioAsuLevel":I
    :cond_3d
    const/16 v5, -0x82

    if-lt v2, v5, :cond_43

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 1020
    .end local v3    # "ecioAsuLevel":I
    :cond_43
    const/16 v5, -0x96

    if-lt v2, v5, :cond_49

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 1021
    .end local v3    # "ecioAsuLevel":I
    :cond_49
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    :cond_4c
    move v4, v3

    .line 1023
    goto :goto_19
.end method

.method public getCdmaDbm()I
    .registers 2

    .prologue
    .line 578
    iget v0, p0, mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .registers 2

    .prologue
    .line 585
    iget v0, p0, mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .registers 10

    .prologue
    const/16 v8, -0x55

    const/16 v7, -0x5f

    .line 946
    invoke-virtual {p0}, getCdmaDbm()I

    move-result v0

    .line 947
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, getCdmaEcio()I

    move-result v1

    .line 951
    .local v1, "cdmaEcio":I
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 955
    :cond_33
    if-lt v0, v8, :cond_a5

    const/4 v3, 0x4

    .line 970
    .local v3, "levelDbm":I
    :goto_36
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_d2

    const/4 v4, 0x4

    .line 976
    .local v4, "levelEcio":I
    :goto_3b
    if-ge v3, v4, :cond_ea

    move v2, v3

    .line 977
    .local v2, "level":I
    :goto_3e
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_65

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 981
    :cond_65
    if-le v3, v4, :cond_ed

    move v2, v3

    .line 985
    :cond_68
    :goto_68
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_80

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    :cond_80
    const-string v5, "5"

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a4

    const-string v5, "5"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a4

    .line 990
    :cond_9c
    invoke-virtual {p0}, getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v2, v5, 0x4

    .line 994
    :cond_a4
    return v2

    .line 956
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_a5
    if-lt v0, v7, :cond_a9

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_36

    .line 957
    .end local v3    # "levelDbm":I
    :cond_a9
    const/16 v5, -0x66

    if-lt v0, v5, :cond_af

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_36

    .line 958
    .end local v3    # "levelDbm":I
    :cond_af
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_b5

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_36

    .line 959
    .end local v3    # "levelDbm":I
    :cond_b5
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_36

    .line 962
    .end local v3    # "levelDbm":I
    :cond_b7
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_be

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto/16 :goto_36

    .line 963
    .end local v3    # "levelDbm":I
    :cond_be
    if-lt v0, v8, :cond_c3

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto/16 :goto_36

    .line 964
    .end local v3    # "levelDbm":I
    :cond_c3
    if-lt v0, v7, :cond_c8

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto/16 :goto_36

    .line 965
    .end local v3    # "levelDbm":I
    :cond_c8
    const/16 v5, -0x64

    if-lt v0, v5, :cond_cf

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto/16 :goto_36

    .line 966
    .end local v3    # "levelDbm":I
    :cond_cf
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto/16 :goto_36

    .line 971
    :cond_d2
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_d9

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto/16 :goto_3b

    .line 972
    .end local v4    # "levelEcio":I
    :cond_d9
    const/16 v5, -0x82

    if-lt v1, v5, :cond_e0

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto/16 :goto_3b

    .line 973
    .end local v4    # "levelEcio":I
    :cond_e0
    const/16 v5, -0x96

    if-lt v1, v5, :cond_e7

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto/16 :goto_3b

    .line 974
    .end local v4    # "levelEcio":I
    :cond_e7
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto/16 :goto_3b

    :cond_ea
    move v2, v4

    .line 976
    goto/16 :goto_3e

    .restart local v2    # "level":I
    :cond_ed
    move v2, v4

    .line 981
    goto/16 :goto_68
.end method

.method public getDbm()I
    .registers 7

    .prologue
    const/16 v5, -0x78

    .line 835
    const v1, 0x7fffffff

    .line 837
    .local v1, "dBm":I
    invoke-virtual {p0}, isGsm()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 838
    invoke-virtual {p0}, getLteDbm()I

    move-result v1

    .line 839
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_1e

    .line 840
    invoke-virtual {p0}, getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_20

    .line 841
    invoke-virtual {p0}, getGsmDbm()I

    move-result v1

    :cond_1e
    :goto_1e
    move v0, v1

    .line 865
    :cond_1f
    :goto_1f
    return v0

    .line 843
    :cond_20
    invoke-virtual {p0}, getTdScdmaDbm()I

    move-result v1

    goto :goto_1e

    .line 847
    :cond_25
    invoke-virtual {p0}, getCdmaDbm()I

    move-result v0

    .line 848
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, getEvdoDbm()I

    move-result v2

    .line 850
    .local v2, "evdoDbm":I
    sget-object v3, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_3f

    sget-object v3, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "VZW-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 851
    if-eq v2, v5, :cond_1f

    move v0, v2

    goto :goto_1f

    .line 853
    :cond_3f
    sget-object v3, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_53

    sget-object v3, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "USC-USC-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 857
    if-ne v0, v5, :cond_51

    .end local v2    # "evdoDbm":I
    :goto_4f
    move v0, v2

    goto :goto_1f

    .restart local v2    # "evdoDbm":I
    :cond_51
    move v2, v0

    goto :goto_4f

    .line 861
    :cond_53
    if-eq v2, v5, :cond_1f

    if-ne v0, v5, :cond_59

    move v0, v2

    goto :goto_1f

    :cond_59
    if-lt v0, v2, :cond_1f

    move v0, v2

    goto :goto_1f
.end method

.method public getEvdoAsuLevel()I
    .registers 7

    .prologue
    .line 1090
    invoke-virtual {p0}, getEvdoDbm()I

    move-result v0

    .line 1091
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, getEvdoSnr()I

    move-result v1

    .line 1095
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_17

    const/16 v3, 0x10

    .line 1102
    .local v3, "levelEvdoDbm":I
    :goto_e
    const/4 v5, 0x7

    if-lt v1, v5, :cond_33

    const/16 v4, 0x10

    .line 1109
    .local v4, "levelEvdoSnr":I
    :goto_13
    if-ge v3, v4, :cond_4b

    move v2, v3

    .line 1111
    .local v2, "level":I
    :goto_16
    return v2

    .line 1096
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_17
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1e

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 1097
    .end local v3    # "levelEvdoDbm":I
    :cond_1e
    const/16 v5, -0x55

    if-lt v0, v5, :cond_24

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 1098
    .end local v3    # "levelEvdoDbm":I
    :cond_24
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2a

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 1099
    .end local v3    # "levelEvdoDbm":I
    :cond_2a
    const/16 v5, -0x69

    if-lt v0, v5, :cond_30

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 1100
    .end local v3    # "levelEvdoDbm":I
    :cond_30
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 1103
    :cond_33
    const/4 v5, 0x6

    if-lt v1, v5, :cond_39

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 1104
    .end local v4    # "levelEvdoSnr":I
    :cond_39
    const/4 v5, 0x5

    if-lt v1, v5, :cond_3e

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 1105
    .end local v4    # "levelEvdoSnr":I
    :cond_3e
    const/4 v5, 0x3

    if-lt v1, v5, :cond_43

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 1106
    .end local v4    # "levelEvdoSnr":I
    :cond_43
    const/4 v5, 0x1

    if-lt v1, v5, :cond_48

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 1107
    .end local v4    # "levelEvdoSnr":I
    :cond_48
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    :cond_4b
    move v2, v4

    .line 1109
    goto :goto_16
.end method

.method public getEvdoDbm()I
    .registers 2

    .prologue
    .line 592
    iget v0, p0, mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .registers 2

    .prologue
    .line 599
    iget v0, p0, mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .registers 9

    .prologue
    .line 1034
    invoke-virtual {p0}, getEvdoDbm()I

    move-result v0

    .line 1035
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, getEvdoSnr()I

    move-result v1

    .line 1039
    .local v1, "evdoSnr":I
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 1043
    :cond_2f
    const/16 v5, -0x55

    if-lt v0, v5, :cond_a2

    const/4 v3, 0x4

    .line 1057
    .local v3, "levelEvdoDbm":I
    :goto_34
    const/4 v5, 0x7

    if-lt v1, v5, :cond_d6

    const/4 v4, 0x4

    .line 1063
    .local v4, "levelEvdoSnr":I
    :goto_38
    if-ge v3, v4, :cond_eb

    move v2, v3

    .line 1064
    .local v2, "level":I
    :goto_3b
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_62

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 1068
    :cond_62
    if-le v3, v4, :cond_ee

    move v2, v3

    .line 1072
    :cond_65
    :goto_65
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    :cond_7d
    const-string v5, "5"

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    const-string v5, "5"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 1077
    :cond_99
    invoke-virtual {p0}, getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf00

    shr-int/lit8 v2, v5, 0x8

    .line 1081
    :cond_a1
    return v2

    .line 1044
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_a2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_a8

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_34

    .line 1045
    .end local v3    # "levelEvdoDbm":I
    :cond_a8
    const/16 v5, -0x66

    if-lt v0, v5, :cond_ae

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_34

    .line 1046
    .end local v3    # "levelEvdoDbm":I
    :cond_ae
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_b4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_34

    .line 1047
    .end local v3    # "levelEvdoDbm":I
    :cond_b4
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_34

    .line 1050
    .end local v3    # "levelEvdoDbm":I
    :cond_b7
    const/16 v5, -0x41

    if-lt v0, v5, :cond_be

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_34

    .line 1051
    .end local v3    # "levelEvdoDbm":I
    :cond_be
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_c5

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_34

    .line 1052
    .end local v3    # "levelEvdoDbm":I
    :cond_c5
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_cc

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_34

    .line 1053
    .end local v3    # "levelEvdoDbm":I
    :cond_cc
    const/16 v5, -0x69

    if-lt v0, v5, :cond_d3

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_34

    .line 1054
    .end local v3    # "levelEvdoDbm":I
    :cond_d3
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto/16 :goto_34

    .line 1058
    :cond_d6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_dc

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_38

    .line 1059
    .end local v4    # "levelEvdoSnr":I
    :cond_dc
    const/4 v5, 0x3

    if-lt v1, v5, :cond_e2

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_38

    .line 1060
    .end local v4    # "levelEvdoSnr":I
    :cond_e2
    const/4 v5, 0x1

    if-lt v1, v5, :cond_e8

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_38

    .line 1061
    .end local v4    # "levelEvdoSnr":I
    :cond_e8
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_38

    :cond_eb
    move v2, v4

    .line 1063
    goto/16 :goto_3b

    .restart local v2    # "level":I
    :cond_ee
    move v2, v4

    .line 1068
    goto/16 :goto_65
.end method

.method public getEvdoSnr()I
    .registers 2

    .prologue
    .line 606
    iget v0, p0, mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .registers 2

    .prologue
    .line 935
    invoke-virtual {p0}, getGsmSignalStrength()I

    move-result v0

    .line 937
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .registers 2

    .prologue
    .line 571
    iget v0, p0, mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 876
    invoke-virtual {p0}, getGsmSignalStrength()I

    move-result v2

    .line 877
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_11

    move v0, v3

    .line 878
    .local v0, "asu":I
    :goto_a
    if-eq v0, v3, :cond_13

    .line 879
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 884
    .local v1, "dBm":I
    :goto_10
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_11
    move v0, v2

    .line 877
    goto :goto_a

    .line 881
    .restart local v0    # "asu":I
    :cond_13
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_10
.end method

.method public getGsmLevel()I
    .registers 4

    .prologue
    .line 899
    invoke-virtual {p0}, getGsmSignalStrength()I

    move-result v0

    .line 900
    .local v0, "asu":I
    const/4 v2, 0x2

    if-le v0, v2, :cond_b

    const/16 v2, 0x63

    if-ne v0, v2, :cond_19

    :cond_b
    const/4 v1, 0x0

    .line 906
    .local v1, "level":I
    :goto_c
    invoke-virtual {p0}, isCdmaRatOnAllRatSupport()Z

    move-result v2

    if-nez v2, :cond_18

    .line 907
    invoke-virtual {p0}, getSignalBar()I

    move-result v2

    and-int/lit8 v1, v2, 0xf

    .line 912
    :cond_18
    return v1

    .line 901
    .end local v1    # "level":I
    :cond_19
    const/16 v2, 0xc

    if-lt v0, v2, :cond_1f

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_c

    .line 902
    .end local v1    # "level":I
    :cond_1f
    const/16 v2, 0x8

    if-lt v0, v2, :cond_25

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_c

    .line 903
    .end local v1    # "level":I
    :cond_25
    const/4 v2, 0x5

    if-lt v0, v2, :cond_2a

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_c

    .line 904
    .end local v1    # "level":I
    :cond_2a
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_c
.end method

.method public getGsmSignalBar()I
    .registers 2

    .prologue
    .line 778
    invoke-virtual {p0}, getSignalBar()I

    move-result v0

    return v0
.end method

.method public getGsmSignalStrength()I
    .registers 2

    .prologue
    .line 564
    iget v0, p0, mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .registers 9

    .prologue
    const/4 v7, 0x2

    .line 691
    const/4 v4, 0x0

    .line 693
    .local v4, "level":I
    iget-boolean v5, p0, isGsm:Z

    if-eqz v5, :cond_4c

    .line 694
    invoke-virtual {p0}, getLteLevel()I

    move-result v4

    .line 695
    if-nez v4, :cond_16

    .line 696
    invoke-virtual {p0}, getTdScdmaLevel()I

    move-result v4

    .line 697
    if-nez v4, :cond_16

    .line 698
    invoke-virtual {p0}, getGsmLevel()I

    move-result v4

    .line 701
    :cond_16
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_CdmalteTelephonyCommon"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 703
    const/4 v2, 0x0

    .line 704
    .local v2, "displayCdmaLevel":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_NwCdmaCsfb"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    if-nez v4, :cond_32

    .line 706
    const/4 v2, 0x1

    .line 708
    :cond_32
    const-string v5, "gsm.current.phone-type"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 709
    .local v1, "currentPhone":I
    if-ne v1, v7, :cond_3d

    if-nez v4, :cond_3d

    .line 710
    const/4 v2, 0x1

    .line 713
    :cond_3d
    if-eqz v2, :cond_43

    .line 714
    invoke-virtual {p0}, getCdmaLevel()I

    move-result v4

    .line 752
    .end local v1    # "currentPhone":I
    .end local v2    # "displayCdmaLevel":Z
    :cond_43
    :goto_43
    sget v5, NUM_SIGNAL_STRENGTH_BINS:I

    if-lt v4, v5, :cond_4b

    .line 753
    sget v5, NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v4, v5, -0x1

    .line 757
    :cond_4b
    return v4

    .line 718
    :cond_4c
    invoke-virtual {p0}, getCdmaLevel()I

    move-result v0

    .line 719
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, getEvdoLevel()I

    move-result v3

    .line 720
    .local v3, "evdoLevel":I
    if-nez v3, :cond_6a

    .line 722
    move v4, v0

    .line 745
    :cond_57
    :goto_57
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_NwCdmaCsfb"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    if-nez v4, :cond_43

    .line 747
    invoke-virtual {p0}, getLteLevel()I

    move-result v4

    goto :goto_43

    .line 723
    :cond_6a
    if-nez v0, :cond_6e

    .line 725
    move v4, v3

    goto :goto_57

    .line 727
    :cond_6e
    invoke-virtual {p0}, isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-eqz v5, :cond_94

    .line 728
    move v4, v0

    .line 734
    :goto_75
    sget-object v5, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v5, :cond_84

    sget-object v5, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "VZW-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 735
    move v4, v3

    .line 737
    :cond_84
    sget-object v5, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v5, :cond_57

    sget-object v5, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "USC-USC-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 741
    move v4, v0

    goto :goto_57

    .line 731
    :cond_94
    if-ge v0, v3, :cond_98

    move v4, v0

    :goto_97
    goto :goto_75

    :cond_98
    move v4, v3

    goto :goto_97
.end method

.method public getLteAsuLevel()I
    .registers 4

    .prologue
    .line 1232
    const/16 v0, 0x63

    .line 1233
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, getLteDbm()I

    move-result v1

    .line 1247
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_e

    const/16 v0, 0xff

    .line 1250
    :goto_d
    return v0

    .line 1248
    :cond_e
    add-int/lit16 v0, v1, 0x8c

    goto :goto_d
.end method

.method public getLteCqi()I
    .registers 2

    .prologue
    .line 631
    iget v0, p0, mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .registers 2

    .prologue
    .line 1120
    iget v0, p0, mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .registers 12

    .prologue
    const/16 v10, 0x12c

    const/16 v9, 0xa

    const/16 v8, -0x1e

    const/16 v7, -0xc8

    .line 1135
    const/4 v2, 0x0

    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 1137
    .local v3, "snrIconLevel":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1140
    .local v1, "rsrpThreshType":I
    if-nez v1, :cond_6a

    .line 1141
    sget-object v4, RSRP_THRESH_STRICT:[I

    .line 1146
    .local v4, "threshRsrp":[I
    :goto_1a
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-virtual {p0}, isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1147
    :cond_2f
    sget-object v4, RSRP_THRESH_CHINA:[I

    .line 1150
    :cond_31
    iget v5, p0, mLteRsrp:I

    const/4 v6, 0x5

    aget v6, v4, v6

    if-le v5, v6, :cond_6d

    const/4 v0, -0x1

    .line 1163
    :cond_39
    :goto_39
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    invoke-virtual {p0}, isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 1164
    :cond_4e
    iget v5, p0, mLteRssnr:I

    if-le v5, v10, :cond_9a

    const/4 v3, -0x1

    .line 1185
    :cond_53
    :goto_53
    sget-object v5, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v5, :cond_e7

    sget-object v5, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "USC-USC-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 1187
    invoke-virtual {p0}, getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v0, v5, 0x4

    .line 1193
    :cond_69
    :goto_69
    return v0

    .line 1143
    .end local v4    # "threshRsrp":[I
    :cond_6a
    sget-object v4, RSRP_THRESH_LENIENT:[I

    .restart local v4    # "threshRsrp":[I
    goto :goto_1a

    .line 1151
    :cond_6d
    iget v5, p0, mLteRsrp:I

    const/4 v6, 0x4

    aget v6, v4, v6

    if-lt v5, v6, :cond_76

    const/4 v0, 0x4

    goto :goto_39

    .line 1152
    :cond_76
    iget v5, p0, mLteRsrp:I

    const/4 v6, 0x3

    aget v6, v4, v6

    if-lt v5, v6, :cond_7f

    const/4 v0, 0x3

    goto :goto_39

    .line 1153
    :cond_7f
    iget v5, p0, mLteRsrp:I

    const/4 v6, 0x2

    aget v6, v4, v6

    if-lt v5, v6, :cond_88

    const/4 v0, 0x2

    goto :goto_39

    .line 1154
    :cond_88
    iget v5, p0, mLteRsrp:I

    const/4 v6, 0x1

    aget v6, v4, v6

    if-lt v5, v6, :cond_91

    const/4 v0, 0x1

    goto :goto_39

    .line 1155
    :cond_91
    iget v5, p0, mLteRsrp:I

    const/4 v6, 0x0

    aget v6, v4, v6

    if-lt v5, v6, :cond_39

    const/4 v0, 0x0

    goto :goto_39

    .line 1165
    :cond_9a
    iget v5, p0, mLteRssnr:I

    const/16 v6, 0x5a

    if-lt v5, v6, :cond_a2

    const/4 v3, 0x4

    goto :goto_53

    .line 1166
    :cond_a2
    iget v5, p0, mLteRssnr:I

    if-lt v5, v9, :cond_a8

    const/4 v3, 0x3

    goto :goto_53

    .line 1167
    :cond_a8
    iget v5, p0, mLteRssnr:I

    if-lt v5, v8, :cond_ae

    const/4 v3, 0x2

    goto :goto_53

    .line 1168
    :cond_ae
    iget v5, p0, mLteRssnr:I

    const/16 v6, -0x32

    if-lt v5, v6, :cond_b6

    const/4 v3, 0x1

    goto :goto_53

    .line 1169
    :cond_b6
    iget v5, p0, mLteRssnr:I

    if-lt v5, v7, :cond_53

    .line 1170
    const/4 v3, 0x0

    goto :goto_53

    .line 1172
    :cond_bc
    iget v5, p0, mLteRssnr:I

    if-le v5, v10, :cond_c2

    const/4 v3, -0x1

    goto :goto_53

    .line 1173
    :cond_c2
    iget v5, p0, mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_ca

    const/4 v3, 0x4

    goto :goto_53

    .line 1174
    :cond_ca
    iget v5, p0, mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_d2

    const/4 v3, 0x3

    goto :goto_53

    .line 1175
    :cond_d2
    iget v5, p0, mLteRssnr:I

    if-lt v5, v9, :cond_d9

    const/4 v3, 0x2

    goto/16 :goto_53

    .line 1176
    :cond_d9
    iget v5, p0, mLteRssnr:I

    if-lt v5, v8, :cond_e0

    const/4 v3, 0x1

    goto/16 :goto_53

    .line 1177
    :cond_e0
    iget v5, p0, mLteRssnr:I

    if-lt v5, v7, :cond_53

    .line 1178
    const/4 v3, 0x0

    goto/16 :goto_53

    .line 1190
    :cond_e7
    invoke-virtual {p0}, isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-nez v5, :cond_69

    .line 1191
    invoke-virtual {p0}, getSignalBar()I

    move-result v5

    const v6, 0xf000

    and-int/2addr v5, v6

    shr-int/lit8 v0, v5, 0xc

    goto/16 :goto_69
.end method

.method public getLteRsrp()I
    .registers 2

    .prologue
    .line 616
    iget v0, p0, mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .registers 2

    .prologue
    .line 621
    iget v0, p0, mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .registers 2

    .prologue
    .line 626
    iget v0, p0, mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .registers 2

    .prologue
    .line 611
    iget v0, p0, mLteSignalStrength:I

    return v0
.end method

.method public getSglteGsmLevel()I
    .registers 2

    .prologue
    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method public getSglteRssiDisplayNum()I
    .registers 2

    .prologue
    .line 922
    const/4 v0, 0x0

    return v0
.end method

.method public getSignalBar()I
    .registers 4

    .prologue
    .line 767
    const-string/jumbo v1, "ril.dbg.SignalBar"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 768
    .local v0, "dbgBar":I
    if-lez v0, :cond_b

    .line 769
    .end local v0    # "dbgBar":I
    :goto_a
    return v0

    .restart local v0    # "dbgBar":I
    :cond_b
    iget v1, p0, mSignalBar:I

    if-ltz v1, :cond_13

    iget v1, p0, mSignalBar:I

    :goto_11
    move v0, v1

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getTdScdmaAsuLevel()I
    .registers 4

    .prologue
    .line 1305
    invoke-virtual {p0}, getTdScdmaDbm()I

    move-result v1

    .line 1308
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_b

    const/4 v0, 0x0

    .line 1311
    .local v0, "tdScdmaAsuLevel":I
    :goto_a
    return v0

    .line 1309
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_b
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_a
.end method

.method public getTdScdmaDbm()I
    .registers 2

    .prologue
    .line 1266
    iget v0, p0, mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .registers 4

    .prologue
    .line 1278
    invoke-virtual {p0}, getTdScdmaDbm()I

    move-result v1

    .line 1281
    .local v1, "tdScdmaDbm":I
    const/16 v2, -0x19

    if-gt v1, v2, :cond_d

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1d

    .line 1282
    :cond_d
    const/4 v0, 0x0

    .line 1289
    .local v0, "level":I
    :goto_e
    if-eqz v0, :cond_1c

    .line 1291
    invoke-virtual {p0}, isCdmaRatOnAllRatSupport()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1292
    invoke-virtual {p0}, getSignalBar()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 1296
    :cond_1c
    return v0

    .line 1283
    .end local v0    # "level":I
    :cond_1d
    const/16 v2, -0x58

    if-lt v1, v2, :cond_23

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_e

    .line 1284
    .end local v0    # "level":I
    :cond_23
    const/16 v2, -0x5c

    if-lt v1, v2, :cond_29

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_e

    .line 1285
    .end local v0    # "level":I
    :cond_29
    const/16 v2, -0x61

    if-lt v1, v2, :cond_2f

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_e

    .line 1286
    .end local v0    # "level":I
    :cond_2f
    const/16 v2, -0x66

    if-lt v1, v2, :cond_35

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_e

    .line 1287
    .end local v0    # "level":I
    :cond_35
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_e
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 1319
    const/16 v0, 0x1f

    .line 1320
    .local v0, "primeNum":I
    iget v1, p0, mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mSignalBar:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, isGsm:Z

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    :goto_3e
    add-int/2addr v1, v2

    return v1

    :cond_40
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .registers 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 349
    iput p1, p0, mGsmSignalStrength:I

    .line 350
    iput p2, p0, mGsmBitErrorRate:I

    .line 351
    iput p3, p0, mCdmaDbm:I

    .line 352
    iput p4, p0, mCdmaEcio:I

    .line 353
    iput p5, p0, mEvdoDbm:I

    .line 354
    iput p6, p0, mEvdoEcio:I

    .line 355
    iput p7, p0, mEvdoSnr:I

    .line 356
    iput p8, p0, mLteSignalStrength:I

    .line 357
    iput p9, p0, mLteRsrp:I

    .line 358
    iput p10, p0, mLteRsrq:I

    .line 359
    iput p11, p0, mLteRssnr:I

    .line 360
    iput p12, p0, mLteCqi:I

    .line 361
    const v0, 0x7fffffff

    iput v0, p0, mTdScdmaRscp:I

    .line 362
    iput-boolean p13, p0, isGsm:Z

    .line 364
    const/4 v0, 0x0

    iput v0, p0, mSignalBar:I

    .line 367
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .registers 23
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 320
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, initialize(IIIIIIIIIIIIZ)V

    .line 323
    return-void
.end method

.method public isCdmaRatOnAllRatSupport()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "ret":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 154
    :cond_1a
    :goto_1a
    return v1

    .line 147
    :cond_1b
    const-string v2, "5"

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "5"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 151
    :cond_37
    invoke-virtual {p0}, isGsm()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 152
    const/4 v0, 0x1

    :cond_3e
    move v1, v0

    .line 154
    goto :goto_1a
.end method

.method public isGsm()Z
    .registers 2

    .prologue
    .line 1257
    iget-boolean v0, p0, isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .registers 2
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 556
    iput-boolean p1, p0, isGsm:Z

    .line 557
    return-void
.end method

.method public setSignalBars()V
    .registers 1

    .prologue
    .line 639
    return-void
.end method

.method public setSignalBarsLTE()V
    .registers 1

    .prologue
    .line 646
    return-void
.end method

.method public setSignalBarsLTE(IIZ)V
    .registers 4
    .param p1, "rilRadioTechnology"    # I
    .param p2, "ssRilRadioTechnology"    # I
    .param p3, "isVolteSupported"    # Z

    .prologue
    .line 660
    return-void
.end method

.method public setSignalBarsVolte(Z)V
    .registers 2
    .param p1, "isVolteSupported"    # Z

    .prologue
    .line 653
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mSignalBar:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, isGsm:Z

    if-eqz v0, :cond_c6

    const-string v0, "gsm|lte"

    :goto_bd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c6
    const-string v0, "cdma"

    goto :goto_bd
.end method

.method public validateInput()V
    .registers 7

    .prologue
    const/16 v2, -0x78

    const/16 v1, 0x63

    const/4 v3, -0x1

    const v4, 0x7fffffff

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signal before validate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, isCdmaRatOnAllRatSupport()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 510
    iget v0, p0, mGsmBitErrorRate:I

    if-ne v0, v3, :cond_c8

    .line 511
    const/4 v0, 0x0

    iput v0, p0, mSignalBar:I

    .line 512
    iput v1, p0, mGsmBitErrorRate:I

    .line 521
    :cond_2d
    :goto_2d
    iget v0, p0, mGsmSignalStrength:I

    if-ltz v0, :cond_da

    iget v0, p0, mGsmSignalStrength:I

    :goto_33
    iput v0, p0, mGsmSignalStrength:I

    .line 524
    iget v0, p0, mCdmaDbm:I

    if-lez v0, :cond_dd

    iget v0, p0, mCdmaDbm:I

    neg-int v0, v0

    :goto_3c
    iput v0, p0, mCdmaDbm:I

    .line 525
    iget v0, p0, mCdmaEcio:I

    if-lez v0, :cond_e0

    iget v0, p0, mCdmaEcio:I

    neg-int v0, v0

    :goto_45
    iput v0, p0, mCdmaEcio:I

    .line 527
    iget v0, p0, mEvdoDbm:I

    if-lez v0, :cond_4e

    iget v0, p0, mEvdoDbm:I

    neg-int v2, v0

    :cond_4e
    iput v2, p0, mEvdoDbm:I

    .line 528
    iget v0, p0, mEvdoEcio:I

    if-ltz v0, :cond_e4

    iget v0, p0, mEvdoEcio:I

    neg-int v0, v0

    :goto_57
    iput v0, p0, mEvdoEcio:I

    .line 529
    iget v0, p0, mEvdoSnr:I

    if-lez v0, :cond_65

    iget v0, p0, mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_65

    iget v3, p0, mEvdoSnr:I

    :cond_65
    iput v3, p0, mEvdoSnr:I

    .line 532
    iget v0, p0, mLteSignalStrength:I

    if-ltz v0, :cond_6d

    iget v1, p0, mLteSignalStrength:I

    :cond_6d
    iput v1, p0, mLteSignalStrength:I

    .line 533
    iget v0, p0, mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_e7

    iget v0, p0, mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_e7

    iget v0, p0, mLteRsrp:I

    neg-int v0, v0

    :goto_7e
    iput v0, p0, mLteRsrp:I

    .line 534
    iget v0, p0, mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_e9

    iget v0, p0, mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_e9

    iget v0, p0, mLteRsrq:I

    neg-int v0, v0

    :goto_8e
    iput v0, p0, mLteRsrq:I

    .line 535
    iget v0, p0, mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_eb

    iget v0, p0, mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_eb

    iget v0, p0, mLteRssnr:I

    :goto_9e
    iput v0, p0, mLteRssnr:I

    .line 538
    iget v0, p0, mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_af

    iget v0, p0, mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_af

    iget v0, p0, mTdScdmaRscp:I

    neg-int v4, v0

    :cond_af
    iput v4, p0, mTdScdmaRscp:I

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signal after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 545
    return-void

    .line 514
    :cond_c8
    iget v0, p0, mGsmBitErrorRate:I

    const v5, 0xffff00

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, mSignalBar:I

    .line 515
    iget v0, p0, mGsmBitErrorRate:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, mGsmBitErrorRate:I

    goto/16 :goto_2d

    :cond_da
    move v0, v1

    .line 521
    goto/16 :goto_33

    :cond_dd
    move v0, v2

    .line 524
    goto/16 :goto_3c

    .line 525
    :cond_e0
    const/16 v0, -0xa0

    goto/16 :goto_45

    :cond_e4
    move v0, v3

    .line 528
    goto/16 :goto_57

    :cond_e7
    move v0, v4

    .line 533
    goto :goto_7e

    :cond_e9
    move v0, v4

    .line 534
    goto :goto_8e

    :cond_eb
    move v0, v4

    .line 535
    goto :goto_9e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 450
    iget v0, p0, mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget v0, p0, mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget v0, p0, mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget v0, p0, mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget v0, p0, mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v0, p0, mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget v0, p0, mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget v0, p0, mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget v0, p0, mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget v0, p0, mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget v0, p0, mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget v0, p0, mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget v0, p0, mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget-boolean v0, p0, isGsm:Z

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    :goto_46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget v0, p0, mSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    return-void

    .line 463
    :cond_4f
    const/4 v0, 0x0

    goto :goto_46
.end method
