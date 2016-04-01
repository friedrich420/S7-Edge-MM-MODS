.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelRunnable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartWifiTelRunnable"
.end annotation


# instance fields
.field private final mSignalStrength:Landroid/telephony/SignalStrength;

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/telephony/SignalStrength;)V
    .registers 3
    .param p2, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1224
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1225
    iput-object p2, p0, mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1226
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1230
    iget-object v0, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    move-result-object v0

    iget-object v1, p0, mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->addReading(Landroid/telephony/SignalStrength;)V

    .line 1231
    return-void
.end method
