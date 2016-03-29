.class public final enum Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
.super Ljava/lang/Enum;
.source "QuickConnectIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum ACCESSORY_GAMEPAD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum ACCESSORY_KEYBOARD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum ACCESSORY_MONO:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum ACCESSORY_MOUSE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum BD_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum CAMERA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum DLNA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum DLNA_AUDIO:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum HOMESYNC:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum HTS:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum LAPTOP:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum MIRRORING_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum MOBILE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum PC:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum PRINTER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum SAMSUNG_APPCCESSORY_SLD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum SAMSUNG_GEAR:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum SAMSUNG_GEAR_CIRCLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum SAMSUNG_GEAR_FIT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum SAMSUNG_LEVEL:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum SAMSUNG_LEVELBOX:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum TABLET:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum TV:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

.field public static final enum WEARABLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;


# instance fields
.field private final listIcon:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 465
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "UNKNOWN"

    const v2, 0x7f0203a2

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 467
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "MOBILE"

    const v2, 0x7f0203b3

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MOBILE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 469
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "TABLET"

    const v2, 0x7f0203bf

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TABLET:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 471
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "PC"

    const v2, 0x7f0203b1

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PC:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 473
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "LAPTOP"

    const v2, 0x7f0203b1

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->LAPTOP:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 475
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "TV"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const v4, 0x7f0203c0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TV:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 477
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "CAMERA"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const v4, 0x7f020397

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->CAMERA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 479
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "WEARABLE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const v4, 0x7f0203a1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->WEARABLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 481
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "PRINTER"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const v4, 0x7f0203b4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PRINTER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 483
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "MIRRORING_PLAYER"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const v4, 0x7f02039c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MIRRORING_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 485
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "DLNA"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const v4, 0x7f020399

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->DLNA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 487
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "DLNA_AUDIO"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const v4, 0x7f0203a9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->DLNA_AUDIO:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 489
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "HOMESYNC"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const v4, 0x7f0203a4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->HOMESYNC:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 491
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "ACCESSORY_MOUSE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const v4, 0x7f0203ad

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_MOUSE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 493
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "ACCESSORY_KEYBOARD"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const v4, 0x7f0203a7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_KEYBOARD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 495
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "ACCESSORY_GAMEPAD"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const v4, 0x7f02039f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_GAMEPAD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 497
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "ACCESSORY_INPUT"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const v4, 0x7f020392

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 499
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "ACCESSORY_MONO"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const v4, 0x7f0203ac

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_MONO:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 501
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "ACCESSORY_OUTPUT"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const v4, 0x7f0203bc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 503
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "BD_PLAYER"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const v4, 0x7f020395

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->BD_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 505
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "HTS"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const v4, 0x7f0203a5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->HTS:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 507
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "SAMSUNG_GEAR"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const v4, 0x7f0203a1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 509
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "SAMSUNG_GEAR_FIT"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const v4, 0x7f0203a1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR_FIT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 511
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "SAMSUNG_GEAR_CIRCLE"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const v4, 0x7f0203a0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR_CIRCLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 513
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "SAMSUNG_LEVEL"

    const/16 v2, 0x18

    const/16 v3, 0x18

    const v4, 0x7f0203aa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_LEVEL:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 515
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "SAMSUNG_LEVELBOX"

    const/16 v2, 0x19

    const/16 v3, 0x19

    const v4, 0x7f0203a9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_LEVELBOX:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 517
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    const-string v1, "SAMSUNG_APPCCESSORY_SLD"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const v4, 0x7f0203ba

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_APPCCESSORY_SLD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    .line 462
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->UNKNOWN:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MOBILE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TABLET:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PC:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->LAPTOP:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->TV:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->CAMERA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->WEARABLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->PRINTER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->MIRRORING_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->DLNA:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->DLNA_AUDIO:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->HOMESYNC:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_MOUSE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_KEYBOARD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_GAMEPAD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_INPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_MONO:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->ACCESSORY_OUTPUT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->BD_PLAYER:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->HTS:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR_FIT:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_GEAR_CIRCLE:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_LEVEL:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_LEVELBOX:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->SAMSUNG_APPCCESSORY_SLD:Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->$VALUES:[Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "listIcon"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 539
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 540
    iput p4, p0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->listIcon:I

    .line 541
    iput p3, p0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->value:I

    .line 542
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 462
    const-class v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;
    .locals 1

    .prologue
    .line 462
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->$VALUES:[Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;

    return-object v0
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickConnectIconHelper$DeviceType;->listIcon:I

    return v0
.end method
