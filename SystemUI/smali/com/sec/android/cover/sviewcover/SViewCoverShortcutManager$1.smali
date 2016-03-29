.class Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$1;
.super Ljava/lang/Object;
.source "SViewCoverShortcutManager.java"

# interfaces
.implements Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateShortcutIconOnly(I)V
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mSViewCoverShortcutCallback:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mSViewCoverShortcutCallback:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;->updateShortcutIconOnly(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public updateShortcutView(I)V
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mSViewCoverShortcutCallback:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mSViewCoverShortcutCallback:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;->updateShortcutView(I)V

    .line 94
    :cond_0
    return-void
.end method
