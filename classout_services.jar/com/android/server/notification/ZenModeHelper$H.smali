.class final Lcom/android/server/notification/ZenModeHelper$H;
.super Landroid/os/Handler;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    }
.end annotation


# static fields
.field private static final METRICS_PERIOD_MS:J = 0x1499700L

.field private static final MSG_DISPATCH:I = 0x1

.field private static final MSG_METRICS:I = 0x2

.field private static final MSG_SET_CONFIG:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 972
    iput-object p1, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 973
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 974
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/notification/ZenModeHelper$1;

    .prologue
    .line 955
    invoke-direct {p0, p1, p2}, <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeHelper$H;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper$H;

    .prologue
    .line 955
    invoke-direct {p0}, postMetricsTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper$H;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 955
    invoke-direct {p0, p1, p2}, postSetConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/ZenModeHelper$H;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper$H;

    .prologue
    .line 955
    invoke-direct {p0}, postDispatchOnZenModeChanged()V

    return-void
.end method

.method private postDispatchOnZenModeChanged()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 977
    invoke-virtual {p0, v0}, removeMessages(I)V

    .line 978
    invoke-virtual {p0, v0}, sendEmptyMessage(I)Z

    .line 979
    return-void
.end method

.method private postMetricsTimer()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 982
    invoke-virtual {p0, v2}, removeMessages(I)V

    .line 983
    const-wide/32 v0, 0x1499700

    invoke-virtual {p0, v2, v0, v1}, sendEmptyMessageDelayed(IJ)Z

    .line 984
    return-void
.end method

.method private postSetConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .registers 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 987
    const/4 v0, 0x3

    new-instance v1, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;-><init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)Z

    .line 988
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 992
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_24

    .line 1004
    :goto_5
    return-void

    .line 994
    :pswitch_6
    iget-object v1, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # invokes: Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$1400(Lcom/android/server/notification/ZenModeHelper;)V

    goto :goto_5

    .line 997
    :pswitch_c
    iget-object v1, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$1500(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;

    move-result-object v1

    # invokes: Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper$Metrics;->access$1600(Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    goto :goto_5

    .line 1000
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    .line 1001
    .local v0, "configData":Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    iget-object v1, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v2, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->config:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    goto :goto_5

    .line 992
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_16
    .end packed-switch
.end method
