.class Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$1;
.super Ljava/lang/Object;
.source "SViewCoverWallpaperSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->setNewWallaperImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "saved"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 296
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->finish()V

    .line 297
    return-void
.end method
