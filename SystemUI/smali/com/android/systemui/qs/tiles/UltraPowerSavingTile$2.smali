.class Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;
.super Landroid/telephony/PhoneStateListener;
.source "UltraPowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 4
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    # getter for: Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    .line 221
    .local v0, "isVideoCall":Z
    const-string v1, "UltraPowerSavingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreciseCallStateChanged callState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v0, :cond_0

    .line 224
    const-string v1, "UltraPowerSavingTile"

    const-string v2, "onPreciseCallStateChanged :: IS VT call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$200(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Ljava/lang/Object;)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mIsVoLTECall:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$302(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Z)Z

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v1, "UltraPowerSavingTile"

    const-string v2, "onPreciseCallStateChanged :: IS NOT VT call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mIsVoLTECall:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$302(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Z)Z

    .line 230
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    # invokes: Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->refreshState()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$400(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)V

    goto :goto_0
.end method
