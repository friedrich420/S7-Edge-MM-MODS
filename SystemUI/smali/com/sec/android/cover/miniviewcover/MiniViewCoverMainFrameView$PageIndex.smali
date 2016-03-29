.class final enum Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;
.super Ljava/lang/Enum;
.source "MiniViewCoverMainFrameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PageIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

.field public static final enum BatteryPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

.field public static final enum HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

.field public static final enum MissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

.field public static final enum MusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

.field public static final enum SettingPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

.field public static final enum WeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    const-string v1, "SettingPage"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->SettingPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    const-string v1, "MissedEventPage"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    const-string v1, "HomePage"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    const-string v1, "BatteryPage"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->BatteryPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    const-string v1, "MusicControllerPage"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    const-string v1, "WeatherHealthPage"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->WeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->SettingPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->BatteryPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->WeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->$VALUES:[Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->$VALUES:[Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    invoke-virtual {v0}, [Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    return-object v0
.end method
