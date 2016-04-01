.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver$2;
.super Landroid/database/ContentObserver;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 358
    iput-object p1, p0, this$1:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 361
    iget-object v0, p0, this$1:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z
    invoke-static {v0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$100(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 362
    iget-object v0, p0, this$1:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    .line 364
    :cond_12
    return-void
.end method
