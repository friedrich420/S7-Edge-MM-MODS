.class Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$1;
.super Ljava/lang/Object;
.source "ShareAccessibilitySettingsReceive.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showNotSupportFileDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$1;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$1;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->finish()V

    .line 140
    return-void
.end method
