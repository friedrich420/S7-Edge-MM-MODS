.class public final enum Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
.super Ljava/lang/Enum;
.source "GpsLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Vendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum CAD_BMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum CAD_RWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum CAD_TLS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum CHN_CHN:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum JPN_DCM:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum JPN_KDI:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum MEX_IUS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum MEX_MNX:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum SUI_SWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

.field public static final enum USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 306
    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "USA_TMO"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "USA_ATT"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "JPN_DCM"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, JPN_DCM:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "JPN_KDI"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, JPN_KDI:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "CAD_TLS"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, CAD_TLS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "CAD_BMC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CAD_BMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "CAD_RWC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CAD_RWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "CAD_XAC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "KOR_SKT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "KOR_KT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "KOR_LGT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "CHN_CMC"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "CHN_CTC"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "CHN_CHU"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "CHN_CHN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CHN_CHN:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "CHN_CHC"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "MEX_MNX"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, MEX_MNX:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "MEX_IUS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, MEX_IUS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "SUI_SWC"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, SUI_SWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    const-string v1, "NO_OPERATOR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    .line 305
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    sget-object v1, USA_TMO:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v1, v0, v3

    sget-object v1, USA_ATT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v1, v0, v4

    sget-object v1, JPN_DCM:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v1, v0, v5

    sget-object v1, JPN_KDI:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v1, v0, v6

    sget-object v1, CAD_TLS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, CAD_BMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, CAD_RWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, CAD_XAC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, KOR_SKT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, KOR_KT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, KOR_LGT:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, CHN_CTC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, CHN_CHU:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, CHN_CHN:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, MEX_MNX:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, MEX_IUS:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, SUI_SWC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

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
    .line 305
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    const-class v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    return-object v0
.end method

.method public static values()[Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;
    .registers 1

    .prologue
    .line 305
    sget-object v0, $VALUES:[Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    invoke-virtual {v0}, [Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    return-object v0
.end method
