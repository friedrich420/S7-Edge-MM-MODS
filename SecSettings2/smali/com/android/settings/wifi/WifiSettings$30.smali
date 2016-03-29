.class Lcom/android/settings/wifi/WifiSettings$30;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 3207
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3211
    .local p1, "arg0":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mTwListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3300(Lcom/android/settings/wifi/WifiSettings;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 3212
    .local v6, "viewPosition":I
    const-string v7, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onItemClick() - position : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", viewPosition : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mApListAdapter:Lcom/android/settings/wifi/AccessPointListAdapter;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$900(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPointListAdapter;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/settings/wifi/AccessPointListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 3214
    .local v5, "selectedAp":Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 3215
    const-string v7, "WifiSettings"

    const-string v8, "Can\'t find selected AccessPoint from the list"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    .end local v5    # "selectedAp":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 3218
    .restart local v5    # "selectedAp":Ljava/lang/Object;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    check-cast v5, Lcom/android/settings/wifi/AccessPoint;

    .end local v5    # "selectedAp":Ljava/lang/Object;
    # setter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7, v5}, Lcom/android/settings/wifi/WifiSettings;->access$3402(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;)Lcom/android/settings/wifi/AccessPoint;

    .line 3219
    const-string v7, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onItemClick() - mSelectedAccessPoint : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mSelectedAccessPoint.security : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v9

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3500(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3221
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 3222
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v7, v7, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 3223
    .local v4, "mCurrentAP":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v7, v8, :cond_3

    .line 3224
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiSettings;->access$3602(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;)Lcom/android/settings/wifi/AccessPoint;

    .line 3225
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v8, 0x1

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z
    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiSettings;->access$3702(Lcom/android/settings/wifi/WifiSettings;Z)Z

    .line 3242
    .end local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3900(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3500(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3243
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3244
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v9

    # invokes: Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/settings/wifi/WifiSettings;->access$3800(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 3245
    const-string v7, "ssid"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3246
    const-string v7, "bssid"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3247
    const-string v7, "security"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3248
    const-string v7, "frequency"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3249
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3250
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3227
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3228
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v9}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v9

    # invokes: Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/settings/wifi/WifiSettings;->access$3800(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 3229
    const-string v7, "ssid"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3230
    const-string v7, "bssid"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3231
    const-string v7, "security"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3232
    const-string v7, "frequency"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3233
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3234
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3238
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiSettings;->access$3602(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;)Lcom/android/settings/wifi/AccessPoint;

    .line 3239
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v8, 0x1

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z
    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiSettings;->access$3702(Lcom/android/settings/wifi/WifiSettings;Z)Z

    goto/16 :goto_1

    .line 3254
    :cond_5
    const-string v7, "T wifi zone_secure"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3256
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$4000(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3285
    :cond_6
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v7

    if-nez v7, :cond_c

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/settings/wifi/AccessPoint;->mIsCaptivePortal:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/settings/wifi/AccessPoint;->mIsAuthenticated:Z

    if-nez v7, :cond_c

    .line 3290
    const-string v7, "WifiSettings"

    const-string v8, "START captive portal login activity"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3293
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3259
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v7, "ollehWiFi"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3261
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$4000(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_0

    .line 3264
    :cond_8
    const-string v7, "olleh GiGA WiFi"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3266
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$4000(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_0

    .line 3269
    :cond_9
    const-string v7, "U+zone"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3271
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$4000(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_0

    .line 3274
    :cond_a
    const-string v7, "U+zone_5G"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3276
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$4000(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_0

    .line 3279
    :cond_b
    const-string v7, "5G_U+zone"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3281
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$4000(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_0

    .line 3297
    :cond_c
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v3

    .line 3298
    .local v3, "isSupportedSecurity":Z
    if-nez v3, :cond_d

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 3299
    :cond_d
    const-string v7, "VZW"

    sget-object v8, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 3300
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$000(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 3301
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_e

    .line 3302
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    const/4 v9, 0x0

    # invokes: Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v7, v8, v9}, Lcom/android/settings/wifi/WifiSettings;->access$4100(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 3305
    :cond_e
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_f

    .line 3306
    const/4 v0, 0x1

    .line 3310
    .local v0, "ManageConnectable":Z
    :goto_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    const/4 v9, 0x0

    # invokes: Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v7, v8, v9}, Lcom/android/settings/wifi/WifiSettings;->access$4100(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 3308
    .end local v0    # "ManageConnectable":Z
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "ManageConnectable":Z
    goto :goto_2

    .line 3313
    .end local v0    # "ManageConnectable":Z
    :cond_10
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    const/4 v9, 0x0

    # invokes: Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v7, v8, v9}, Lcom/android/settings/wifi/WifiSettings;->access$4100(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 3316
    :cond_11
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v7, :cond_13

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_13

    .line 3318
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 3319
    # getter for: Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->access$4200()Z

    move-result v7

    if-nez v7, :cond_12

    .line 3320
    const/4 v7, 0x1

    # setter for: Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$4202(Z)Z

    .line 3321
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3324
    :cond_12
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    const/4 v9, 0x0

    # invokes: Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v7, v8, v9}, Lcom/android/settings/wifi/WifiSettings;->access$4100(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3325
    :catch_0
    move-exception v1

    .line 3326
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v7, "WifiSettings"

    const-string v8, "Ignore Illegal state exception here."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3328
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :cond_13
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v7

    if-nez v7, :cond_14

    .line 3329
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0e0539

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3333
    :cond_14
    :try_start_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$30;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v8

    const/4 v9, 0x0

    # invokes: Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v7, v8, v9}, Lcom/android/settings/wifi/WifiSettings;->access$4100(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3334
    :catch_1
    move-exception v1

    .line 3335
    .restart local v1    # "ex":Ljava/lang/IllegalStateException;
    const-string v7, "WifiSettings"

    const-string v8, "Ignore Illegal state exception here."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
