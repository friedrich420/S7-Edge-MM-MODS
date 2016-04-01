.class public final Landroid/view/inputmethod/InputMethodManagerWrapper;
.super Ljava/lang/Object;
.source "InputMethodManagerWrapper.java"


# static fields
.field private static sInstance:Landroid/view/inputmethod/InputMethodManagerWrapper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/view/inputmethod/InputMethodManagerWrapper;
    .registers 2

    .prologue
    .line 34
    const-class v1, Landroid/view/inputmethod/InputMethodManagerWrapper;

    monitor-enter v1

    .line 35
    :try_start_3
    sget-object v0, sInstance:Landroid/view/inputmethod/InputMethodManagerWrapper;

    if-nez v0, :cond_e

    .line 36
    new-instance v0, Landroid/view/inputmethod/InputMethodManagerWrapper;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Landroid/view/inputmethod/InputMethodManagerWrapper;

    .line 38
    :cond_e
    sget-object v0, sInstance:Landroid/view/inputmethod/InputMethodManagerWrapper;

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public getServedInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 3

    .prologue
    .line 58
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 59
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getServedInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    goto :goto_7
.end method

.method public getServedView()Landroid/view/View;
    .registers 3

    .prologue
    .line 48
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 49
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getServedView()Landroid/view/View;

    move-result-object v1

    goto :goto_7
.end method
