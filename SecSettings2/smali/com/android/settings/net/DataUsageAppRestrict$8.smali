.class Lcom/android/settings/net/DataUsageAppRestrict$8;
.super Landroid/os/Handler;
.source "DataUsageAppRestrict.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/DataUsageAppRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/net/DataUsageAppRestrict;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$8;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 640
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 642
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$8;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mShowWifi:Z
    invoke-static {v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$1200(Lcom/android/settings/net/DataUsageAppRestrict;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$8;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/net/DataUsageAppRestrict;->UpdateNetworkHistoricalData(I)V

    goto :goto_0

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
