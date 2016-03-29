.class Lcom/android/systemui/power/PowerUI$6;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/16 v6, 0x2e

    const/4 v5, 0x0

    .line 1132
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 1133
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1134
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object v2

    .line 1135
    .local v2, "wirelessChargingDetection":Landroid/hardware/scontext/SContextWirelessChargingDetection;
    invoke-virtual {v2}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    move-result v0

    .line 1136
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1155
    .end local v0    # "action":I
    .end local v2    # "wirelessChargingDetection":Landroid/hardware/scontext/SContextWirelessChargingDetection;
    :cond_0
    :goto_0
    return-void

    .line 1138
    .restart local v0    # "action":I
    .restart local v2    # "wirelessChargingDetection":Landroid/hardware/scontext/SContextWirelessChargingDetection;
    :pswitch_0
    const-string v3, "PowerUI"

    const-string v4, "SContextListener - No Move"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    # setter for: Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z
    invoke-static {v3, v5}, Lcom/android/systemui/power/PowerUI;->access$3002(Lcom/android/systemui/power/PowerUI;Z)Z

    goto :goto_0

    .line 1142
    :pswitch_1
    const-string v3, "PowerUI"

    const-string v4, "SContextListener - Move"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$3002(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 1145
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$3100(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$3200(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$3200(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1146
    const-string v3, "PowerUI"

    const-string v4, "Unregister SContextListener - From Listener"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$3400(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$3300(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextListener;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 1148
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    # setter for: Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z
    invoke-static {v3, v5}, Lcom/android/systemui/power/PowerUI;->access$3102(Lcom/android/systemui/power/PowerUI;Z)Z

    goto :goto_0

    .line 1136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
