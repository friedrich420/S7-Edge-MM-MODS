.class Lcom/android/systemui/cover/SViewCoverLauncher$1;
.super Ljava/lang/Object;
.source "SViewCoverLauncher.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/SViewCoverLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/SViewCoverLauncher;


# direct methods
.method constructor <init>(Lcom/android/systemui/cover/SViewCoverLauncher;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/systemui/cover/SViewCoverLauncher$1;->this$0:Lcom/android/systemui/cover/SViewCoverLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startShortcutApp(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher$1;->this$0:Lcom/android/systemui/cover/SViewCoverLauncher;

    # getter for: Lcom/android/systemui/cover/SViewCoverLauncher;->mStatusBarCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverLauncher;->access$000(Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher$1;->this$0:Lcom/android/systemui/cover/SViewCoverLauncher;

    # getter for: Lcom/android/systemui/cover/SViewCoverLauncher;->mStatusBarCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverLauncher;->access$000(Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;->startShortcutApp(Landroid/content/Intent;)V

    .line 290
    :cond_0
    return-void
.end method

.method public startShortcutDragAnimation()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher$1;->this$0:Lcom/android/systemui/cover/SViewCoverLauncher;

    # getter for: Lcom/android/systemui/cover/SViewCoverLauncher;->mStatusBarCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverLauncher;->access$000(Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;->startShortcutDragAnimation()V

    .line 293
    return-void
.end method

.method public stopShortcutDragAnimation()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher$1;->this$0:Lcom/android/systemui/cover/SViewCoverLauncher;

    # getter for: Lcom/android/systemui/cover/SViewCoverLauncher;->mStatusBarCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverLauncher;->access$000(Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;->stopShortcutDragAnimation()V

    .line 296
    return-void
.end method
