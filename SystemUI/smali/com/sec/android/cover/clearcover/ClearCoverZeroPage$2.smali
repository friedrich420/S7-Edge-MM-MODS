.class Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$2;
.super Ljava/lang/Object;
.source "ClearCoverZeroPage.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 102
    const/4 v0, 0x0

    return v0
.end method
