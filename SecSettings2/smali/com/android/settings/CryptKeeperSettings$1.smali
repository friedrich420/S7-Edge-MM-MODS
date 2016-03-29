.class Lcom/android/settings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "action":Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 113
    const-string v10, "level"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 114
    .local v3, "level":I
    const-string v10, "plugged"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 115
    .local v6, "plugged":I
    const-string v10, "invalid_charger"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 118
    .local v2, "invalidCharger":I
    const-string v10, "status"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 121
    .local v1, "batteryStatus":I
    const/16 v10, 0x50

    if-lt v3, v10, :cond_3

    const/4 v4, 0x1

    .line 122
    .local v4, "levelOk":Z
    :goto_0
    and-int/lit8 v10, v6, 0x7

    if-eqz v10, :cond_4

    if-nez v2, :cond_4

    const/4 v10, 0x2

    if-eq v1, v10, :cond_0

    const/4 v10, 0x5

    if-ne v1, v10, :cond_4

    :cond_0
    const/4 v7, 0x1

    .line 127
    .local v7, "pluggedOk":Z
    :goto_1
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v9

    .line 129
    .local v9, "status":I
    const/4 v10, 0x1

    if-gt v10, v9, :cond_1

    const/4 v10, 0x3

    if-ge v10, v9, :cond_5

    :cond_1
    const/4 v8, 0x1

    .line 133
    .local v8, "sdCardOK":Z
    :goto_2
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v4, :cond_6

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v11

    if-eqz v8, :cond_7

    const/16 v10, 0x8

    :goto_4
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$300(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$400(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v7, :cond_8

    const/16 v10, 0x8

    :goto_5
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v4, :cond_9

    const/16 v10, 0x8

    :goto_6
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-static {}, Lcom/android/settings/EFSProperties;->loadODEConfig()Lcom/android/settings/EFSProperties$ODEProperties;

    move-result-object v5

    .line 142
    .local v5, "odeProp":Lcom/android/settings/EFSProperties$ODEProperties;
    if-eqz v5, :cond_2

    iget v10, v5, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 143
    const-string v10, "CryptKeeper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isUcsOdeEnabled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "batteryStatus":I
    .end local v2    # "invalidCharger":I
    .end local v3    # "level":I
    .end local v4    # "levelOk":Z
    .end local v5    # "odeProp":Lcom/android/settings/EFSProperties$ODEProperties;
    .end local v6    # "plugged":I
    .end local v7    # "pluggedOk":Z
    .end local v8    # "sdCardOK":Z
    .end local v9    # "status":I
    :cond_2
    return-void

    .line 121
    .restart local v1    # "batteryStatus":I
    .restart local v2    # "invalidCharger":I
    .restart local v3    # "level":I
    .restart local v6    # "plugged":I
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 122
    .restart local v4    # "levelOk":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 129
    .restart local v7    # "pluggedOk":Z
    .restart local v9    # "status":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 133
    .restart local v8    # "sdCardOK":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 134
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 136
    :cond_8
    const/4 v10, 0x0

    goto :goto_5

    .line 137
    :cond_9
    const/4 v10, 0x0

    goto :goto_6
.end method
