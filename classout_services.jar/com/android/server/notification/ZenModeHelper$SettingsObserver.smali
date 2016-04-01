.class final Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 904
    iput-object p1, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 905
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 902
    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, ZEN_MODE:Landroid/net/Uri;

    .line 906
    return-void
.end method


# virtual methods
.method public observe()V
    .registers 4

    .prologue
    .line 909
    iget-object v1, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 910
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, ZEN_MODE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 911
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, update(Landroid/net/Uri;)V

    .line 912
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 916
    invoke-virtual {p0, p2}, update(Landroid/net/Uri;)V

    .line 917
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 920
    iget-object v0, p0, ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 921
    iget-object v0, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    iget-object v1, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # invokes: Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$1100(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v1

    if-eq v0, v1, :cond_2c

    .line 922
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string v0, "ZenModeHelper"

    const-string v1, "Fixing zen mode setting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_21
    iget-object v0, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v1

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V
    invoke-static {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->access$1200(Lcom/android/server/notification/ZenModeHelper;I)V

    .line 926
    :cond_2c
    return-void
.end method
