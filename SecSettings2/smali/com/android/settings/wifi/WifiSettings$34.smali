.class Lcom/android/settings/wifi/WifiSettings$34;
.super Landroid/database/ContentObserver;
.source "WifiSettings.java"


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
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 5851
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$34;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 5853
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$34;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 5854
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 5855
    const-string v1, "WifiSettings"

    const-string v2, "mMobileDataObserver value changed, invalidateOptionMenu()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5856
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 5858
    :cond_0
    return-void
.end method
