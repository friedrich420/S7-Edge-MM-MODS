.class Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCoverBackground()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 47
    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceive : Wallpaper changed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$102(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 50
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$200(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "s_view_cover_skin_color"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 52
    .local v0, "currentCoverColor":I
    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$300(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$200(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "s_view_cover_skin_color"

    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$300(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    .line 56
    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$300(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    .line 60
    return-void
.end method

.method public onOpenThemeChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$200(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "sview_color_wallpaper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default Theme is applied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;
    invoke-static {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$400(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->setDefaultWallpaper(Ljava/io/File;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 6
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 73
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$200(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 74
    .local v2, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v2, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 75
    :cond_0
    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "It\'s Knox UserSwitching"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    if-nez p1, :cond_3

    .line 77
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$200(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/cover/CoverUtils;->isOpenThemeApplied(Landroid/content/Context;)Z

    move-result v0

    .line 78
    .local v0, "isOpenThemeApplied":Z
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # invokes: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getOwnerWallpaperFilePath()Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$500(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "ownerWallpaperDir":Ljava/lang/String;
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 80
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # invokes: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->setOwnerWallpaperFilePath(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$600(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->setWallaper(II)V

    goto :goto_0

    .line 84
    .end local v0    # "isOpenThemeApplied":Z
    .end local v1    # "ownerWallpaperDir":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # invokes: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->backupOwnerWallpaperFilePath()V
    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$700(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    .line 85
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # invokes: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->checkAndCreateGuestWallpaperFileDir()V
    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$800(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    .line 86
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    iget-object v4, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    # getter for: Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mGuestWallpaperImageFilesDir:Ljava/io/File;
    invoke-static {v4}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->access$900(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->setDefaultWallpaper(Ljava/io/File;)V

    goto :goto_0
.end method
