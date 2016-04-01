.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final LTE_IMS_VOICE_AVAIL_NOT_SUPPORT:I = 0x2

.field public static final LTE_IMS_VOICE_AVAIL_SUPPORT:I = 0x1

.field public static final LTE_IMS_VOICE_AVAIL_UNKNOWN:I = 0x0

.field public static final LTE_IS_EB_SUPPORTED_NOT_SUPPORT:I = 0x2

.field public static final LTE_IS_EB_SUPPORTED_SUPPORT:I = 0x1

.field public static final LTE_IS_EB_SUPPORTED_UKNOWN:I = 0x0

.field public static final LTE_IS_EMERGENCY_ACCESS_BARRED:I = 0x1

.field public static final LTE_IS_EMERGENCY_ACCESS_BARRING_UNKNOWN:I = 0x0

.field public static final LTE_IS_EMERGENCY_ACCESS_NOT_BARRED:I = 0x2

.field public static final OPTIONAL_RADIO_TECH_DC:I = 0x1

.field public static final OPTIONAL_RADIO_TECH_NONE:I = 0x0

.field public static final OPTIONAL_RADIO_TECH_TDLTE:I = 0x2

.field public static final REGISTRATION_STATE_HOME_NETWORK:I = 0x1

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING:I = 0x0

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING:I = 0x2

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED:I = 0x3

.field public static final REGISTRATION_STATE_ROAMING:I = 0x5

.field public static final REGISTRATION_STATE_UNKNOWN:I = 0x4

.field public static final REGISTRATION_TYPE_CELLULAR:I = 0x1

.field public static final REGISTRATION_TYPE_NOCELLULAR:I = 0x2

.field public static final REGISTRATION_TYPE_UNKNOWN:I = 0x0

.field public static final RIL_FEMTOCELL_INDICATOR_LTE:I = 0x1

.field public static final RIL_FEMTOCELL_INDICATOR_NONE:I = 0x0

.field public static final RIL_RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final RIL_RADIO_TECHNOLOGY_DC:I = 0x1e

.field public static final RIL_RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final RIL_RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final RIL_RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final RIL_RADIO_TECHNOLOGY_GSM:I = 0x10

.field public static final RIL_RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final RIL_RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final RIL_RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final RIL_RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final RIL_RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final RIL_RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final RIL_RADIO_TECHNOLOGY_IWLAN:I = 0x12

.field public static final RIL_RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final RIL_RADIO_TECHNOLOGY_TDLTE:I = 0x1f

.field public static final RIL_RADIO_TECHNOLOGY_TD_SCDMA:I = 0x11

.field public static final RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final RIL_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final RIL_REG_STATE_DENIED:I = 0x3

.field public static final RIL_REG_STATE_DENIED_EMERGENCY_CALL_ENABLED:I = 0xd

.field public static final RIL_REG_STATE_HOME:I = 0x1

.field public static final RIL_REG_STATE_NOT_REG:I = 0x0

.field public static final RIL_REG_STATE_NOT_REG_EMERGENCY_CALL_ENABLED:I = 0xa

.field public static final RIL_REG_STATE_ROAMING:I = 0x5

.field public static final RIL_REG_STATE_SEARCHING:I = 0x2

.field public static final RIL_REG_STATE_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xc

.field public static final RIL_REG_STATE_UNKNOWN:I = 0x4

.field public static final RIL_REG_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED:I = 0xe

.field public static final ROAMING_TYPE_DOMESTIC:I = 0x2

.field public static final ROAMING_TYPE_INTERNATIONAL:I = 0x3

.field public static final ROAMING_TYPE_NOT_ROAMING:I = 0x0

.field public static final ROAMING_TYPE_UNKNOWN:I = 0x1

.field static final SHIP_BUILD:Z

.field public static final SNAPSHOT_STATUS_ACTIVATED:I = 0x1

.field public static final SNAPSHOT_STATUS_DEACTIVATED:I = 0x0

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3


# instance fields
.field private mCdmaDefaultRoamingIndicator:I

.field private mCdmaEriIconIndex:I

.field private mCdmaEriIconMode:I

.field private mCdmaRoamingIndicator:I

.field private mCssIndicator:Z

.field private mDataOperatorAlphaLong:Ljava/lang/String;

.field private mDataOperatorAlphaShort:Ljava/lang/String;

.field private mDataOperatorNumeric:Ljava/lang/String;

.field private mDataRegState:I

.field private mDataRoamingType:I

.field private mFemtocellIndicator:I

.field private mIsDataRoamingFromRegistration:Z

.field private mIsEmergencyOnly:Z

.field private mIsManualNetworkSelection:Z

.field private mLteImsVoiceAvail:I

.field private mLteIsEbSupported:I

.field private mLteIsEmergencyAccessBarred:I

.field private mNetworkId:I

.field private mOptionalRadioTech:I

.field private mRilDataRadioTechnology:I

.field private mRilVoiceRadioTechnology:I

.field private mSnapshotStatus:I

.field private mSystemId:I

.field private mVoiceOperatorAlphaLong:Ljava/lang/String;

.field private mVoiceOperatorAlphaShort:Ljava/lang/String;

.field private mVoiceOperatorNumeric:Ljava/lang/String;

.field private mVoiceRegState:I

.field private mVoiceRegType:I

