.class public Lcom/sec/epdg/EpdgSettingsWriter;
.super Ljava/lang/Object;
.source "EpdgSettingsWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;,
        Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
    }
.end annotation


# static fields
.field private static final COLUMN_OPERATOR_NUMERIC:Ljava/lang/String; = "operatornumeric"

.field public static final COLUMN_SMARTWIFI_CDMA_RSSI:Ljava/lang/String; = "smartwificdmarssi"

.field public static final COLUMN_SMARTWIFI_LTE_RSRP1:Ljava/lang/String; = "smartwifirsrp1"

.field public static final COLUMN_SMARTWIFI_LTE_RSRP2:Ljava/lang/String; = "smartwifirsrp2"

.field public static final COLUMN_SMARTWIFI_LTE_RSRP3:Ljava/lang/String; = "smartwifirsrp3"

.field public static final COLUMN_SMARTWIFI_RSSI_A:Ljava/lang/String; = "smartwifirssia"

.field public static final COLUMN_SMARTWIFI_RSSI_B:Ljava/lang/String; = "smartwifirssib"

.field public static final COLUMN_SYS_SEL_TIMER:Ljava/lang/String; = "sysseltimer"

.field public static final COLUMN_TEPDG_1X_TIMER:Ljava/lang/String; = "tepdg1xtimer"

.field public static final COLUMN_TEPDG_LTE_TIMER:Ljava/lang/String; = "tepdgltetimer"

.field private static final EVENT_WRITE_SETTING_DATA:I = 0x1

.field private static final SETTING_WRITE_MAX_RETRY:I = 0x3

.field private static final SETTING_WRITE_RETRY_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

.field private static final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/EpdgSettingsWriter$SettingData;",
            ">;"
        }
    .end annotation
.end field

.field private static mWriteHandler:Landroid/os/Handler;


# instance fields
.field colName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-class v0, Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 19
    sput-object v1, mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 20
    sput-object v1, mWriteHandler:Landroid/os/Handler;

    .line 21
    sput-object v1, mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 17
    sget-object v0, mWriteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 17
    sget-object v0, mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 17
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .registers 1

    .prologue
    .line 17
    sget-object v0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgSettingsWriter;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-class v2, Lcom/sec/epdg/EpdgSettingsWriter;

    monitor-enter v2

    :try_start_3
    sget-object v1, mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

    if-nez v1, :cond_25

    .line 54
    sput-object p0, mContext:Landroid/content/Context;

    .line 55
    new-instance v1, Lcom/sec/epdg/EpdgSettingsWriter;

    invoke-direct {v1}, <init>()V

    sput-object v1, mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgSettingsWriteThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v1, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, mWriteHandler:Landroid/os/Handler;

    .line 61
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_25
    sget-object v1, mEpdgWriteInstance:Lcom/sec/epdg/EpdgSettingsWriter;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    monitor-exit v2

    return-object v1

    .line 53
    :catchall_29
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 184
    sget-object v0, mWriteHandler:Landroid/os/Handler;

    sget-object v1, mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;

    invoke-direct {v3, p1, p2}, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    return-void
.end method
