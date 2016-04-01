.class public final enum Lcom/android/internal/os/BatterySipper$DrainType;
.super Ljava/lang/Enum;
.source "BatterySipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatterySipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/os/BatterySipper$DrainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum APP:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum CELL:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum USER:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum WIFI:Lcom/android/internal/os/BatterySipper$DrainType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 77
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 78
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 79
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 80
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "BLUETOOTH"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 81
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "FLASHLIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 82
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "SCREEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 83
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "APP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 84
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "USER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, USER:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 85
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "UNACCOUNTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 86
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "OVERCOUNTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 87
    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "CAMERA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 75
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v1, v0, v3

    sget-object v1, CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v1, v0, v4

    sget-object v1, PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v1, v0, v5

    sget-object v1, WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v1, v0, v6

    sget-object v1, BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, APP:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, USER:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/os/BatterySipper$DrainType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper$DrainType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/os/BatterySipper$DrainType;
    .registers 1

    .prologue
    .line 75
    sget-object v0, $VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, [Lcom/android/internal/os/BatterySipper$DrainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/os/BatterySipper$DrainType;

    return-object v0
.end method