.field private mVoiceRoamingType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, SHIP_BUILD:Z

    .line 505
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput v1, p0, mVoiceRegState:I

    .line 249
    iput v1, p0, mDataRegState:I

    .line 298
    iput v1, p0, mCdmaEriIconIndex:I

    .line 305
    iput v0, p0, mVoiceRegType:I

    .line 309
    iput v0, p0, mLteImsVoiceAvail:I

    .line 310
    iput v0, p0, mLteIsEbSupported:I

    .line 311
    iput v0, p0, mLteIsEmergencyAccessBarred:I

    .line 315
    iput v0, p0, mSnapshotStatus:I

    .line 319
    iput v0, p0, mFemtocellIndicator:I

    .line 323
    iput v0, p0, mOptionalRadioTech:I

    .line 370
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput v1, p0, mVoiceRegState:I

    .line 249
    iput v1, p0, mDataRegState:I

    .line 298
    iput v1, p0, mCdmaEriIconIndex:I

    .line 305
    iput v2, p0, mVoiceRegType:I

    .line 309
    iput v2, p0, mLteImsVoiceAvail:I

    .line 310
    iput v2, p0, mLteIsEbSupported:I

    .line 311
    iput v2, p0, mLteIsEmergencyAccessBarred:I

    .line 315
    iput v2, p0, mSnapshotStatus:I

    .line 319
    iput v2, p0, mFemtocellIndicator:I

    .line 323
    iput v2, p0, mOptionalRadioTech:I

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mVoiceRegState:I

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mDataRegState:I

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mVoiceRoamingType:I

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mDataRoamingType:I

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDataOperatorNumeric:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_cd

    move v0, v1

    :goto_5c
    iput-boolean v0, p0, mIsManualNetworkSelection:Z

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mRilVoiceRadioTechnology:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mRilDataRadioTechnology:I

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_cf

    move v0, v1

    :goto_71
    iput-boolean v0, p0, mCssIndicator:Z

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mNetworkId:I

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mSystemId:I

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCdmaRoamingIndicator:I

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCdmaDefaultRoamingIndicator:I

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCdmaEriIconIndex:I

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCdmaEriIconMode:I

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d1

    move v0, v1

    :goto_9e
    iput-boolean v0, p0, mIsEmergencyOnly:Z

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d3

    :goto_a6
    iput-boolean v1, p0, mIsDataRoamingFromRegistration:Z

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mVoiceRegType:I

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLteImsVoiceAvail:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLteIsEbSupported:I

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLteIsEmergencyAccessBarred:I

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mSnapshotStatus:I

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mFemtocellIndicator:I

    .line 460
    return-void

    :cond_cd
    move v0, v2

    .line 434
    goto :goto_5c

    :cond_cf
    move v0, v2

    .line 437
    goto :goto_71

    :cond_d1
    move v0, v2

    .line 444
    goto :goto_9e

    :cond_d3
    move v1, v2

    .line 445
    goto :goto_a6
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput v1, p0, mVoiceRegState:I

    .line 249
    iput v1, p0, mDataRegState:I

    .line 298
    iput v1, p0, mCdmaEriIconIndex:I

    .line 305
    iput v0, p0, mVoiceRegType:I

    .line 309
    iput v0, p0, mLteImsVoiceAvail:I

    .line 310
    iput v0, p0, mLteIsEbSupported:I

    .line 311
    iput v0, p0, mLteIsEmergencyAccessBarred:I

    .line 315
    iput v0, p0, mSnapshotStatus:I

    .line 319
    iput v0, p0, mFemtocellIndicator:I

    .line 323
    iput v0, p0, mOptionalRadioTech:I

    .line 378
    invoke-virtual {p0, p1}, copyFrom(Landroid/telephony/ServiceState;)V

    .line 379
    return-void
.end method

.method public static bitmaskHasTech(II)Z
    .registers 5
    .param p0, "bearerBitmask"    # I
    .param p1, "radioTech"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1505
    if-nez p0, :cond_5

    .line 1510
    :cond_4
    :goto_4
    return v0

    .line 1507
    :cond_5
    if-lt p1, v0, :cond_10

    .line 1508
    add-int/lit8 v2, p1, -0x1

    shl-int v2, v0, v2

    and-int/2addr v2, p0

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_10
    move v0, v1

    .line 1510
    goto :goto_4
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 1175
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static getBitmaskForTech(I)I
    .registers 3
    .param p0, "radioTech"    # I

    .prologue
    const/4 v1, 0x1

    .line 1515
    if-lt p0, v1, :cond_8

    .line 1516
    add-int/lit8 v0, p0, -0x1

    shl-int v0, v1, v0

    .line 1518
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getBitmaskFromString(Ljava/lang/String;)I
    .registers 11
    .param p0, "bearerList"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1523
    const-string v9, "\\|"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1524
    .local v4, "bearers":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1525
    .local v2, "bearerBitmask":I
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_b
    if-ge v5, v6, :cond_1b

    aget-object v1, v0, v5

    .line 1526
    .local v1, "bearer":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1528
    .local v3, "bearerInt":I
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_17} :catch_1c

    move-result v3

    .line 1533
    if-nez v3, :cond_1f

    move v2, v8

    .line 1539
    .end local v1    # "bearer":Ljava/lang/String;
    .end local v2    # "bearerBitmask":I
    .end local v3    # "bearerInt":I
    :cond_1b
    :goto_1b
    return v2

    .line 1529
    .restart local v1    # "bearer":Ljava/lang/String;
    .restart local v2    # "bearerBitmask":I
    .restart local v3    # "bearerInt":I
    :catch_1c
    move-exception v7

    .local v7, "nfe":Ljava/lang/NumberFormatException;
    move v2, v8

    .line 1530
    goto :goto_1b

    .line 1537
    .end local v7    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1f
    invoke-static {v3}, getBitmaskForTech(I)I

    move-result v9

    or-int/2addr v2, v9

    .line 1525
    add-int/lit8 v5, v5, 0x1

    goto :goto_b
.end method

.method public static final getRoamingLogString(I)Ljava/lang/String;
    .registers 2
    .param p0, "roamingType"    # I

    .prologue
    .line 331
    packed-switch p0, :pswitch_data_14

    .line 345
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 333
    :pswitch_6
    const-string v0, "home"

    goto :goto_5

    .line 336
    :pswitch_9
    const-string/jumbo v0, "roaming"

    goto :goto_5

    .line 339
    :pswitch_d
    const-string v0, "Domestic Roaming"

    goto :goto_5

    .line 342
    :pswitch_10
    const-string v0, "International Roaming"

    goto :goto_5

    .line 331
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public static hasCdma(I)Z
    .registers 3
    .param p0, "radioTechnologyBitmask"    # I

    .prologue
    .line 1492
    const/16 v0, 0xf

    .line 1500
    .local v0, "cdmaBitmask":I
    and-int v1, p0, v0

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static isCdma(I)Z
    .registers 11
    .param p0, "radioTechnology"    # I

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/16 v7, 0xe

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1443
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_ExceptionSid"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    if-ne p0, v7, :cond_4e

    .line 1445
    const-string v4, "KDI"

    const-string v5, "EUR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1446
    const-string/jumbo v4, "ril.iscdmalte"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1447
    .local v0, "prop":Ljava/lang/String;
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ServiceState] isCdma prop ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    if-eqz v0, :cond_4c

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1481
    .end local v0    # "prop":Ljava/lang/String;
    :cond_4b
    :goto_4b
    return v2

    .restart local v0    # "prop":Ljava/lang/String;
    :cond_4c
    move v2, v3

    .line 1448
    goto :goto_4b

    .line 1452
    .end local v0    # "prop":Ljava/lang/String;
    :cond_4e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_CdmalteTelephonyCommon"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 1454
    if-eq p0, v8, :cond_72

    if-eq p0, v9, :cond_72

    const/4 v4, 0x6

    if-eq p0, v4, :cond_72

    const/4 v4, 0x7

    if-eq p0, v4, :cond_72

    const/16 v4, 0x8

    if-eq p0, v4, :cond_72

    const/16 v4, 0xc

    if-eq p0, v4, :cond_72

    const/16 v4, 0xd

    if-eq p0, v4, :cond_72

    if-ne p0, v7, :cond_88

    :cond_72
    move v1, v2

    .line 1463
    .local v1, "ret":Z
    :goto_73
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 1464
    if-nez v1, :cond_85

    const/16 v4, 0x12

    if-ne p0, v4, :cond_8a

    :cond_85
    move v1, v2

    :cond_86
    :goto_86
    move v2, v1

    .line 1466
    goto :goto_4b

    .end local v1    # "ret":Z
    :cond_88
    move v1, v3

    .line 1454
    goto :goto_73

    .restart local v1    # "ret":Z
    :cond_8a
    move v1, v3

    .line 1464
    goto :goto_86

    .line 1474
    .end local v1    # "ret":Z
    :cond_8c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b9

    :cond_a4
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "ril.iscdmalte"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    if-eq p0, v7, :cond_4b

    .line 1481
    :cond_b9
    if-eq p0, v8, :cond_cf

    if-eq p0, v9, :cond_cf

    const/4 v4, 0x6

    if-eq p0, v4, :cond_cf

    const/4 v4, 0x7

    if-eq p0, v4, :cond_cf

    const/16 v4, 0x8

    if-eq p0, v4, :cond_cf

    const/16 v4, 0xc

    if-eq p0, v4, :cond_cf

    const/16 v4, 0xd

    if-ne p0, v4, :cond_d0

    :cond_cf
    move v3, v2

    :cond_d0
    move v2, v3

    goto/16 :goto_4b
