.class Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;
.super Landroid/os/AsyncTask;
.source "BluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MakeDeviceAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsProcessingAsync:Z
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$102(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Z)Z

    .line 699
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # invokes: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getIconDrawable()Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$200(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 701
    .local v4, "iconResId":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()I

    move-result v3

    .line 703
    .local v3, "summary":I
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v5

    .line 705
    .local v5, "isBusy":Z
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->deviceObject:Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$400(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 706
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)V

    # setter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->deviceObject:Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
    invoke-static {v6, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$402(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    .line 713
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->deviceObject:Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$400(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    move-result-object v0

    return-object v0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->deviceObject:Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$400(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    move-result-object v0

    iput-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->title:Ljava/lang/String;

    .line 709
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->deviceObject:Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$400(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    move-result-object v0

    iput v3, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->summary:I

    .line 710
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->deviceObject:Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$400(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    move-result-object v0

    iput-object v4, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->icon:Landroid/graphics/drawable/Drawable;

    .line 711
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->deviceObject:Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$400(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    move-result-object v0

    iput-boolean v5, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->isBusy:Z

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 693
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;)V
    .locals 8
    .param p1, "result"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    .prologue
    const/4 v5, 0x0

    .line 718
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u200e"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u200e"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/bluetooth/Utils;->getPrefixType([B)Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, "prefixName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 722
    const-string v4, "BluetoothDevicePreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDeviceAttributesChanged :: prefixName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 728
    iget v4, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->summary:I

    if-eqz v4, :cond_3

    .line 729
    const-string v4, "BluetoothDevicePreference"

    const-string v6, "onDeviceAttributesChanged :: Connection summary set "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget v6, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->summary:I

    invoke-virtual {v4, v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 736
    :goto_1
    iget-object v2, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->icon:Landroid/graphics/drawable/Drawable;

    .line 737
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 738
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 742
    :cond_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-boolean v4, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->isBusy:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v6, v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 754
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # invokes: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V
    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$500(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :goto_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # setter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsProcessingAsync:Z
    invoke-static {v4, v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$102(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Z)Z

    .line 759
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsRequestUpdate:Z
    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$600(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 760
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {v4, v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 761
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    # setter for: Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsRequestUpdate:Z
    invoke-static {v4, v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$602(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Z)Z

    .line 763
    :cond_1
    return-void

    .line 724
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v4, "BluetoothDevicePreference"

    const-string v6, "onDeviceAttributesChanged :: prefixName is empty "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 732
    :cond_3
    const-string v4, "BluetoothDevicePreference"

    const-string v6, "onDeviceAttributesChanged :: Connection summary is empty"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    move v4, v5

    .line 742
    goto :goto_2

    .line 755
    :catch_0
    move-exception v1

    .line 756
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "BluetoothDevicePreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error has occurred during notifyHierarchyChanged():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 693
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$MakeDeviceAsync;->onPostExecute(Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;)V

    return-void
.end method
