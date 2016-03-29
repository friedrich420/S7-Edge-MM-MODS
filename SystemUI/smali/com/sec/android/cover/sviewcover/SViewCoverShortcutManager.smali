.class public Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;
.super Ljava/lang/Object;
.source "SViewCoverShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;,
        Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSViewCoverShortcutCallback:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;

.field private mSViewCoverShortcutCallbackImpl:Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;

.field private final mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

.field private mTraySquicleMode:Z

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v2, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$1;

    invoke-direct {v2, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)V

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mSViewCoverShortcutCallbackImpl:Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;

    .line 103
    new-instance v2, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;

    invoke-direct {v2, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)V

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 30
    new-instance v2, Lcom/android/keyguard/shortcut/ShortcutManager;

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mSViewCoverShortcutCallbackImpl:Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/keyguard/shortcut/ShortcutManager;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/shortcut/ShortcutManager$ShortcutCallback;)V

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

    .line 31
    iput-object p2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mSViewCoverShortcutCallback:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;

    .line 32
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tap_to_icon"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mTraySquicleMode:Z

    .line 34
    invoke-static {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 35
    return-void

    :cond_0
    move v0, v1

    .line 33
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mSViewCoverShortcutCallback:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$SViewCoverShortcutCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/android/keyguard/shortcut/ShortcutManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mTraySquicleMode:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mTraySquicleMode:Z

    return p1
.end method


# virtual methods
.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutContentDescription(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "th"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/shortcut/ShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasShortcutForLeft()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->hasShortcutForLeft()Z

    move-result v0

    return v0
.end method

.method public hasShortcutForRight()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->hasShortcutForRight()Z

    move-result v0

    return v0
.end method

.method public isLeftShortcutForCamera()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    return v0
.end method

.method public isLeftShortcutForPhone()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isLeftShortcutForPhone()Z

    move-result v0

    return v0
.end method

.method public isRightShortcutForCamera()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v0

    return v0
.end method

.method public isRightShortcutForPhone()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isRightShortcutForPhone()Z

    move-result v0

    return v0
.end method
