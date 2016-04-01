.class synthetic Lcom/android/server/location/GpsLocationProvider_samsung$4;
.super Ljava/lang/Object;
.source "GpsLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1157
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->values()[Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    :try_start_9
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_c8

    :goto_14
    :try_start_14
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_c5

    :goto_1f
    :try_start_1f
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_c2

    :goto_2a
    :try_start_2a
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_bf

    :goto_35
    :try_start_35
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_bd

    :goto_40
    :try_start_40
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_bb

    :goto_4b
    :try_start_4b
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_b9

    :goto_56
    :try_start_56
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_b7

    :goto_62
    :try_start_62
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_b5

    :goto_6e
    :try_start_6e
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_b3

    :goto_7a
    :try_start_7a
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_b1

    :goto_86
    :try_start_86
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_af

    :goto_92
    :try_start_92
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_ad

    :goto_9e
    :try_start_9e
    sget-object v0, $SwitchMap$com$android$server$location$GpsLocationProvider_samsung$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_ab

    :goto_aa
    return-void

    :catch_ab
    move-exception v0

    goto :goto_aa

    :catch_ad
    move-exception v0

    goto :goto_9e

    :catch_af
    move-exception v0

    goto :goto_92

    :catch_b1
    move-exception v0

    goto :goto_86

    :catch_b3
    move-exception v0

    goto :goto_7a

    :catch_b5
    move-exception v0

    goto :goto_6e

    :catch_b7
    move-exception v0

    goto :goto_62

    :catch_b9
    move-exception v0

    goto :goto_56

    :catch_bb
    move-exception v0

    goto :goto_4b

    :catch_bd
    move-exception v0

    goto :goto_40

    :catch_bf
    move-exception v0

    goto/16 :goto_35

    :catch_c2
    move-exception v0

    goto/16 :goto_2a

    :catch_c5
    move-exception v0

    goto/16 :goto_1f

    :catch_c8
    move-exception v0

    goto/16 :goto_14
.end method
