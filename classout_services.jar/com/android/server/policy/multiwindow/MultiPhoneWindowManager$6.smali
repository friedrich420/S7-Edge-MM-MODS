.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$6;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->notifySystemUiVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;I)V
    .registers 3

    .prologue
    .line 1011
    iput-object p1, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iput p2, p0, val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1014
    iget-object v0, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget v1, p0, val$visibility:I

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->notifySystemUiVisibility(I)V

    .line 1015
    return-void
.end method
