.class public Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkMonitorPhoneStateListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    .prologue
    .line 740
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 742
    packed-switch p1, :pswitch_data_36

    .line 749
    const-string v0, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart detection is disabled ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 753
    :goto_27
    return-void

    .line 744
    :pswitch_28
    const-string v0, "NetworkMonitor"

    const-string v1, "Smart detection is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto :goto_27

    .line 742
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
    .end packed-switch
.end method