.end method

.method public static isGsm(I)Z
    .registers 10
    .param p0, "radioTechnology"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0xe

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1393
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ExceptionSid"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    if-ne p0, v6, :cond_4e

    .line 1395
    const-string v3, "KDI"

    const-string v4, "EUR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1396
    const-string/jumbo v3, "ril.iscdmalte"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, "prop":Ljava/lang/String;
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ServiceState] isGsm prop ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    if-eqz v0, :cond_4c

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    :goto_4a
    move v2, v1

    .line 1427
    .end local v0    # "prop":Ljava/lang/String;
    :cond_4b
    :goto_4b
    return v2

    .restart local v0    # "prop":Ljava/lang/String;
    :cond_4c
    move v1, v2

    .line 1398
    goto :goto_4a

    .line 1402
    .end local v0    # "prop":Ljava/lang/String;
    :cond_4e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_CdmalteTelephonyCommon"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 1404
    if-eq p0, v1, :cond_7c

    if-eq p0, v7, :cond_7c

    if-eq p0, v8, :cond_7c

    const/16 v3, 0x9

    if-eq p0, v3, :cond_7c

    const/16 v3, 0xa

    if-eq p0, v3, :cond_7c

    const/16 v3, 0xb

    if-eq p0, v3, :cond_7c

    const/16 v3, 0xf

    if-eq p0, v3, :cond_7c

    const/16 v3, 0x10

    if-eq p0, v3, :cond_7c

    const/16 v3, 0x11

    if-eq p0, v3, :cond_7c

    const/16 v3, 0x12

    if-ne p0, v3, :cond_4b

    :cond_7c
    move v2, v1

    goto :goto_4b

    .line 1420
    :cond_7e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_96

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aa

    :cond_96
    const-string/jumbo v3, "true"

    const-string/jumbo v4, "ril.iscdmalte"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    if-eq p0, v6, :cond_4b

    .line 1427
    :cond_aa
    if-eq p0, v1, :cond_ce

    if-eq p0, v7, :cond_ce

    if-eq p0, v8, :cond_ce

    const/16 v3, 0x9

    if-eq p0, v3, :cond_ce

    const/16 v3, 0xa

    if-eq p0, v3, :cond_ce

    const/16 v3, 0xb

    if-eq p0, v3, :cond_ce

    if-eq p0, v6, :cond_ce

    const/16 v3, 0xf

    if-eq p0, v3, :cond_ce

    const/16 v3, 0x10

    if-eq p0, v3, :cond_ce

    const/16 v3, 0x11

    if-eq p0, v3, :cond_ce

    const/16 v3, 0x12

    if-ne p0, v3, :cond_4b

    :cond_ce
    move v2, v1

    goto/16 :goto_4b
.end method

.method public static isSameGroupRat(II)Z
    .registers 10
    .param p0, "oldRadioTech"    # I
    .param p1, "newRadioTech"    # I

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1649
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "old RAT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new RAT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    packed-switch p0, :pswitch_data_7e

    .line 1689
    :cond_2d
    :goto_2d
    :pswitch_2d
    return v1

    .line 1653
    :pswitch_2e
    const/4 v2, 0x2

    if-ne p1, v2, :cond_33

    :goto_31
    move v1, v0

    goto :goto_2d

    :cond_33
    move v0, v1

    goto :goto_31

    .line 1656
    :pswitch_35
    if-ne p1, v0, :cond_39

    :goto_37
    move v1, v0

    goto :goto_2d

    :cond_39
    move v0, v1

    goto :goto_37

    .line 1659
    :pswitch_3b
    const/16 v2, 0xb

    if-eq p1, v2, :cond_47

    if-eq p1, v6, :cond_47

    if-eq p1, v7, :cond_47

    const/16 v2, 0xf

    if-ne p1, v2, :cond_2d

    :cond_47
    move v1, v0

    goto :goto_2d

    .line 1665
    :pswitch_49
    if-eq p1, v5, :cond_53

    if-eq p1, v6, :cond_53

    if-eq p1, v7, :cond_53

    const/16 v2, 0xf

    if-ne p1, v2, :cond_2d

    :cond_53
    move v1, v0

    goto :goto_2d

    .line 1671
    :pswitch_55
    const/16 v2, 0xb

    if-eq p1, v2, :cond_61

    if-eq p1, v5, :cond_61

    if-eq p1, v7, :cond_61

    const/16 v2, 0xf

    if-ne p1, v2, :cond_2d

    :cond_61
    move v1, v0

    goto :goto_2d

    .line 1677
    :pswitch_63
    const/16 v2, 0xb

    if-eq p1, v2, :cond_6f

    if-eq p1, v6, :cond_6f

    if-eq p1, v5, :cond_6f

    const/16 v2, 0xf

    if-ne p1, v2, :cond_2d

    :cond_6f
    move v1, v0

    goto :goto_2d

    .line 1683
    :pswitch_71
    const/16 v2, 0xb

    if-eq p1, v2, :cond_7b

    if-eq p1, v6, :cond_7b

    if-eq p1, v7, :cond_7b

    if-ne p1, v5, :cond_2d

    :cond_7b
    move v1, v0

    goto :goto_2d

    .line 1651
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_35
        :pswitch_3b
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_55
        :pswitch_63
        :pswitch_49
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_71
    .end packed-switch
.end method

.method public static mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 4
    .param p0, "baseSs"    # Landroid/telephony/ServiceState;
    .param p1, "voiceSs"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1548
    iget v1, p1, mVoiceRegState:I

    if-eqz v1, :cond_5

    .line 1558
    .end local p0    # "baseSs":Landroid/telephony/ServiceState;
    :goto_4
    return-object p0

    .line 1552
    .restart local p0    # "baseSs":Landroid/telephony/ServiceState;
    :cond_5
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, <init>(Landroid/telephony/ServiceState;)V

    .line 1555
    .local v0, "newSs":Landroid/telephony/ServiceState;
    iget v1, p1, mVoiceRegState:I

    iput v1, v0, mVoiceRegState:I

    .line 1556
    const/4 v1, 0x0

    iput-boolean v1, v0, mIsEmergencyOnly:Z

    move-object p0, v0

    .line 1558
    goto :goto_4
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .registers 2
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 361
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, <init>()V

    .line 362
    .local v0, "ret":Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 363
    return-object v0
