.class Lcom/android/settings/GigaLteSettings$1;
.super Landroid/database/ContentObserver;
.source "GigaLteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GigaLteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GigaLteSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/GigaLteSettings$1;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$1;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$000(Lcom/android/settings/GigaLteSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$1;->this$0:Lcom/android/settings/GigaLteSettings;

    # invokes: Lcom/android/settings/GigaLteSettings;->isSimValid()Z
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$100(Lcom/android/settings/GigaLteSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$1;->this$0:Lcom/android/settings/GigaLteSettings;

    # invokes: Lcom/android/settings/GigaLteSettings;->isTether()Z
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$200(Lcom/android/settings/GigaLteSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$1;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$1;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$000(Lcom/android/settings/GigaLteSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
