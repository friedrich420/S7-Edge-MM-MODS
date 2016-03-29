.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 119
    return-void
.end method