.end method

.method private rilRadioTechnologyToNetworkType(I)I
    .registers 4
    .param p1, "rt"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1305
    packed-switch p1, :pswitch_data_44

    .line 1352
    const/4 v0, 0x0

    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 1309
    goto :goto_6

    .line 1311
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_6

    .line 1313
    :pswitch_b
    const/16 v0, 0x8

    goto :goto_6

    .line 1315
    :pswitch_e
    const/16 v0, 0x9

    goto :goto_6

    .line 1317
    :pswitch_11
    const/16 v0, 0xa

    goto :goto_6

    .line 1320
    :pswitch_14
    const/4 v0, 0x4

    goto :goto_6

    .line 1322
    :pswitch_16
    const/4 v0, 0x7

    goto :goto_6

    .line 1324
    :pswitch_18
    const/4 v0, 0x5

    goto :goto_6

    .line 1326
    :pswitch_1a
    const/4 v0, 0x6

    goto :goto_6

    .line 1328
    :pswitch_1c
    const/16 v0, 0xc

    goto :goto_6

    .line 1330
    :pswitch_1f
    const/16 v0, 0xe

    goto :goto_6

    .line 1333
    :pswitch_22
    invoke-virtual {p0}, getOptionalRadioTech()I

    move-result v0

    if-ne v0, v1, :cond_2b

    .line 1334
    const/16 v0, 0x1f

    goto :goto_6

    .line 1337
    :cond_2b
    const/16 v0, 0xd

    goto :goto_6

    .line 1340
    :pswitch_2e
    invoke-virtual {p0}, getOptionalRadioTech()I

    move-result v1

    if-ne v1, v0, :cond_37

    .line 1341
    const/16 v0, 0x1e

    goto :goto_6

    .line 1344
    :cond_37
    const/16 v0, 0xf

    goto :goto_6

    .line 1346
    :pswitch_3a
    const/16 v0, 0x10

    goto :goto_6

    .line 1348
    :pswitch_3d
    const/16 v0, 0x11

    goto :goto_6

    .line 1350
    :pswitch_40
    const/16 v0, 0x12

    goto :goto_6

    .line 1305
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_14
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_1a
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_2e
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
    .end packed-switch
.end method

.method public static rilRadioTechnologyToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "rt"    # I

    .prologue
    .line 850
    packed-switch p0, :pswitch_data_5e

    .line 917
    :pswitch_3
    const-string v0, "Unexpected"

    .line 918
    .local v0, "rtString":Ljava/lang/String;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected radioTechnology="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :goto_1d
    return-object v0

    .line 852
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "Unknown"

    .line 853
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 855
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_21
    const-string v0, "GPRS"

    .line 856
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 858
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_24
    const-string v0, "EDGE"

    .line 859
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 861
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_27
    const-string v0, "UMTS"

    .line 862
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 864
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "CDMA-IS95A"

    .line 865
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 867
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "CDMA-IS95B"

    .line 868
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 870
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_30
    const-string v0, "1xRTT"

    .line 871
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 873
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_33
    const-string v0, "EvDo-rev.0"

    .line 874
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 876
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_36
    const-string v0, "EvDo-rev.A"

    .line 877
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 879
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_39
    const-string v0, "HSDPA"

    .line 880
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 882
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3c
    const-string v0, "HSUPA"

    .line 883
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 885
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3f
    const-string v0, "HSPA"

    .line 886
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 888
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_42
    const-string v0, "EvDo-rev.B"

    .line 889
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 891
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_45
    const-string v0, "eHRPD"

    .line 892
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 894
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_48
    const-string v0, "LTE"

    .line 895
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 897
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4b
    const-string v0, "HSPAP"

    .line 898
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 900
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4e
    const-string v0, "GSM"

    .line 901
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 903
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_51
    const-string v0, "IWLAN"

    .line 904
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 906
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_54
    const-string v0, "TD-SCDMA"

    .line 907
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 910
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_57
    const-string v0, "DC"

    .line 911
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 913
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5a
    const-string v0, "TDLTE"

    .line 914
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_1d

    .line 850
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_54
        :pswitch_51
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_57
        :pswitch_5a
    .end packed-switch
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1185
    const-string/jumbo v0, "voiceRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mVoiceRegState:I

    .line 1186
    const-string v0, "dataRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mDataRegState:I

    .line 1187
    const-string/jumbo v0, "voiceRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mVoiceRoamingType:I

    .line 1188
    const-string v0, "dataRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mDataRoamingType:I

    .line 1189
    const-string/jumbo v0, "operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1190
    const-string/jumbo v0, "operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1191
    const-string/jumbo v0, "operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1192
    const-string v0, "data-operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1193
    const-string v0, "data-operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1194
    const-string v0, "data-operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDataOperatorNumeric:Ljava/lang/String;

    .line 1195
    const-string/jumbo v0, "manual"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mIsManualNetworkSelection:Z

    .line 1196
    const-string/jumbo v0, "radioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mRilVoiceRadioTechnology:I

    .line 1197
    const-string v0, "dataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mRilDataRadioTechnology:I

    .line 1198
    const-string v0, "cssIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mCssIndicator:Z

    .line 1199
    const-string/jumbo v0, "networkId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mNetworkId:I

    .line 1200
    const-string/jumbo v0, "systemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mSystemId:I

    .line 1201
    const-string v0, "cdmaRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mCdmaRoamingIndicator:I

    .line 1202
    const-string v0, "cdmaDefaultRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mCdmaDefaultRoamingIndicator:I

    .line 1203
    const-string v0, "emergencyOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mIsEmergencyOnly:Z

    .line 1204
    const-string v0, "isDataRoamingFromRegistration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mIsDataRoamingFromRegistration:Z

    .line 1206
    const-string/jumbo v0, "voiceRegType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mVoiceRegType:I

    .line 1209
    const-string v0, "lteimsvoiceavail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mLteImsVoiceAvail:I

    .line 1210
    const-string v0, "lteisebsupported"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mLteIsEbSupported:I

    .line 1211
    const-string v0, "lteisemergencyaccessbarred"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mLteIsEmergencyAccessBarred:I

    .line 1214
    const-string/jumbo v0, "snapshotstatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mSnapshotStatus:I

    .line 1217
    const-string v0, "femtocellIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mFemtocellIndicator:I

    .line 1219
    return-void
.end method

