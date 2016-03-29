.class Lcom/android/settings/WirelessSettings$3;
.super Landroid/database/ContentObserver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$3;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/settings/WirelessSettings$3;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v2}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/settings/WirelessSettings$3;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v2}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 185
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/WirelessSettings$3;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mNearbyScanning:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/WirelessSettings;->access$100(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 186
    invoke-static {v1}, Lcom/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    .line 188
    .local v0, "nsValue":I
    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNearbyScanningObserver DB value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v2, p0, Lcom/android/settings/WirelessSettings$3;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mNearbyScanning:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/WirelessSettings;->access$100(Lcom/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v2, 0x7f0e0e92

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 193
    .end local v0    # "nsValue":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 189
    .restart local v0    # "nsValue":I
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const v2, 0x7f0e0e93

    goto :goto_0
.end method
