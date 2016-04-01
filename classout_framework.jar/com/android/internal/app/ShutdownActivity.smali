.class public Lcom/android/internal/app/ShutdownActivity;
.super Landroid/app/Activity;
.source "ShutdownActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownActivity"


# instance fields
.field private mConfirm:Z

.field private mReboot:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ShutdownActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ShutdownActivity;

    .prologue
    .line 31
    iget-boolean v0, p0, mReboot:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ShutdownActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ShutdownActivity;

    .prologue
    .line 31
    iget-boolean v0, p0, mConfirm:Z

    return v0
.end method

.method private setFullscreen(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 85
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v0

    .line 86
    .local v0, "win":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 87
    .local v1, "winParams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_14

    .line 88
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 93
    return-void

    .line 90
    :cond_14
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_10
.end method

.method private setRotationAnimation(I)V
    .registers 4
    .param p1, "rotationAnimation"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v0

    .line 97
    .local v0, "win":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 98
    .local v1, "winParams":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.REBOOT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, mReboot:Z

    .line 43
    const-string v4, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, mConfirm:Z

    .line 44
    const-string v4, "ShutdownActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate(): confirm="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, mConfirm:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v4, "android.intent.extra.SYSTEM_REQUEST"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 48
    .local v2, "systemRequest":Z
    const-string v4, "android.intent.extra.REBOOT_REASON"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "rebootReason":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, setFullscreen(Z)V

    .line 52
    const/4 v4, 0x2

    invoke-direct {p0, v4}, setRotationAnimation(I)V

    .line 54
    new-instance v3, Lcom/android/internal/app/ShutdownActivity$1;

    const-string v4, "ShutdownActivity"

    invoke-direct {v3, p0, v4, v1, v2}, Lcom/android/internal/app/ShutdownActivity$1;-><init>(Lcom/android/internal/app/ShutdownActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    .local v3, "thr":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 76
    invoke-virtual {p0}, finish()V

    .line 79
    :try_start_58
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 82
    :goto_5b
    return-void

    .line 80
    :catch_5c
    move-exception v4

    goto :goto_5b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 105
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 106
    const-string v0, "ShutdownActivity"

    const-string v1, "back button pressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method