.method private setNullState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 993
    iput p1, p0, mVoiceRegState:I

    .line 994
    iput p1, p0, mDataRegState:I

    .line 995
    iput v0, p0, mVoiceRoamingType:I

    .line 996
    iput v0, p0, mDataRoamingType:I

    .line 997
    iput-object v2, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 998
    iput-object v2, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 999
    iput-object v2, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1000
    iput-object v2, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1001
    iput-object v2, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1002
    iput-object v2, p0, mDataOperatorNumeric:Ljava/lang/String;

    .line 1003
    iput-boolean v0, p0, mIsManualNetworkSelection:Z

    .line 1004
    iput v0, p0, mRilVoiceRadioTechnology:I

    .line 1005
    iput v0, p0, mRilDataRadioTechnology:I

    .line 1006
    iput-boolean v0, p0, mCssIndicator:Z

    .line 1007
    iput v1, p0, mNetworkId:I

    .line 1008
    iput v1, p0, mSystemId:I

    .line 1009
    iput v1, p0, mCdmaRoamingIndicator:I

    .line 1010
    iput v1, p0, mCdmaDefaultRoamingIndicator:I

    .line 1011
    iput v1, p0, mCdmaEriIconIndex:I

    .line 1012
    iput v1, p0, mCdmaEriIconMode:I

    .line 1013
    iput-boolean v0, p0, mIsEmergencyOnly:Z

    .line 1014
    iput-boolean v0, p0, mIsDataRoamingFromRegistration:Z

    .line 1016
    iput v0, p0, mVoiceRegType:I

    .line 1019
    iput v0, p0, mLteImsVoiceAvail:I

    .line 1020
    iput v0, p0, mLteIsEbSupported:I

    .line 1021
    iput v0, p0, mLteIsEmergencyAccessBarred:I

    .line 1024
    iput v0, p0, mSnapshotStatus:I

    .line 1027
    iput v0, p0, mFemtocellIndicator:I

    .line 1030
    iput v0, p0, mOptionalRadioTech:I

    .line 1032
    return-void
.end method


