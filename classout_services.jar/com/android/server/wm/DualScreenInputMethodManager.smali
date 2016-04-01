.class public Lcom/android/server/wm/DualScreenInputMethodManager;
.super Ljava/lang/Object;
.source "DualScreenInputMethodManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DSIMM"


# instance fields
.field mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 22
    return-void
.end method


# virtual methods
.method public choosTargetDisplayForInputMethodWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/DisplayContent;
    .registers 6
    .param p1, "inputMethodTarget"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x2

    .line 64
    if-nez p1, :cond_a

    .line 65
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 87
    :goto_9
    return-object v1

    .line 68
    :cond_a
    const/4 v0, 0x0

    .line 70
    .local v0, "isSamsungIME":Z
    :try_start_b
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_50

    move-result v0

    .line 74
    :goto_13
    if-nez v0, :cond_18

    .line 75
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    goto :goto_9

    .line 78
    :cond_18
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-ne v1, v3, :cond_23

    .line 79
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    goto :goto_9

    .line 82
    :cond_23
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isFullInputMethod()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRotations:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, rotationToOrientation(I)I

    move-result v1

    if-ne v1, v3, :cond_4d

    .line 84
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_9

    .line 87
    :cond_4d
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    goto :goto_9

    .line 71
    :catch_50
    move-exception v1

    goto :goto_13
.end method

.method public printDebugInfo()V
    .registers 2

    .prologue
    .line 25
    const-string v0, ""

    invoke-virtual {p0, v0}, printDebugInfo(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public printDebugInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "tags"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, printDebugInfoLineByLine(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public printDebugInfoLineByLine(Ljava/lang/String;)V
    .registers 10
    .param p1, "tags"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x1

    .line 34
    .local v0, "addTagsToBack":Z
    if-eqz v0, :cond_f7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\t >> [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "endTags":Ljava/lang/String;
    :goto_1c
    if-eqz v0, :cond_fb

    const-string v4, ""

    .line 36
    .local v4, "startTags":Ljava/lang/String;
    :goto_20
    const-string/jumbo v5, "debug.dualscreen.ime.callstack"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "showCallstack":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    .line 38
    const-string v5, "DSIMM"

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v1, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :goto_3b
    const-string v1, ""

    .line 44
    const-string/jumbo v5, "debug.dualscreen.ime.detail"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "showDetail":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 46
    const-string v5, "DSIMM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " focused app = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v5, "DSIMM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current focus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v5, "DSIMM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " input method target = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v6, "DSIMM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " input method window = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " isVisibleOrAdding="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_105

    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v5

    :goto_e7
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_f6
    return-void

    .line 34
    .end local v1    # "endTags":Ljava/lang/String;
    .end local v2    # "showCallstack":Ljava/lang/String;
    .end local v3    # "showDetail":Ljava/lang/String;
    .end local v4    # "startTags":Ljava/lang/String;
    :cond_f7
    const-string v1, ""

    goto/16 :goto_1c

    .restart local v1    # "endTags":Ljava/lang/String;
    :cond_fb
    move-object v4, p1

    .line 35
    goto/16 :goto_20

    .line 40
    .restart local v2    # "showCallstack":Ljava/lang/String;
    .restart local v4    # "startTags":Ljava/lang/String;
    :cond_fe
    const-string v5, "DSIMM"

    invoke-static {v5, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 49
    .restart local v3    # "showDetail":Ljava/lang/String;
    :cond_105
    const/4 v5, 0x0

    goto :goto_e7
.end method

.method rotationToOrientation(I)I
    .registers 4
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 55
    if-eq p1, v0, :cond_6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 56
    :cond_6
    const/4 v0, 0x2

    .line 58
    :cond_7
    return v0
.end method
