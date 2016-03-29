.class Lcom/android/settings/deviceinfo/SimStatus$4;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 688
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 689
    .local v0, "slotId":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    # getter for: Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->access$500(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    # setter for: Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v2, v1}, Lcom/android/settings/deviceinfo/SimStatus;->access$002(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 692
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    # invokes: Lcom/android/settings/deviceinfo/SimStatus;->updatePhoneInfos()V
    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->access$600(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 693
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    # getter for: Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->access$800(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    # getter for: Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/SimStatus;->access$700(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 697
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    # invokes: Lcom/android/settings/deviceinfo/SimStatus;->updateDataState()V
    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->access$200(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 698
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    # invokes: Lcom/android/settings/deviceinfo/SimStatus;->updateNetworkType()V
    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->access$300(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 699
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    # invokes: Lcom/android/settings/deviceinfo/SimStatus;->updatePreference()V
    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->access$900(Lcom/android/settings/deviceinfo/SimStatus;)V

    .line 700
    return-void
.end method
