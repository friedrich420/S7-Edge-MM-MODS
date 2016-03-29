.class public Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;
.super Ljava/lang/Object;
.source "QuickConnectIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    }
.end annotation


# static fields
.field private static final COMPANY_ID_SAMSUNG:[B

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:[B

.field private static final IDX_COMPANY_ID:I

.field private static final IDX_PDU_VERSION:I

.field private static final IDX_SERVICE_ID:I

.field private static final IDX_SLD_BT_TYPE:I

.field private static final IDX_WEARABLE_DEVICE_ID:I

.field private static final PDU_VERSION_01:[B

.field public static final SAMSUNG_STANDARD_ICON:[[I

.field private static final SERVICE_ID_WEARABLE:[B

.field private static final SLD_BT_TYPE_AOBLE_L:[B

.field private static final SLD_BT_TYPE_AOBLE_R:[B

.field private static final WEARABLE_DEVICE_ID_SLD:[B

.field public static final p2pDeviceTypes:[Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field private static sIsAoBleSupported:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 143
    new-array v0, v5, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:[B

    .line 147
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_COMPANY_ID:I

    .line 149
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->COMPANY_ID_SAMSUNG:[B

    .line 153
    sget v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_COMPANY_ID:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->COMPANY_ID_SAMSUNG:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_PDU_VERSION:I

    .line 154
    new-array v0, v5, [B

    aput-byte v5, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->PDU_VERSION_01:[B

    .line 158
    sget v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_PDU_VERSION:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->PDU_VERSION_01:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SERVICE_ID:I

    .line 159
    new-array v0, v4, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SERVICE_ID_WEARABLE:[B

    .line 163
    sget v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SERVICE_ID:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SERVICE_ID_WEARABLE:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_WEARABLE_DEVICE_ID:I

    .line 164
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->WEARABLE_DEVICE_ID_SLD:[B

    .line 168
    sget v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_WEARABLE_DEVICE_ID:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->WEARABLE_DEVICE_ID_SLD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SLD_BT_TYPE:I

    .line 170
    new-array v0, v5, [B

    aput-byte v3, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SLD_BT_TYPE_AOBLE_L:[B

    .line 173
    new-array v0, v5, [B

    aput-byte v7, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SLD_BT_TYPE_AOBLE_R:[B

    .line 377
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I

    .line 442
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PC:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PRINTER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->CAMERA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MOBILE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MIRRORING_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->p2pDeviceTypes:[Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 598
    const/16 v0, 0x1c

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v7, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v4, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v4, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SAMSUNG_STANDARD_ICON:[[I

    return-void

    .line 149
    :array_0
    .array-data 1
        0x75t
        0x0t
    .end array-data

    .line 159
    nop

    :array_1
    .array-data 1
        0x0t
        0x2t
    .end array-data

    .line 164
    nop

    :array_2
    .array-data 1
        0x0t
        -0x1t
    .end array-data

    .line 598
    nop

    :array_3
    .array-data 4
        0x7f0203a2
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x7f0203b3
        0x7f0203b3
        -0x1
    .end array-data

    :array_5
    .array-data 4
        0x7f0203bf
        0x7f0203bf
        -0x1
    .end array-data

    :array_6
    .array-data 4
        0x7f0203a1
        0x7f0203a1
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x7f0203b1
        0x7f0203b2
        0x7f0203b1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x7f020392
        0x7f0203ad
        0x7f02039f
        0x7f0203a7
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x7f0203c0
        0x7f0203c0
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x7f0203a9
        0x7f0203bd
        0x7f020391
        0x7f0203a9
        0x7f020395
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x7f0203b9
        0x7f0203b9
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0x7f0203b6
        0x7f0203b6
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x7f0203c2
        0x7f0203c2
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x7f02039d
        0x7f02039d
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x7f02039e
        0x7f02039e
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x7f0203b8
        0x7f0203b8
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x7f0203be
        0x7f0203be
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x7f020393
        0x7f020393
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x7f0203b0
        0x7f0203b0
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x7f0203b5
        0x7f0203b5
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x7f0203b7
        0x7f0203b7
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x7f0203bb
        0x7f0203bb
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x7f0203b4
        0x7f0203b4
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x7f0203aa
        0x7f0203aa
        0x7f0203ac
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x7f0203bc
        0x7f0203a9
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x7f0203c0
        0x7f0203c0
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x7f0203b9
        0x7f0203b9
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x7f020398
        0x7f020398
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x7f020397
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x7f020396
        -0x1
    .end array-data
.end method

.method public static convertP2pDeviceType(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    .locals 8
    .param p0, "p2pDeviceType"    # Ljava/lang/String;
    .param p1, "displayname"    # Ljava/lang/String;
    .param p2, "supportMirrorSink"    # Z

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x1

    .line 407
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 409
    .local v3, "type":Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    if-eqz p0, :cond_2

    .line 410
    const/4 v2, 0x0

    .line 411
    .local v2, "tokens":[Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 412
    array-length v4, v2

    if-lez v4, :cond_2

    .line 413
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 414
    .local v1, "p2pType":I
    if-lt v1, v6, :cond_2

    const/16 v4, 0xd

    if-ge v1, v4, :cond_2

    .line 415
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->p2pDeviceTypes:[Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    add-int/lit8 v5, v1, -0x1

    aget-object v3, v4, v5

    .line 416
    if-eqz p2, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    if-eq v1, v7, :cond_0

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 419
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MIRRORING_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 422
    :cond_1
    if-eqz p1, :cond_2

    .line 423
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "name":Ljava/lang/String;
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    const-string v4, "[CAMERA]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 426
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->CAMERA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 438
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "p2pType":I
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3

    .line 427
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "p2pType":I
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_3
    if-ne v1, v7, :cond_5

    const-string v4, "[TV]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "BRAVIA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 429
    :cond_4
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TV:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 430
    :cond_5
    if-ne v1, v6, :cond_2

    .line 431
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MIRRORING_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0
.end method

.method public static getBtDeviceType(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    .locals 7
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 232
    if-nez p0, :cond_0

    .line 233
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 374
    :goto_0
    return-object v5

    .line 236
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 239
    const-string v5, "Samsung Level Box"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 240
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_LEVELBOX:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 241
    :cond_1
    const-string v5, "Samsung Level"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 242
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_LEVEL:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 243
    :cond_2
    const-string v5, "HomeSync"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 244
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->HOMESYNC:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 246
    :cond_3
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "deviceName":Ljava/lang/String;
    const-string v5, "TVBLUETOOTH"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "[TV]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "BRAVIA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "SAMSUNG 3D TV"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 251
    :cond_4
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TV:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 256
    .end local v2    # "deviceName":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 257
    .local v1, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    const/4 v0, -0x1

    .line 258
    .local v0, "bdClass":I
    if-eqz v1, :cond_6

    .line 259
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    .line 265
    const/16 v5, 0x680

    if-ne v0, v5, :cond_7

    .line 266
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PRINTER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 262
    :cond_6
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 271
    :cond_7
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 319
    :cond_8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAppearance()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    .line 343
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 344
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_0

    .line 273
    :sswitch_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x11c

    if-ne v5, v6, :cond_9

    .line 274
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TABLET:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 276
    :cond_9
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->LAPTOP:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 279
    :sswitch_1
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MOBILE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 282
    :sswitch_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x704

    if-ne v5, v6, :cond_8

    .line 283
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->WEARABLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 287
    :sswitch_3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorClass()I

    move-result v5

    const/16 v6, 0x540

    if-ne v5, v6, :cond_a

    .line 288
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_KEYBOARD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 289
    :cond_a
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorClass()I

    move-result v5

    const/16 v6, 0x580

    if-ne v5, v6, :cond_b

    .line 290
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_MOUSE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 291
    :cond_b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorSubClass()I

    move-result v5

    const/16 v6, 0x504

    if-ne v5, v6, :cond_c

    .line 292
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_GAMEPAD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 293
    :cond_c
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorSubClass()I

    move-result v5

    const/16 v6, 0x508

    if-ne v5, v6, :cond_d

    .line 294
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_GAMEPAD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 295
    :cond_d
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorSubClass()I

    move-result v5

    const/16 v6, 0x50c

    if-ne v5, v6, :cond_e

    .line 296
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_GAMEPAD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 298
    :cond_e
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 302
    :sswitch_4
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x620

    if-ne v5, v6, :cond_f

    .line 303
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->CAMERA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 305
    :cond_f
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PRINTER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 308
    :sswitch_5
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x43c

    if-ne v5, v6, :cond_10

    .line 309
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TV:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 310
    :cond_10
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x434

    if-ne v5, v6, :cond_8

    .line 311
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->CAMERA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 321
    :sswitch_6
    if-eqz v3, :cond_11

    const-string v5, "GALAXY Gear ("

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 322
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->WEARABLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 324
    :cond_11
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MOBILE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 326
    :sswitch_7
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->LAPTOP:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 329
    :sswitch_8
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->WEARABLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 332
    :sswitch_9
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_KEYBOARD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 334
    :sswitch_a
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_MOUSE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 337
    :sswitch_b
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 347
    :cond_12
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 348
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_MONO:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 352
    :cond_13
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 353
    .local v4, "remoteUuids":[Landroid/os/ParcelUuid;
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 354
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 356
    :cond_14
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_15

    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 358
    :cond_15
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 360
    :cond_16
    invoke-static {}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->isAoBleSupported()Z

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Landroid/bluetooth/BluetoothUuid;->LeAudio:Landroid/os/ParcelUuid;

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 362
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 364
    :cond_17
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_18

    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 366
    :cond_18
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 370
    :cond_19
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 371
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 374
    :cond_1a
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto/16 :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_5
        0x500 -> :sswitch_3
        0x600 -> :sswitch_4
        0x700 -> :sswitch_2
    .end sparse-switch

    .line 319
    :sswitch_data_1
    .sparse-switch
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0xc0 -> :sswitch_8
        0xc1 -> :sswitch_8
        0x3c0 -> :sswitch_9
        0x3c1 -> :sswitch_9
        0x3c2 -> :sswitch_a
        0x3c3 -> :sswitch_b
        0x3c4 -> :sswitch_b
    .end sparse-switch
.end method

.method private static getEirLength([B)I
    .locals 5
    .param p0, "manufacturerData"    # [B

    .prologue
    const/4 v2, -0x1

    .line 581
    if-nez p0, :cond_1

    move v1, v2

    .line 595
    :cond_0
    :goto_0
    return v1

    .line 585
    :cond_1
    const/4 v1, 0x0

    .line 587
    .local v1, "length":I
    const/4 v3, 0x0

    :try_start_0
    aget-byte v1, p0, v3

    .line 588
    const/4 v3, 0x1

    aget-byte v0, p0, v3

    .line 589
    .local v0, "flag":B
    if-ne v0, v2, :cond_2

    const/4 v3, 0x5

    aget-byte v3, p0, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    .end local v0    # "flag":B
    :cond_2
    :goto_1
    move v1, v2

    .line 595
    goto :goto_0

    .line 593
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static getGearData(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 2
    .param p0, "dev"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "manufacturerData":[B
    if-nez p0, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 208
    :goto_0
    return-object v1

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getGearManagerName()[B

    move-result-object v0

    move-object v1, v0

    .line 208
    goto :goto_0
.end method

.method private static getGearDeviceID([BLjava/lang/String;)I
    .locals 3
    .param p0, "manufacturerData"    # [B
    .param p1, "devName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    .line 129
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lt v1, v2, :cond_0

    .line 130
    aget-byte v0, p0, v2

    .line 138
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->isGear1byName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIconResource(Landroid/net/wifi/p2p/WifiP2pDevice;Z)I
    .locals 5
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p1, "supportMirrorSink"    # Z

    .prologue
    .line 87
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 96
    :goto_0
    return v1

    .line 89
    :cond_0
    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    shr-int/lit8 v2, v3, 0x8

    .line 90
    .local v2, "type":I
    if-lez v2, :cond_1

    .line 91
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SAMSUNG_STANDARD_ICON:[[I

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    shr-int/lit8 v4, v4, 0x8

    aget-object v3, v3, v4

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    and-int/lit16 v4, v4, 0xff

    aget v1, v3, v4

    .line 92
    .local v1, "standardIcon":I
    goto :goto_0

    .line 95
    .end local v1    # "standardIcon":I
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->convertP2pDeviceType(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    move-result-object v0

    .line 96
    .local v0, "deviceType":Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->getIconId()I

    move-result v1

    goto :goto_0
.end method

.method public static getIconResource(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 10
    .param p0, "info"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 47
    if-nez p0, :cond_0

    const/4 v7, 0x0

    .line 82
    :goto_0
    return v7

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 52
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->getBtDeviceType(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    move-result-object v4

    .line 55
    .local v4, "deviceType":Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "bdName":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->getGearData(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 57
    .local v2, "data":[B
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->isGearData([B)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->isSldDevice([B)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->isGear1byName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 58
    :cond_1
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->getGearDeviceID([BLjava/lang/String;)I

    move-result v6

    .line 59
    .local v6, "gearId":I
    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 60
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR_FIT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 82
    .end local v6    # "gearId":I
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->getIconId()I

    move-result v7

    goto :goto_0

    .line 61
    .restart local v6    # "gearId":I
    :cond_3
    const/4 v8, -0x1

    if-ne v6, v8, :cond_4

    .line 62
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_APPCCESSORY_SLD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 65
    .local v1, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v8

    const/16 v9, 0x404

    if-ne v8, v9, :cond_5

    .line 67
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR_CIRCLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_1

    .line 69
    :cond_5
    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    goto :goto_1

    .line 75
    .end local v1    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v6    # "gearId":I
    :cond_6
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->getEirLength([B)I

    move-result v5

    .line 76
    .local v5, "eirLength":I
    const/16 v8, 0x1e

    if-le v5, v8, :cond_2

    .line 77
    sget-object v8, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SAMSUNG_STANDARD_ICON:[[I

    const/16 v9, 0xa

    aget-byte v9, v2, v9

    aget-object v8, v8, v9

    const/16 v9, 0xb

    aget-byte v9, v2, v9

    aget v7, v8, v9

    .line 78
    .local v7, "standardIcon":I
    goto :goto_0
.end method

.method public static isAoBleSupported()Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 379
    sget v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I

    if-ne v5, v6, :cond_0

    .line 381
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 382
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isAoBleSupported()I

    move-result v2

    .line 383
    .local v2, "isAoBleSupported":I
    if-ne v2, v4, :cond_2

    .line 384
    const/4 v5, 0x1

    sput v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    .end local v2    # "isAoBleSupported":I
    :cond_0
    :goto_0
    sget v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I

    if-ne v5, v4, :cond_1

    move v3, v4

    .line 399
    :cond_1
    :goto_1
    return v3

    .line 385
    .restart local v2    # "isAoBleSupported":I
    :cond_2
    if-eq v2, v6, :cond_1

    .line 388
    const/4 v5, 0x0

    :try_start_1
    sput v5, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 390
    .end local v2    # "isAoBleSupported":I
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    sput v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->sIsAoBleSupported:I

    goto :goto_0

    .line 392
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_1
.end method

.method public static isGear1byName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "devName"    # Ljava/lang/String;

    .prologue
    .line 110
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_1
    const-string v0, "GALAXY Gear ("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isGearData([B)Z
    .locals 3
    .param p0, "manufacturerData"    # [B

    .prologue
    const/4 v0, 0x0

    .line 118
    if-nez p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 123
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSldDevice([B)Z
    .locals 4
    .param p0, "gearData"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 178
    if-nez p0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    aget-byte v2, p0, v1

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_COMPANY_ID:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->COMPANY_ID_SAMSUNG:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_COMPANY_ID:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->COMPANY_ID_SAMSUNG:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_0

    .line 185
    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_PDU_VERSION:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->PDU_VERSION_01:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SERVICE_ID:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SERVICE_ID_WEARABLE:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SERVICE_ID:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SERVICE_ID_WEARABLE:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_0

    .line 188
    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_WEARABLE_DEVICE_ID:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->WEARABLE_DEVICE_ID_SLD:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_WEARABLE_DEVICE_ID:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->WEARABLE_DEVICE_ID_SLD:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_0

    .line 190
    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SLD_BT_TYPE:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SLD_BT_TYPE_AOBLE_L:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_2

    sget v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->IDX_SLD_BT_TYPE:I

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;->SLD_BT_TYPE_AOBLE_R:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 192
    goto :goto_0
.end method
