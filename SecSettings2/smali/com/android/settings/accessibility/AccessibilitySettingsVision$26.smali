.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$26;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$26;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1421
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1422
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1423
    const/4 v0, 0x1

    .line 1425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
