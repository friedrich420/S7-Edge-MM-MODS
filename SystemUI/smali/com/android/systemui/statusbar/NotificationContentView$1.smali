.class Lcom/android/systemui/statusbar/NotificationContentView$1;
.super Ljava/lang/Object;
.source "NotificationContentView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationContentView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView$1;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$1;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    # setter for: Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$002(Lcom/android/systemui/statusbar/NotificationContentView;Z)Z

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$1;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 89
    return v1
.end method
