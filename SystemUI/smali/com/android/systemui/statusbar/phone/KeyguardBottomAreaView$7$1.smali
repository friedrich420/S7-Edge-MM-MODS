.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7$1;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 929
    return-void
.end method
