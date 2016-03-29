.class Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$2;
.super Ljava/lang/Object;
.source "ClearCoverNoblePage.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$2;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 131
    const/4 v0, 0x0

    return v0
.end method
