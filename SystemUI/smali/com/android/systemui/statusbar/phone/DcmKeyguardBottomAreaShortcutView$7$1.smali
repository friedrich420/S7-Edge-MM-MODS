.class Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7$1;
.super Ljava/lang/Object;
.source "DcmKeyguardBottomAreaShortcutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    .line 602
    return-void
.end method
