.class public final enum Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
.super Ljava/lang/Enum;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field public static final enum AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field public static final enum DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field public static final enum NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

.field public static final enum P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    const-string v1, "NA"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    const-string v1, "P2P"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    const-string v1, "AP"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    const-string v1, "DLNA"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->NA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->P2P:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->AP:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->$VALUES:[Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    const-class v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->$VALUES:[Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    invoke-virtual {v0}, [Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/wfd/WifiDisplaySettings$ConnectionType;

    return-object v0
.end method
