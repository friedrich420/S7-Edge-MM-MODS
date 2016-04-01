.class public final Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# instance fields
.field private mDefaultToken:Landroid/os/IBinder;

.field private mDisplay:Landroid/view/Display;

.field private final mGlobal:Landroid/view/WindowManagerGlobal;

.field private final mParentWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .registers 3
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/view/Display;Landroid/view/Window;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/view/Display;Landroid/view/Window;)V
    .registers 4
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, mGlobal:Landroid/view/WindowManagerGlobal;

    .line 66
    iput-object p1, p0, mDisplay:Landroid/view/Display;

    .line 67
    iput-object p2, p0, mParentWindow:Landroid/view/Window;

    .line 68
    return-void
.end method

.method private applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 102
    iget-object v1, p0, mDefaultToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1f

    iget-object v1, p0, mParentWindow:Landroid/view/Window;

    if-nez v1, :cond_1f

    .line 103
    instance-of v1, p1, Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_14

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Params must be WindowManager.LayoutParams"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    move-object v0, p1

    .line 108
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 109
    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_1f

    .line 110
    iget-object v1, p0, mDefaultToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 113
    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_1f
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 90
    invoke-direct {p0, p2}, applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v1, p0, mDisplay:Landroid/view/Display;

    iget-object v2, p0, mParentWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V

    .line 92
    return-void
.end method

.method public createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;
    .registers 4
    .param p1, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 71
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, mDisplay:Landroid/view/Display;

    invoke-direct {v0, v1, p1}, <init>(Landroid/view/Display;Landroid/view/Window;)V

    return-object v0
.end method

.method public createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;
    .registers 4
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 75
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, mParentWindow:Landroid/view/Window;

    invoke-direct {v0, p1, v1}, <init>(Landroid/view/Display;Landroid/view/Window;)V

    return-object v0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 118
    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 123
    return-void
.end method

.method public setDefaultToken(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 85
    iput-object p1, p0, mDefaultToken:Landroid/os/IBinder;

    .line 86
    return-void
.end method

.method public setDisplay(Landroid/view/Display;)V
    .registers 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 136
    if-nez p1, :cond_3

    .line 140
    :goto_2
    return-void

    .line 139
    :cond_3
    iput-object p1, p0, mDisplay:Landroid/view/Display;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 146
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_2e

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 96
    invoke-direct {p0, p2}, applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method
