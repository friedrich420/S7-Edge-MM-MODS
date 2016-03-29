.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3$1;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaShortcutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->onSystemSettingsChanged(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcuts()V

    .line 393
    return-void
.end method