# virtual methods
.method public canCellularVoiceService()Z
    .registers 3

    .prologue
    .line 1574
    iget v0, p0, mVoiceRegType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected copyFrom(Landroid/telephony/ServiceState;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 382
    iget v0, p1, mVoiceRegState:I

    iput v0, p0, mVoiceRegState:I

    .line 383
    iget v0, p1, mDataRegState:I

    iput v0, p0, mDataRegState:I

    .line 384
    iget v0, p1, mVoiceRoamingType:I

    iput v0, p0, mVoiceRoamingType:I

    .line 385
    iget v0, p1, mDataRoamingType:I

    iput v0, p0, mDataRoamingType:I

    .line 386
    iget-object v0, p1, mVoiceOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 387
    iget-object v0, p1, mVoiceOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 388
    iget-object v0, p1, mVoiceOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    .line 389
    iget-object v0, p1, mDataOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    .line 390
    iget-object v0, p1, mDataOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    .line 391
    iget-object v0, p1, mDataOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, mDataOperatorNumeric:Ljava/lang/String;

    .line 392
    iget-boolean v0, p1, mIsManualNetworkSelection:Z

    iput-boolean v0, p0, mIsManualNetworkSelection:Z

    .line 393
    iget v0, p1, mRilVoiceRadioTechnology:I

    iput v0, p0, mRilVoiceRadioTechnology:I

    .line 394
    iget v0, p1, mRilDataRadioTechnology:I

    iput v0, p0, mRilDataRadioTechnology:I

    .line 395
    iget-boolean v0, p1, mCssIndicator:Z

    iput-boolean v0, p0, mCssIndicator:Z

    .line 396
    iget v0, p1, mNetworkId:I

    iput v0, p0, mNetworkId:I

    .line 397
    iget v0, p1, mSystemId:I

    iput v0, p0, mSystemId:I

    .line 398
    iget v0, p1, mCdmaRoamingIndicator:I

    iput v0, p0, mCdmaRoamingIndicator:I

    .line 399
    iget v0, p1, mCdmaDefaultRoamingIndicator:I

    iput v0, p0, mCdmaDefaultRoamingIndicator:I

    .line 400
    iget v0, p1, mCdmaEriIconIndex:I

    iput v0, p0, mCdmaEriIconIndex:I

    .line 401
    iget v0, p1, mCdmaEriIconMode:I

    iput v0, p0, mCdmaEriIconMode:I

    .line 402
    iget-boolean v0, p1, mIsEmergencyOnly:Z

    iput-boolean v0, p0, mIsEmergencyOnly:Z

    .line 403
    iget-boolean v0, p1, mIsDataRoamingFromRegistration:Z

    iput-boolean v0, p0, mIsDataRoamingFromRegistration:Z

    .line 405
    iget v0, p1, mVoiceRegType:I

    iput v0, p0, mVoiceRegType:I

    .line 408
    iget v0, p1, mLteImsVoiceAvail:I

    iput v0, p0, mLteImsVoiceAvail:I

    .line 409
    iget v0, p1, mLteIsEbSupported:I

    iput v0, p0, mLteIsEbSupported:I

    .line 410
    iget v0, p1, mLteIsEmergencyAccessBarred:I

    iput v0, p0, mLteIsEmergencyAccessBarred:I

    .line 413
    iget v0, p1, mSnapshotStatus:I

    iput v0, p0, mSnapshotStatus:I

    .line 416
    iget v0, p1, mFemtocellIndicator:I

    iput v0, p0, mFemtocellIndicator:I

    .line 418
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 793
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/ServiceState;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    .line 798
    .local v2, "s":Landroid/telephony/ServiceState;
    if-nez p1, :cond_a

    .line 802
    .end local v2    # "s":Landroid/telephony/ServiceState;
    :cond_7
    :goto_7
    return v3

    .line 794
    :catch_8
    move-exception v1

    .line 795
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_7

    .line 802
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/ServiceState;
    :cond_a
    iget v4, p0, mVoiceRegState:I

    iget v5, v2, mVoiceRegState:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mDataRegState:I

    iget v5, v2, mDataRegState:I

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, mIsManualNetworkSelection:Z

    iget-boolean v5, v2, mIsManualNetworkSelection:Z

    if-ne v4, v5, :cond_7

    iget v4, p0, mVoiceRoamingType:I

    iget v5, v2, mVoiceRoamingType:I

    if-ne v4, v5, :cond_7

    iget v4, p0, mDataRoamingType:I

    iget v5, v2, mDataRoamingType:I

    if-ne v4, v5, :cond_7

    iget-object v4, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, mDataOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, mDataOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mRilVoiceRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mRilVoiceRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mRilDataRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mRilDataRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v2, mCssIndicator:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mSystemId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mCdmaRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mCdmaDefaultRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mCdmaDefaultRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mVoiceRegType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mVoiceRegType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mLteImsVoiceAvail:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mLteImsVoiceAvail:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mLteIsEbSupported:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mLteIsEbSupported:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mLteIsEmergencyAccessBarred:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mLteIsEmergencyAccessBarred:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mSnapshotStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mSnapshotStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, mFemtocellIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, mFemtocellIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, mIsEmergencyOnly:Z

    iget-boolean v5, v2, mIsEmergencyOnly:Z

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, mIsDataRoamingFromRegistration:Z

    iget-boolean v5, v2, mIsDataRoamingFromRegistration:Z

    if-ne v4, v5, :cond_7

    const/4 v3, 0x1

    goto/16 :goto_7
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1228
    const-string/jumbo v0, "voiceRegState"

    iget v1, p0, mVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1229
    const-string v0, "dataRegState"

    iget v1, p0, mDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1230
    const-string/jumbo v0, "voiceRoamingType"

    iget v1, p0, mVoiceRoamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1231
    const-string v0, "dataRoamingType"

    iget v1, p0, mDataRoamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1232
    const-string/jumbo v0, "operator-alpha-long"

    iget-object v1, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string/jumbo v0, "operator-alpha-short"

    iget-object v1, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-string/jumbo v0, "operator-numeric"

    iget-object v1, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string v0, "data-operator-alpha-long"

    iget-object v1, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v0, "data-operator-alpha-short"

    iget-object v1, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v0, "data-operator-numeric"

    iget-object v1, p0, mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-string/jumbo v0, "manual"

    iget-boolean v1, p0, mIsManualNetworkSelection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1239
    const-string/jumbo v0, "radioTechnology"

    iget v1, p0, mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1240
    const-string v0, "dataRadioTechnology"

    iget v1, p0, mRilDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1241
    const-string v0, "cssIndicator"

    iget-boolean v1, p0, mCssIndicator:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1242
    const-string/jumbo v0, "networkId"

    iget v1, p0, mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1243
    const-string/jumbo v0, "systemId"

    iget v1, p0, mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1244
    const-string v0, "cdmaRoamingIndicator"

    iget v1, p0, mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1245
    const-string v0, "cdmaDefaultRoamingIndicator"

    iget v1, p0, mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1246
    const-string v0, "emergencyOnly"

    iget-boolean v1, p0, mIsEmergencyOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1247
    const-string v0, "isDataRoamingFromRegistration"

    iget-boolean v1, p0, mIsDataRoamingFromRegistration:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1249
    const-string/jumbo v0, "voiceRegType"

    iget v1, p0, mVoiceRegType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1252
    const-string v0, "lteimsvoiceavail"

    iget v1, p0, mLteImsVoiceAvail:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1253
    const-string v0, "lteisebsupported"

    iget v1, p0, mLteIsEbSupported:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1254
    const-string v0, "lteisemergencyaccessbarred"

    iget v1, p0, mLteIsEmergencyAccessBarred:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1257
    const-string/jumbo v0, "snapshotstatus"

    iget v1, p0, mSnapshotStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1260
    const-string v0, "femtocellIndicator"

    iget v1, p0, mFemtocellIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1262
    return-void
.end method

.method public getCdmaDefaultRoamingIndicator()I
    .registers 2

    .prologue
    .line 636
    iget v0, p0, mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .registers 2

    .prologue
    .line 643
    iget v0, p0, mCdmaEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode()I
    .registers 2

    .prologue
    .line 650
    iget v0, p0, mCdmaEriIconMode:I

    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .registers 2

    .prologue
    .line 629
    iget v0, p0, mCdmaRoamingIndicator:I

    return v0
.end method

.method public getCssIndicator()I
    .registers 2

    .prologue
    .line 1377
    iget-boolean v0, p0, mCssIndicator:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getDataNetworkType()I
    .registers 2

    .prologue
    .line 1367
    iget v0, p0, mRilDataRadioTechnology:I

    invoke-direct {p0, v0}, rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 709
    iget-object v0, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorNumeric()Ljava/lang/String;
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, mDataOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getDataRegState()I
    .registers 2

    .prologue
    .line 548
    iget v0, p0, mDataRegState:I

    return v0
.end method

.method public getDataRoaming()Z
    .registers 2

    .prologue
    .line 586
    iget v0, p0, mDataRoamingType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getDataRoamingFromRegistration()Z
    .registers 2

    .prologue
    .line 606
    iget-boolean v0, p0, mIsDataRoamingFromRegistration:Z

    return v0
.end method

.method public getDataRoamingType()I
    .registers 2

    .prologue
    .line 615
    iget v0, p0, mDataRoamingType:I

    return v0
.end method

.method public getFemtocellIndicator()I
    .registers 2

    .prologue
    .line 1625
    iget v0, p0, mFemtocellIndicator:I

    return v0
.end method

.method public getIsManualSelection()Z
    .registers 2

    .prologue
    .line 752
    iget-boolean v0, p0, mIsManualNetworkSelection:Z

    return v0
.end method

.method public getLteImsVoiceAvail()I
    .registers 2

    .prologue
    .line 1581
    iget v0, p0, mLteImsVoiceAvail:I

    return v0
.end method

.method public getLteIsEbSupported()I
    .registers 2

    .prologue
    .line 1591
    iget v0, p0, mLteIsEbSupported:I

    return v0
.end method

.method public getLteIsEmergencyAccessBarred()I
    .registers 2

    .prologue
    .line 1601
    iget v0, p0, mLteIsEmergencyAccessBarred:I

    return v0
.end method

.method public getNetworkId()I
    .registers 2

    .prologue
    .line 1382
    iget v0, p0, mNetworkId:I

    return v0
.end method

.method public getNetworkType()I
    .registers 3

    .prologue
    .line 1361
    const-string v0, "PHONE"

    const-string v1, "ServiceState.getNetworkType() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget v0, p0, mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalRadioTech()I
    .registers 2

    .prologue
    .line 1642
    iget v0, p0, mOptionalRadioTech:I

    return v0
.end method

.method public getRadioTechnology()I
    .registers 3

    .prologue
    .line 1300
    const-string v0, "PHONE"

    const-string v1, "ServiceState.getRadioTechnology() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-virtual {p0}, getRilDataRadioTechnology()I

    move-result v0

    return v0
.end method

.method public getRilDataRadioTechnology()I
    .registers 2

    .prologue
    .line 1292
    iget v0, p0, mRilDataRadioTechnology:I

    return v0
.end method

.method public getRilVoiceRadioTechnology()I
    .registers 2

    .prologue
    .line 1288
    iget v0, p0, mRilVoiceRadioTechnology:I

    return v0
.end method

.method public getRoaming()Z
    .registers 2

    .prologue
    .line 559
    invoke-virtual {p0}, getVoiceRoaming()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getSnapshotStatus()I
    .registers 2

    .prologue
    .line 1613
    iget v0, p0, mSnapshotStatus:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 520
    invoke-virtual {p0}, getVoiceRegState()I

    move-result v0

    return v0
.end method

.method public getSystemId()I
    .registers 2

    .prologue
    .line 1387
    iget v0, p0, mSystemId:I

    return v0
.end method

.method public getVoiceNetworkType()I
    .registers 2

    .prologue
    .line 1372
    iget v0, p0, mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 700
    iget-object v0, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorNumeric()Ljava/lang/String;
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceRegState()I
    .registers 2

    .prologue
    .line 534
    iget v0, p0, mVoiceRegState:I

    return v0
.end method

.method public getVoiceRegType()I
    .registers 2

    .prologue
    .line 1564
    iget v0, p0, mVoiceRegType:I

    return v0
.end method

.method public getVoiceRoaming()Z
    .registers 2

    .prologue
    .line 568
    iget v0, p0, mVoiceRoamingType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getVoiceRoamingType()I
    .registers 2

    .prologue
    .line 577
    iget v0, p0, mVoiceRoamingType:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 757
    iget v0, p0, mVoiceRegState:I

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, mDataRegState:I

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v0, v3

    iget v3, p0, mVoiceRoamingType:I

    add-int/2addr v0, v3

    iget v3, p0, mDataRoamingType:I

    add-int/2addr v3, v0

    iget-boolean v0, p0, mIsManualNetworkSelection:Z

    if-eqz v0, :cond_5f

    move v0, v1

    :goto_16
    add-int/2addr v3, v0

    iget-object v0, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_61

    move v0, v2

    :goto_1c
    add-int/2addr v3, v0

    iget-object v0, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_68

    move v0, v2

    :goto_22
    add-int/2addr v3, v0

    iget-object v0, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_6f

    move v0, v2

    :goto_28
    add-int/2addr v3, v0

    iget-object v0, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_76

    move v0, v2

    :goto_2e
    add-int/2addr v3, v0

    iget-object v0, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_7d

    move v0, v2

    :goto_34
    add-int/2addr v3, v0

    iget-object v0, p0, mDataOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_84

    move v0, v2

    :goto_3a
    add-int/2addr v0, v3

    iget v3, p0, mCdmaRoamingIndicator:I

    add-int/2addr v0, v3

    iget v3, p0, mCdmaDefaultRoamingIndicator:I

    add-int/2addr v0, v3

    iget v3, p0, mVoiceRegType:I

    add-int/2addr v0, v3

    iget v3, p0, mLteImsVoiceAvail:I

    add-int/2addr v0, v3

    iget v3, p0, mLteIsEbSupported:I

    add-int/2addr v0, v3

    iget v3, p0, mLteIsEmergencyAccessBarred:I

    add-int/2addr v0, v3

    iget v3, p0, mSnapshotStatus:I

    add-int/2addr v0, v3

    iget v3, p0, mFemtocellIndicator:I

    add-int/2addr v3, v0

    iget-boolean v0, p0, mIsEmergencyOnly:Z

    if-eqz v0, :cond_8b

    move v0, v1

    :goto_58
    add-int/2addr v0, v3

    iget-boolean v3, p0, mIsDataRoamingFromRegistration:Z

    if-eqz v3, :cond_8d

    :goto_5d
    add-int/2addr v0, v1

    return v0

    :cond_5f
    move v0, v2

    goto :goto_16

    :cond_61
    iget-object v0, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1c

    :cond_68
    iget-object v0, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_22

    :cond_6f
    iget-object v0, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_28

    :cond_76
    iget-object v0, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2e

    :cond_7d
    iget-object v0, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_34

    :cond_84
    iget-object v0, p0, mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3a

    :cond_8b
    move v0, v2

    goto :goto_58

    :cond_8d
    move v1, v2

    goto :goto_5d
.end method

.method public isEmergencyOnly()Z
    .registers 2

    .prologue
    .line 622
    iget-boolean v0, p0, mIsEmergencyOnly:Z

    return v0
.end method

.method public setCdmaDefaultRoamingIndicator(I)V
    .registers 2
    .param p1, "roaming"    # I

    .prologue
    .line 1102
    iput p1, p0, mCdmaDefaultRoamingIndicator:I

    .line 1103
    return-void
.end method

.method public setCdmaEriIconIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 1109
    iput p1, p0, mCdmaEriIconIndex:I

    .line 1110
    return-void
.end method

.method public setCdmaEriIconMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 1116
    iput p1, p0, mCdmaEriIconMode:I

    .line 1117
    return-void
.end method

.method public setCdmaRoamingIndicator(I)V
    .registers 2
    .param p1, "roaming"    # I

    .prologue
    .line 1095
    iput p1, p0, mCdmaRoamingIndicator:I

    .line 1096
    return-void
.end method

.method public setCssIndicator(I)V
    .registers 3
    .param p1, "css"    # I

    .prologue
    .line 1277
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, mCssIndicator:Z

    .line 1278
    return-void

    .line 1277
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setDataOperatorAlphaLong(Ljava/lang/String;)V
    .registers 2
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 1160
    iput-object p1, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1161
    return-void
.end method

.method public setDataOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 1137
    iput-object p1, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1138
    iput-object p2, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1139
    iput-object p3, p0, mDataOperatorNumeric:Ljava/lang/String;

    .line 1140
    return-void
.end method

.method public setDataRegState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 1055
    iput p1, p0, mDataRegState:I

    .line 1057
    return-void
.end method

.method public setDataRoaming(Z)V
    .registers 3
    .param p1, "dataRoaming"    # Z

    .prologue
    .line 1076
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, mDataRoamingType:I

    .line 1077
    return-void

    .line 1076
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setDataRoamingFromRegistration(Z)V
    .registers 2
    .param p1, "dataRoaming"    # Z

    .prologue
    .line 597
    iput-boolean p1, p0, mIsDataRoamingFromRegistration:Z

    .line 598
    return-void
.end method

.method public setDataRoamingType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 1081
    iput p1, p0, mDataRoamingType:I

    .line 1082
    return-void
.end method

.method public setEmergencyOnly(Z)V
    .registers 2
    .param p1, "emergencyOnly"    # Z

    .prologue
    .line 1088
    iput-boolean p1, p0, mIsEmergencyOnly:Z

    .line 1089
    return-void
.end method

.method public setFemtocellIndicator(I)V
    .registers 2
    .param p1, "femtocellIndicator"    # I

    .prologue
    .line 1630
    iput p1, p0, mFemtocellIndicator:I

    .line 1631
    return-void
.end method

.method public setIsManualSelection(Z)V
    .registers 2
    .param p1, "isManual"    # Z

    .prologue
    .line 1164
    iput-boolean p1, p0, mIsManualNetworkSelection:Z

    .line 1165
    return-void
.end method

.method public setLteImsVoiceAvail(I)V
    .registers 2
    .param p1, "lteImsVoiceAvail"    # I

    .prologue
    .line 1586
    iput p1, p0, mLteImsVoiceAvail:I

    .line 1587
    return-void
.end method

.method public setLteIsEbSupported(I)V
    .registers 2
    .param p1, "lteIsEbSupported"    # I

    .prologue
    .line 1596
    iput p1, p0, mLteIsEbSupported:I

    .line 1597
    return-void
.end method

.method public setLteIsEmergencyAccessBarred(I)V
    .registers 2
    .param p1, "lteIsEmergencyAccessBarred"    # I

    .prologue
    .line 1606
    iput p1, p0, mLteIsEmergencyAccessBarred:I

    .line 1607
    return-void
.end method

.method public setOperatorAlphaLong(Ljava/lang/String;)V
    .registers 2
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 1149
    iput-object p1, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1150
    iput-object p1, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1151
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 1120
    iput-object p1, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1121
    iput-object p2, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1122
    iput-object p3, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1123
    iput-object p1, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1124
    iput-object p2, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1125
    iput-object p3, p0, mDataOperatorNumeric:Ljava/lang/String;

    .line 1126
    return-void
.end method

.method public setOptionalRadioTech(I)V
    .registers 2
    .param p1, "optTech"    # I

    .prologue
    .line 1637
    iput p1, p0, mOptionalRadioTech:I

    .line 1638
    return-void
.end method

.method public setRilDataRadioTechnology(I)V
    .registers 2
    .param p1, "rt"    # I

    .prologue
    .line 1271
    iput p1, p0, mRilDataRadioTechnology:I

    .line 1273
    return-void
.end method

.method public setRilVoiceRadioTechnology(I)V
    .registers 2
    .param p1, "rt"    # I

    .prologue
    .line 1266
    iput p1, p0, mRilVoiceRadioTechnology:I

    .line 1267
    return-void
.end method

.method public setRoaming(Z)V
    .registers 3
    .param p1, "roaming"    # Z

    .prologue
    .line 1060
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, mVoiceRoamingType:I

    .line 1061
    iget v0, p0, mVoiceRoamingType:I

    iput v0, p0, mDataRoamingType:I

    .line 1062
    return-void

    .line 1060
    :cond_a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setSnapshotStatus(I)V
    .registers 2
    .param p1, "snapshotStatus"    # I

    .prologue
    .line 1618
    iput p1, p0, mSnapshotStatus:I

    .line 1619
    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 1043
    invoke-virtual {p0, p1}, setVoiceRegState(I)V

    .line 1045
    return-void
.end method

.method public setStateOff()V
    .registers 2

    .prologue
    .line 1039
    const/4 v0, 0x3

    invoke-direct {p0, v0}, setNullState(I)V

    .line 1040
    return-void
.end method

.method public setStateOutOfService()V
    .registers 2

    .prologue
    .line 1035
    const/4 v0, 0x1

    invoke-direct {p0, v0}, setNullState(I)V

    .line 1036
    return-void
.end method

.method public setSystemAndNetworkId(II)V
    .registers 3
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I

    .prologue
    .line 1282
    iput p1, p0, mSystemId:I

    .line 1283
    iput p2, p0, mNetworkId:I

    .line 1284
    return-void
.end method

.method public setVoiceOperatorAlphaLong(Ljava/lang/String;)V
    .registers 2
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 1155
    iput-object p1, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1156
    return-void
.end method

.method public setVoiceOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 1130
    iput-object p1, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1131
    iput-object p2, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1132
    iput-object p3, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1133
    return-void
.end method

.method public setVoiceRegState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 1049
    iput p1, p0, mVoiceRegState:I

    .line 1051
    return-void
.end method

.method public setVoiceRegType(I)V
    .registers 2
    .param p1, "voiceRegType"    # I

    .prologue
    .line 1569
    iput p1, p0, mVoiceRegType:I

    .line 1570
    return-void
.end method

.method public setVoiceRoaming(Z)V
    .registers 3
    .param p1, "roaming"    # Z

    .prologue
    .line 1066
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, mVoiceRoamingType:I

    .line 1067
    return-void

    .line 1066
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setVoiceRoamingType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 1071
    iput p1, p0, mVoiceRoamingType:I

    .line 1072
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 926
    iget v2, p0, mRilVoiceRadioTechnology:I

    invoke-static {v2}, rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, "radioTechnology":Ljava/lang/String;
    iget v2, p0, mRilDataRadioTechnology:I

    invoke-static {v2}, rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "dataRadioTechnology":Ljava/lang/String;
    sget-boolean v2, SHIP_BUILD:Z

    if-eqz v2, :cond_125

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, mVoiceRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mDataRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "voice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mVoiceRoamingType:I

    invoke-static {v3}, getRoamingLogString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mDataRoamingType:I

    invoke-static {v3}, getRoamingLogString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, mIsManualNetworkSelection:Z

    if-eqz v2, :cond_11d

    const-string v2, "(manual)"

    :goto_60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, mCssIndicator:Z

    if-eqz v2, :cond_121

    const-string v2, "CSS supported"

    :goto_84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mSystemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RoamInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mCdmaRoamingIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DefRoamInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " VoiceRegType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mVoiceRegType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ImsVoiceAvail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mLteImsVoiceAvail:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IsEbSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mLteIsEbSupported:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IsEaBarred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mLteIsEmergencyAccessBarred:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Snap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mSnapshotStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FemtocellInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mFemtocellIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EmergOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mIsEmergencyOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IsDataRoamingFromRegistration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mIsDataRoamingFromRegistration:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 954
    :goto_11c
    return-object v2

    .line 931
    :cond_11d
    const-string v2, ""

    goto/16 :goto_60

    :cond_121
    const-string v2, "CSS not supported"

    goto/16 :goto_84

    .line 954
    :cond_125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, mVoiceRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mDataRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "voice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mVoiceRoamingType:I

    invoke-static {v3}, getRoamingLogString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mDataRoamingType:I

    invoke-static {v3}, getRoamingLogString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, mIsManualNetworkSelection:Z

    if-eqz v2, :cond_27b

    const-string v2, "(manual)"

    :goto_1bd
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, mCssIndicator:Z

    if-eqz v2, :cond_27f

    const-string v2, "CSS supported"

    :goto_1e1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mSystemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RoamInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mCdmaRoamingIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DefRoamInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " VoiceRegType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mVoiceRegType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ImsVoiceAvail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mLteImsVoiceAvail:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IsEbSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mLteIsEbSupported:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IsEaBarred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mLteIsEmergencyAccessBarred:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Snap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mSnapshotStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FemtocellInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mFemtocellIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EmergOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mIsEmergencyOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IsDataRoamingFromRegistration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mIsDataRoamingFromRegistration:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_11c

    :cond_27b
    const-string v2, ""

    goto/16 :goto_1bd

    :cond_27f
    const-string v2, "CSS not supported"

    goto/16 :goto_1e1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 463
    iget v0, p0, mVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget v0, p0, mDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget v0, p0, mVoiceRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    iget v0, p0, mDataRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget-object v0, p0, mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    iget-boolean v0, p0, mIsManualNetworkSelection:Z

    if-eqz v0, :cond_9a

    move v0, v1

    :goto_39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget v0, p0, mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget v0, p0, mRilDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-boolean v0, p0, mCssIndicator:Z

    if-eqz v0, :cond_9c

    move v0, v1

    :goto_4b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget v0, p0, mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v0, p0, mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v0, p0, mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v0, p0, mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget v0, p0, mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget-boolean v0, p0, mIsEmergencyOnly:Z

    if-eqz v0, :cond_9e

    move v0, v1

    :goto_71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-boolean v0, p0, mIsDataRoamingFromRegistration:Z

    if-eqz v0, :cond_a0

    :goto_78
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget v0, p0, mVoiceRegType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget v0, p0, mLteImsVoiceAvail:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget v0, p0, mLteIsEbSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget v0, p0, mLteIsEmergencyAccessBarred:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget v0, p0, mSnapshotStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget v0, p0, mFemtocellIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    return-void

    :cond_9a
    move v0, v2

    .line 473
    goto :goto_39

    :cond_9c
    move v0, v2

    .line 476
    goto :goto_4b

    :cond_9e
    move v0, v2

    .line 483
    goto :goto_71

    :cond_a0
    move v1, v2

    .line 484
    goto :goto_78
.end method
