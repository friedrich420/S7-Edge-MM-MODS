.class Lcom/android/server/wm/WindowToken;
.super Ljava/lang/Object;
.source "WindowToken.java"


# instance fields
.field appWindowToken:Lcom/android/server/wm/AppWindowToken;

.field disableHideSViewCoverOnce:Z

.field final explicit:Z

.field hasVisible:Z

.field hidden:Z

.field paused:Z

.field sendingToBottom:Z

.field final service:Lcom/android/server/wm/WindowManagerService;

.field stringName:Ljava/lang/String;

.field final token:Landroid/os/IBinder;

.field waitingToShow:Z

.field willBeHideBlockMain:Z

.field willBeHideSViewCoverOnce:Z

.field final windowType:I

.field final windows:Lcom/android/server/wm/WindowList;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V
    .registers 7
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/os/IBinder;
    .param p3, "type"    # I
    .param p4, "_explicit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/wm/WindowList;

    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v0, p0, windows:Lcom/android/server/wm/WindowList;

    .line 55
    iput-boolean v1, p0, paused:Z

    .line 72
    iput-boolean v1, p0, willBeHideSViewCoverOnce:Z

    .line 73
    iput-boolean v1, p0, disableHideSViewCoverOnce:Z

    .line 77
    iput-boolean v1, p0, willBeHideBlockMain:Z

    .line 81
    iput-object p1, p0, service:Lcom/android/server/wm/WindowManagerService;

    .line 82
    iput-object p2, p0, token:Landroid/os/IBinder;

    .line 83
    iput p3, p0, windowType:I

    .line 84
    iput-boolean p4, p0, explicit:Z

    .line 85
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, windowType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 100
    const-string v0, " hidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, hidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 101
    const-string v0, " hasVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, hasVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 104
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "willBeHideSViewCoverOnce="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, willBeHideSViewCoverOnce:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 105
    const-string v0, " disableHideSViewCoverOnce="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, disableHideSViewCoverOnce:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 109
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "willBeHideBlockMain="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, willBeHideBlockMain:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 111
    iget-boolean v0, p0, waitingToShow:Z

    if-nez v0, :cond_5e

    iget-boolean v0, p0, sendingToBottom:Z

    if-eqz v0, :cond_76

    .line 112
    :cond_5e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "waitingToShow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, waitingToShow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 113
    const-string v0, " sendingToBottom="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, sendingToBottom:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 115
    :cond_76
    return-void
.end method

.method removeAllWindows()V
    .registers 6

    .prologue
    .line 88
    iget-object v2, p0, windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "winNdx":I
    :goto_8
    if-ltz v1, :cond_37

    .line 89
    iget-object v2, p0, windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 90
    .local v0, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_MOVEMENT:Z

    if-eqz v2, :cond_2f

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAllWindows: removing win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2f
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 88
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 94
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_37
    iget-object v2, p0, windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 119
    iget-object v1, p0, stringName:Ljava/lang/String;

    if-nez v1, :cond_2e

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, stringName:Ljava/lang/String;

    .line 126
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2e
    iget-object v1, p0, stringName:Ljava/lang/String;

    return-object v1
.end method
