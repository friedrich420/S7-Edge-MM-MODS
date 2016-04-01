.class Lcom/android/server/power/ShutdownDialog$SoundThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    .prologue
    .line 632
    iput-object p1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p2, "x1"    # Lcom/android/server/power/ShutdownDialog$1;

    .prologue
    .line 632
    invoke-direct {p0, p1}, <init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 652
    const-string v1, "ShutdownDialog"

    const-string v2, "!@onCompletion(MediaPlayer arg0) called !!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string/jumbo v1, "poweroff_sound=suspend"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 655
    const-wide/16 v2, 0x3e8

    :try_start_f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_1d

    .line 659
    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, running:Z

    .line 660
    const-string v1, "ShutdownDialog"

    const-string v2, "Shutdown sound have done"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 656
    :catch_1d
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ShutdownDialog"

    const-string/jumbo v2, "sound thread exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public run()V
    .registers 5

    .prologue
    .line 635
    iget-object v1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$2800(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_13

    .line 636
    const-string v1, "ShutdownDialog"

    const-string v2, "MediaPlayer is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v1, 0x0

    iput-boolean v1, p0, running:Z

    .line 650
    :goto_12
    return-void

    .line 640
    :cond_13
    iget-object v1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$2800(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 642
    :try_start_1c
    const-string v1, "ShutdownDialog"

    const-string v2, "Playing sound file"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$2800(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 644
    iget-object v1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$2800(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_3a} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3a} :catch_45

    goto :goto_12

    .line 645
    :catch_3b
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "ShutdownDialog"

    const-string/jumbo v2, "sound thread IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 647
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_45
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ShutdownDialog"

    const-string/jumbo v2, "sound thread exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method
