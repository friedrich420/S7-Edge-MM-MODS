.class Lcom/android/systemui/statusbar/ActivatableNotificationView$1;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(ZZ)V

    .line 185
    return-void
.end method
